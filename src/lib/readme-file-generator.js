import fs from 'fs';
import ejs from 'ejs';
import child from 'child_process';
import process from 'process';
import glob from 'fast-glob';

const fetchText = url => child.execSync(`curl ${url}`).toString('utf8');

const fetchCode = (url, opts = {}) => {
    const code = fetchText(url);
    return renderCode(code, url, opts);
};

const readCode = (path, opts = {}) => {
    const code = fs.readFileSync(path, 'utf-8');
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

const moduleGraph = composes => (composePath = './src/compose.js') => {
    const compose = composes[composePath];
    const { mermaid } = compose({}).composition;
    return [
        '```mermaid',
        mermaid(),
        '```',
    ].join('\n');
};

const [templateFile] = process.argv.slice(2);
const composePaths = glob.sync('./**/compose.js', { ignore: ['node_modules'] })

const start = async () => {
    const composes = await composePaths.reduce(async (p, path) => {
        const acc = await p;
        const composeImport = await import('./' + path);
        const compose = composeImport?.default ?? composeImport;
        return { ...acc, ['./' + path]: compose };
    }, Promise.resolve({}));

    const data = { fetchText, fetchCode, readCode, moduleGraph: moduleGraph(composes) };

    ejs.renderFile(templateFile, data, {}, (err, res) => {
        if (err) throw err;
        process.stdout.write(res);
    });
};

start();
