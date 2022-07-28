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
    gitBranch: process.env.GIT_BRANCH,
    metricsSummary: process.env.METRICS_SUMMARY
};

module.exports = (userConfig = {}) => {

    const config = { ...defaultConfig, ...userConfig };
    const lib = {};
    let linkId = 0;

    lib.metrics = () => JSON.parse(fs.readFileSync(config.metricsSummary, 'utf-8'));
    lib.json = obj => JSON.stringify(obj, null, 4);
    lib.readText = loc => fs.promises.readFile(loc, 'utf-8');
    lib.fetchText = loc => child.execSync(`curl ${loc} -s`).toString('utf8');
    lib.renderLink = (href, text) => `<a href="${href}">${text}</a>`;
    lib.renderLinkWithId = (href, text) => `<a id="link-${++linkId}" href="${href}#user-content-link-${linkId}">${text}</a>`;

    lib.fetchCode = async (source, root = './', webroot) => {
        const fullSource = path.join(root, source);
        const getCode = fullSource.startsWith('http') ? lib.fetchText : lib.readText;
        const code = await getCode(fullSource);
        const lang = path.extname(fullSource).replace('.', '');
        return { code, lang, source, root, webroot };
    };

    lib.compose = async (callback, composeFile = 'src/compose.js', args = {}) => {
        const imported = await import(path.resolve(composeFile));
        const compose = imported?.default ?? imported;
        const composition = compose(args);
        return callback(composition);
    };

    lib.renderCode = async (codePromise, lang, source) => {
        if (typeof codePromise === 'string') codePromise = { code: codePromise, lang };
        const { code, lang: defaultLang, source: defaultSource, webroot } = await codePromise;
        lang = lang ?? defaultLang ?? '';
        source = source ?? defaultSource;

        const lines = [];

        if (source) {
            const text = webroot ? `${webroot}/${source}` : source;
            const codeBaseUrl = `${config.baseUrl}/blob/${config.gitBranch}`;
            const href = source.startsWith('http') ? source : `${webroot ?? codeBaseUrl}/${source}`;
            const link = lib.renderLink(href, text);
            lines.push(`###### <p align="right">${link}</p>`);
        }

        if (lang === 'mermaid') {
            const link = lib.renderLinkWithId(config.baseUrl, 'View it on GitHub');
            lines.push(`###### <p align="right"><em>Can't see the diagram?</em> ${link}</p>`);
        }

        lines.push('```' + lang, code.trim(), '```');
        return lines.join('\n');
    };

    lib.renderImage = (path, caption) => {
        return [
            '<br />',
            '<p align="center">',
            `  <img src="${path}?raw=true" />`,
            '  <br />',
            `  <em>${caption}</em>`,
            '</p>',
            '<br>'
        ].join('\n');
    };

    lib.renderMetrics = () => {
        const { cov, sloc, files, deps, devdeps } = lib.metrics();
        return `
<p align="right">
    <code>${cov}% cov</code>&nbsp;
    <code>${sloc} sloc</code>&nbsp;
    <code>${files} files</code>&nbsp;
    <code>${deps} deps</code>&nbsp;
    <code>${devdeps} dev deps</code>
</p>`;
    };

    lib.renderOpening = () => {
        return [
            `# ${config.title}`,
            '',
            lib.renderMetrics(),
            '',
            p.description,
            '',
            '<!-- START doctoc -->',
            '<!-- END doctoc -->'
        ].join('\n');
    };

    lib.renderFile = (templateData = {}) => {
        ejs.renderFile(config.template, { lib: { ...lib, ...templateData } }, { async: true }, async (err, p) => {
            if (err) throw err;
            process.stdout.write(await p);
        });
    };

    return lib;

};
