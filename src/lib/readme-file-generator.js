import fs from 'fs';
import ejs from 'ejs';
import path from 'path';
import child from 'child_process';
import process from 'process';

let linkId = 0;
const packageData = JSON.parse(fs.readFileSync('package.json', 'utf-8'));
const readmeRoot = process.env.READMEGEN_ROOT ?? packageData.homepage;
const readmeCodeRoot = process.env.READMEGEN_CODE_ROOT ?? `${readmeRoot}/blob/main`;

const fetchText = loc => child.execSync(`curl ${loc} -s`).toString('utf8');
const readText = loc => fs.promises.readFile(loc, 'utf-8');

const fetchCode = async (source, root = './', webroot) => {
    const fullSource = path.join(root, source);
    const getCode = fullSource.startsWith('http') ? fetchText : readText;
    const code = await getCode(fullSource);
    const lang = path.extname(fullSource).replace('.', '');
    return { code, lang, source, root, webroot };
};

const renderLink = (href, text) => {
    return `<a href="${href}">${text}</a>`;
};

const renderLinkWithId = (href, text) => {
    linkId++;
    return `<a id="link-${linkId}" href="${href}#user-content-link-${linkId}">${text}</a>`
};


const renderCode = async (codePromise, lang) => {

    if (typeof codePromise === 'string') codePromise = { code: codePromise, lang };

    const { code, lang: defaultLang, source, root, webroot } = await codePromise;
    lang = lang ?? defaultLang ?? '';

    const lines = [];

    if (source) {
        const text = webroot ? `${webroot}/${source}` : source;
        const href = `${webroot ?? readmeCodeRoot}/${source}`;
        const link = renderLink(href, text);
        lines.push(`###### <p align="right">${link}</p>`);
    }

    if (lang === 'mermaid') {
        const link = renderLinkWithId(readmeRoot, 'View it on GitHub');
        lines.push(`###### <p align="right"><em>Can't see the diagram?</em> ${link}</p>`);
    }

    lines.push('```' + lang, code.trim(), '```');
    return lines.join('\n');
};

const compose = async (callback, path = 'src/compose.js', args = {}) => {
    if (!path.startsWith('.')) path = `./${path}`
    const imported = await import(path);
    const compose = imported?.default ?? imported;
    return callback(await compose(args));
};

const [templateFile] = process.argv.slice(2);
const data = { compose, renderCode, fetchCode, vars: {} };
ejs.renderFile(templateFile, data, { async: true }, async (err, p) => {
    if (err) throw err;
    process.stdout.write(await p);
});

