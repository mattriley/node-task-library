const glob = require('fast-glob');
const path = require('path');
const process = require('process');

const package = require(process.cwd() + '/package.json');
const binFiles = glob.sync('./bin/*');

package.bin = binFiles.reduce((acc, f) => {
    const name = path.basename(f, path.extname(f));
    return { ...acc, [name]: f };
}, {});

const seq = ['name', 'version', 'description', 'keywords', 'author', 'license', 'homepage', 'repository', 'bugs', 'private', 'type', 'main', 'bin', 'files', 'scripts', 'dependencies', 'devDependencies'];
const unk = Object.keys(package).filter(key => !seq.includes(key));

const newEntries = [...seq, ...unk].reduce((acc, key) => {
    const val = package[key];
    if (Array.isArray(val) && val.length === 0) return acc;
    return [...acc, [key, val]];
}, []);

const newPackage = Object.fromEntries(newEntries);
const newPackageJson = JSON.stringify(newPackage, null, 4);
console.log(newPackageJson);
