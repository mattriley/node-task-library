const path = require('path');
const process = require('process');
const logJson = require('../lib/log-json');
const p = require('../lib/package');

const tryRequire = p => {
    try {
        return require(p);
    }
    catch {
        return {};
    }
};

const data = {
    cov: tryRequire(path.resolve(process.env.METRICS_COV)),
    loc: tryRequire(path.resolve(process.env.METRICS_LOC))
};

const dimensions = ['lines', 'statements', 'functions', 'branches'];
const percentages = dimensions.map(dim => data.cov.total?.[dim].pct);
const cov = Math.min(...percentages) || 0;
const sloc = data.loc?.SUM.code;
const files = data.loc?.SUM.nFiles;
const deps = Object.keys(p.dependencies ?? {}).length;
const devdeps = Object.keys(p.devDependencies ?? {}).length;
const metrics = { cov, sloc, files, deps, devdeps };
logJson(metrics);
