const glob = require('fast-glob');
const path = require('path');
const p = require('../lib/package');
const logJson = require('../lib/log-json');

const binFiles = glob.sync('./bin/*');

p.bin = binFiles.reduce((acc, f) => {
    const name = path.basename(f, path.extname(f));
    return { ...acc, [name]: f };
}, {});

const seq = ['name', 'version', 'description', 'keywords', 'author', 'license', 'homepage', 'repository', 'bugs', 'private', 'type', 'main', 'bin', 'files', 'scripts', 'dependencies', 'devDependencies'];
const unk = Object.keys(p).filter(key => !seq.includes(key));

const newEntries = [...seq, ...unk].reduce((acc, key) => {
    const val = p[key];
    if (Array.isArray(val) && !val.length) return acc;
    if (typeof val === 'object' && !Object.keys(val).length) return acc;
    return [...acc, [key, val]];
}, []);

const newPackage = Object.fromEntries(newEntries);
logJson(newPackage);
