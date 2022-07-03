const path = require('path');
const process = require('process');
const p = require(path.resolve('./package.json'));

const data = {
    cov: require(path.resolve(process.env.METRICS_COV)),
    loc: require(path.resolve(process.env.METRICS_LOC))
};

const dimensions = ['lines', 'statements', 'functions', 'branches'];
const percentages = dimensions.map(dim => data.cov.total[dim].pct);
const cov = Math.min(...percentages) ?? 0;
const sloc = data.loc.SUM.code;
const files = data.loc.SUM.nFiles;
const deps = Object.keys(p.dependencies ?? {}).length;
const devdeps = Object.keys(p.devDependencies ?? {}).length;
const metrics = { cov, sloc, files, deps, devdeps };
const json = JSON.stringify(metrics, null, 4);
console.log(json);
