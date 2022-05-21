import fs from 'fs';
import ejs from 'ejs';
import child from 'child_process';
import process from 'process';

const fetchText = url => child.execSync(`curl ${url} -s`).toString('utf8');

const fetchCode = async (url, opts = {}) => {
    const code = fetchText(url);
    return renderCode(code, url, opts);
};

const readCode = async (path, opts = {}) => {
    const code = await fs.promises.readFile(path, 'utf-8');
    return renderCode(code, path, opts);
};

const renderCode = (code, summary, opts = {}) => {
    const open = opts.open || true;

    return [
        `<details ${open ? 'open' : ''}>`,
        `<summary>${summary}</summary>`,
        '',
        '```js',
        (opts.includeFootnotes ? code : code.split('/*')[0]).trim(),
        '```',
        '</details>'
    ].join('\n');
};

const moduleGraph = async (composePath = './src/compose.js') => {
    const composeImport = await import(composePath);
    const compose = composeImport?.default ?? composeImport;
    const { composition } = compose({});
    return [
        '```mermaid',
        composition.mermaid(),
        '```',
    ].join('\n');
};

const [templateFile] = process.argv.slice(2);
const data = { fetchText, fetchCode, readCode, moduleGraph };
ejs.renderFile(templateFile, data, { async: true }, async (err, p) => {
    if (err) throw err;
    process.stdout.write(await p);
});
