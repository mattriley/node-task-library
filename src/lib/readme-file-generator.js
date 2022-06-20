import fs from 'fs';
import ejs from 'ejs';
import path from 'path';
import child from 'child_process';
import process from 'process';

let codeId = 0;

const packageData = JSON.parse(fs.readFileSync('package.json', 'utf-8'));
const readmeRoot = process.env.READMEGEN_ROOT ?? packageData.homepage;
const readmeCodeRoot = process.env.READMEGEN_CODE_ROOT ?? `${readmeRoot}/blob/main`;
const replacements = (process.env.READMEGEN_REPLACE ?? '').split(',').map(str => str.split(' '));

const fetchText = url => child.execSync(`curl ${url} -s`).toString('utf8');

// const fetchCode = async (url, opts = {}) => {
//     const codeStr = fetchText(url);
//     const lang = opts.lang ?? path.extname(url).replace('.', '');
//     return code(codeStr, lang, url);
// };

const fetchCode = async (url, opts = {}, callback) => {
    if (!callback) callback = codeStr => codeStr

    const codeStr = fetchText(url);
    const lang = opts.lang ?? path.extname(url).replace('.', '');
    const finalCode = callback(codeStr);
    return code(finalCode, lang, url);
};

const readCode = async (paths, opts = {}) => {
    const codePaths = [paths].flat();
    const codePath = path.join(...codePaths);
    const codeStr = await fs.promises.readFile(codePath, 'utf-8');
    const lang = opts.lang ?? path.extname(codePath).replace('.', '');
    return code(codeStr, lang, codePath);
};


const code = (codeStr, lang = '', source = '') => {
    codeId++;

    const lines = [];

    replacements.forEach(([from, to]) => source = source.replace(from, to));

    const href = source?.replace('./', '');

    const codeLink = href.startsWith('http') ? href : `${readmeCodeRoot}/${href}`;

    if (href && !href.startsWith('.')) {
        lines.push(`###### <p id="code-${codeId}" align="right"><a href="${codeLink}" target="_blank">${href}</a></p>`);
    }

    if (lang === 'mermaid') {
        lines.push(`###### <p id="code-${codeId}" align="right"><em>Can't see the diagram?</em> <a href="${readmeRoot}#user-content-code-${codeId}" target="_blank">View it on GitHub</a></p>`);
    }

    lines.push('```' + lang, codeStr.trim(), '```');
    return lines.join('\n');
};

const mermaid = (codeStr) => {
    return code(codeStr, 'mermaid');
};

const compose = async (composePath = './src/compose.js', composeArgs = {}) => {
    const composeImport = await import(composePath);
    const compose = composeImport?.default ?? composeImport;
    return compose(composeArgs);
};

const compose2 = async (callback, composePath = './src/compose.js', composeArgs = {}) => {
    const composeImport = await import(composePath);
    const compose = composeImport?.default ?? composeImport;
    return callback(compose(composeArgs));
};

const [templateFile] = process.argv.slice(2);
const data = { compose, compose2, mermaid, fetchText, fetchCode, readCode, code };
ejs.renderFile(templateFile, data, { async: true }, async (err, p) => {
    if (err) throw err;
    process.stdout.write(await p);
});
