const fs = require('fs');
const ejs = require('ejs');
const path = require('path');
const child = require('child_process');
const process = require('process');
const p = require('../lib/package');

const defaultConfig = {
    template: process.env.README_TEMPLATE,
    title: process.env.README_TITLE,
    baseUrl: process.env.README_BASE_URL,
    gitBranch: process.env.GIT_CURRENT_BRANCH,
    metricsSummary: process.env.METRICS_SUMMARY,
    moduleComposerEnabled: process.env.MODULE_COMPOSER_DETECTED === 'true'
};

module.exports = (userConfig = {}) => {
    const config = { ...defaultConfig, ...userConfig };
    const lib = {};

    // tiny deterministic hash for IDs (djb2-ish)
    const hash = s => {
        const str = String(s);
        const code = [...str].reduce((h, ch) => ((h << 5) - h) + ch.charCodeAt(0), 5381);
        // ensure positive and short-ish
        return Math.abs(code).toString(36);
    };

    lib.metrics = () => {
        try {
            return JSON.parse(fs.readFileSync(config.metricsSummary, 'utf-8'));
        } catch {
            return {};
        }
    };

    lib.json = obj => JSON.stringify(obj, null, 4);
    lib.readText = loc => fs.promises.readFile(loc, 'utf-8');
    lib.fetchText = loc => child.execSync(`curl -sL ${loc}`).toString('utf8');
    lib.renderLink = (href, text) => `<a href="${href}">${text}</a>`;
    lib.renderLinkWithId = (href, text) => {
        const id = hash(`${href}|${text}`);
        return `<a id="link-${id}" href="${href}#user-content-link-${id}">${text}</a>`;
    };

    lib.fetchCode = async (source, root = process.env.PACKAGE_ROOT + '/', webroot) => {
        const fullSource = path.join(root, source);
        const getCode = /^https?:\/\//.test(fullSource) ? lib.fetchText : lib.readText;
        const code = await getCode(fullSource);
        const lang = path.extname(fullSource).replace('.', '');
        return { code, lang, source, root, webroot };
    };

    lib.compose = async (callback, composeFile = process.env.COMPOSE_FILE, options = {}) => {
        const imported = await import(path.resolve(composeFile));
        const compose = imported?.default ?? imported;
        const modules = await compose(options);
        return callback(modules);
    };

    lib.mermaid = async (mermaidOptions = {}) => {
        const render = modules => lib.renderCode(modules.composition.mermaid(mermaidOptions), 'mermaid');
        return lib.compose(render);
    };

    lib.renderModuleDiagram = async (composeFile = process.env.COMPOSE_FILE) => {
        if (!process.env.MODULE_COMPOSER_DETECTED) {
            console.warn('module-composer is not enabled.');
            return '';
        }

        const link = lib.renderLink('https://github.com/mattriley/node-module-composer', 'Module Composer');
        return [
            await lib.compose(modules => lib.renderCode(modules.composition.mermaid(), 'mermaid'), composeFile),
            '<p align="center">',
            `  <em>This diagram was generated with ${link}</em>`,
            '</p>',
            '<br>'
        ].join('\n');
    };

    lib.renderCode = async (codePromise, lang, source) => {
        if (typeof codePromise === 'string') codePromise = { code: codePromise, lang };
        const { code, lang: defaultLang, source: defaultSource, webroot } = await codePromise;
        const resolvedLang = lang ?? defaultLang ?? '';
        const resolvedSource = source ?? defaultSource;

        const lines = [];

        if (resolvedSource) {
            const text = webroot ? `${webroot}/${resolvedSource}` : resolvedSource;
            const codeBaseUrl = `${config.baseUrl}/blob/${config.gitBranch}`;
            const href = /^https?:\/\//.test(resolvedSource)? resolvedSource: `${webroot ?? codeBaseUrl}/${resolvedSource}`;
            const link = lib.renderLink(href, text);
            lines.push(`###### <p align="right">${link}</p>`);
        }

        if (resolvedLang === 'mermaid') {
            const link = lib.renderLinkWithId(config.baseUrl, 'View it on GitHub');
            lines.push(`###### <p align="right"><em>Can't see the diagram?</em> ${link}</p>`);
        }

        lines.push('```' + resolvedLang, code.trim(), '```');
        return lines.join('\n');
    };

    lib.renderImage = (imgPath, caption) => [
        '<br />',
        '<p align="center">',
        `  <img src="${imgPath}?raw=true" />`,
        '  <br />',
        `  <em>${caption}</em>`,
        '</p>',
        '<br />'
    ].join('\n');

    lib.renderMetrics = () => {
        const { cov, sloc, files, deps, devdeps } = lib.metrics();
        const items = [];
        if (cov > 0) items.push(`${cov}% cov`);
        items.push(`${sloc} sloc`);
        items.push(`${files} files`);
        items.push(`${deps} deps`);
        items.push(`${devdeps} dev deps`);
        const markup = items.map(item => `<code>${item}</code>`).join('&nbsp;');
        return `<p align="right">${markup}</p>`;
    };

    lib.renderOpening = () => [
        `# ${config.title}`,
        '',
        lib.renderMetrics(),
        '',
        p.description,
        '',
        '<br />',
        '',
        '<!-- START doctoc -->',
        '<!-- END doctoc -->'
    ].join('\n');

    lib.renderFile = (templateData = {}) => {
        ejs.renderFile(
            config.template,
            { lib: { ...lib, ...templateData } },
            { async: true },
            async (err, tpl) => {
                if (err) throw err;
                process.stdout.write(await tpl);
            }
        );
    };

    return lib;
};
