const process = require('process');

const data = {
    cov: require(process.cwd() + `/${process.env.METRICS_COV}`),
    loc: require(process.cwd() + `/${process.env.METRICS_LOC}`)
};

const dimensions = ['lines', 'statements', 'functions', 'branches'];
const percentages = dimensions.map(dim => data.cov.total[dim].pct);
const cov = Math.min(...percentages);
const sloc = data.loc.SUM.code;
const files = data.loc.SUM.nFiles;
const metrics = { cov, sloc, files };
const json = JSON.stringify(metrics, null, 4);
console.log(json);
