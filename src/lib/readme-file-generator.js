import fs from 'fs';
import ejs from 'ejs';
import path from 'path';
import sloc from 'node-sloc';
import child from 'child_process';
import process from 'process';

let linkId = 0;
const srcPath = process.env.SRC;
const packageData = JSON.parse(fs.readFileSync('package.json', 'utf-8'));
const readmeRoot = process.env.READMEGEN_ROOT ?? packageData.homepage;
const readmeCodeRoot = process.env.READMEGEN_CODE_ROOT ?? `${readmeRoot}/blob/main`;

const data = {};
data.sloc = (path = srcPath) => sloc({ path });
data.json = obj => JSON.stringify(obj, null, 4);
data.readText = loc => fs.promises.readFile(loc, 'utf-8');
data.fetchText = loc => child.execSync(`curl ${loc} -s`).toString('utf8');
data.renderLink = (href, text) => `<a href="${href}">${text}</a>`;
data.renderLinkWithId = (href, text) => `<a id="link-${++linkId}" href="${href}#user-content-link-${linkId}">${text}</a>`;

data.fetchCode = async (source, root = './', webroot) => {
    const fullSource = path.join(root, source);
    const getCode = fullSource.startsWith('http') ? data.fetchText : data.readText;
    const code = await getCode(fullSource);
    const lang = path.extname(fullSource).replace('.', '');
    return { code, lang, source, root, webroot };
};

data.renderCode = async (codePromise, lang, source) => {
    if (typeof codePromise === 'string') codePromise = { code: codePromise, lang };

    const { code, lang: defaultLang, source: defaultSource, webroot } = await codePromise;
    lang = lang ?? defaultLang ?? '';
    source = source ?? defaultSource;

    const lines = [];

    if (source) {
        const text = webroot ? `${webroot}/${source}` : source;
        const href = source.startsWith('http') ? source : `${webroot ?? readmeCodeRoot}/${source}`;
        const link = data.renderLink(href, text);
        lines.push(`###### <p align="right">${link}</p>`);
    }

    if (lang === 'mermaid') {
        const link = data.renderLinkWithId(readmeRoot, 'View it on GitHub');
        lines.push(`###### <p align="right"><em>Can't see the diagram?</em> ${link}</p>`);
    }

    lines.push('```' + lang, code.trim(), '```');
    return lines.join('\n');
};

data.compose = async (callback, path = 'src/compose.js', args = {}) => {
    if (!path.startsWith('.')) path = `./${path}`
    const imported = await import(path);
    const compose = imported?.default ?? imported;
    const composition = compose(args);
    return callback(composition);
};

const [templateFile] = process.argv.slice(2);
ejs.renderFile(templateFile, data, { async: true }, async (err, p) => {
    if (err) throw err;
    process.stdout.write(await p);
});
