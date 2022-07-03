const fs = require('fs');
const ejs = require('ejs');
const path = require('path');
const child = require('child_process');
const process = require('process');

let linkId = 0;
const p = JSON.parse(fs.readFileSync('package.json', 'utf-8'));
const readmeTitle = process.env.PROJECT_NAME;
const readmeRoot = process.env.README_ROOT;
const readmeCodeRoot = `${readmeRoot}/blob/main`;

const lib = {};
lib.metrics = () => JSON.parse(fs.readFileSync(process.env.METRICS_SUMMARY, 'utf-8'));
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
        const href = source.startsWith('http') ? source : `${webroot ?? readmeCodeRoot}/${source}`;
        const link = lib.renderLink(href, text);
        lines.push(`###### <p align="right">${link}</p>`);
    }

    if (lang === 'mermaid') {
        const link = lib.renderLinkWithId(readmeRoot, 'View it on GitHub');
        lines.push(`###### <p align="right"><em>Can't see the diagram?</em> ${link}</p>`);
    }

    lines.push('```' + lang, code.trim(), '```');
    return lines.join('\n');
};

lib.renderMetrics = () => {
    const { cov, sloc, files, deps, devdeps } = lib.metrics();
    return `<p align="right">
    <code>${cov}% cov</code>&nbsp;
    <code>${sloc} sloc</code>&nbsp;
    <code>${files} files</code>&nbsp;
    <code>${deps} deps</code>&nbsp;
    <code>${devdeps} dev deps</code></p>`;
};

lib.renderOpening = () => {
    return [
        `# ${readmeTitle}`,
        '',
        lib.renderMetrics(),
        '',
        p.description,
        '',
        '## Table of Contents',
        '',
        '<!-- START doctoc -->',
        '<!-- END doctoc -->'
    ].join('\n');
};

lib.renderFile = templateFile => {
    ejs.renderFile(templateFile, { lib }, { async: true }, async (err, p) => {
        if (err) throw err;
        process.stdout.write(await p);
    });
};

module.exports = lib;
