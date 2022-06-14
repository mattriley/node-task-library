import fs from 'fs';
import ejs from 'ejs';
import path from 'path';
import child from 'child_process';
import process from 'process';

const fetchText = url => child.execSync(`curl ${url} -s`).toString('utf8');

const fetchCode = async (url, opts = {}) => {
    const code = fetchText(url);
    const lang = opts.lang ?? path.extname(url).replace('.', '');
    return renderCode(code, lang);
};

const readCode = async (paths, opts = {}) => {
    const codePaths = [paths].flat();
    const codePath = path.join(...codePaths);
    const code = await fs.promises.readFile(codePath, 'utf-8');
    const lang = opts.lang ?? path.extname(codePath).replace('.', '');
    return renderCode(code, lang);
};

const renderCode = (code, lang) => {
    return ['```' + lang, code.trimEnd(), '```'].join('\n');
};

const compose = async (composePath = './src/compose.js', composeArgs = {}) => {
    const composeImport = await import(composePath);
    const compose = composeImport?.default ?? composeImport;
    return compose(composeArgs);
};

const [templateFile] = process.argv.slice(2);
const data = { compose, fetchText, fetchCode, readCode, renderCode };
ejs.renderFile(templateFile, data, { async: true }, async (err, p) => {
    if (err) throw err;
    process.stdout.write(await p);
});
