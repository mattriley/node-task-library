const glob = require('fast-glob');
const path = require('path');
const p = require('../lib/package');
const logJson = require('../lib/log-json');
const process = require('process');

const binFiles = glob.sync('./bin/*');

p.bin = binFiles.reduce((acc, f) => {
    const name = path.basename(f, path.extname(f));
    return { ...acc, [name]: f };
}, {});

p.author = {
    name: process.env.AUTHOR_NAME,
    email: process.env.AUTHOR_EMAIL,
    url: process.env.AUTHOR_URL
};

p.bugs = {};
if (process.env.ISSUES_URL) p.bugs.url = process.env.ISSUES_URL;
if (process.env.ISSUES_EMAIL) p.bugs.email = process.env.ISSUES_EMAIL;

if (p.homepage) delete p.homepage;
if (process.env.GITHUB_REPO_URL) p.homepage = process.env.GITHUB_REPO_URL;

if (!p.scripts) p.scripts = {};
p.scripts.test = 'npx task test';
p.scripts.start = 'npx task start';

const seq = ['name', 'version', 'description', 'homepage', 'license', 'keywords', 'author', 'repository', 'bugs', 'private', 'type', 'main', 'bin', 'files', 'scripts', 'dependencies', 'devDependencies'];
const unk = Object.keys(p).filter(key => !seq.includes(key));

const newEntries = [...seq, ...unk].reduce((acc, key) => {
    const val = p[key];
    if (Array.isArray(val) && !val.length) return acc;
    if (typeof val === 'object' && !Object.keys(val).length) return acc;
    return [...acc, [key, val]];
}, []);

const newPackage = Object.fromEntries(newEntries);
logJson(newPackage);
