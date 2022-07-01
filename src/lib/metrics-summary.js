const process = require('process');

const data = {
    cov: require(process.cwd() + `/${process.env.METRICS_COV}`),
    loc: require(process.cwd() + `/${process.env.METRICS_LOC}`)
};

const dimensions = ['lines', 'statements', 'functions', 'branches'];
const percentages = dimensions.map(dim => data.cov.total[dim].pct);
const cov = Math.min(...percentages);
const loc = data.loc.sloc;
const metrics = { cov, loc };
const json = JSON.stringify(metrics, null, 4);
console.log(json);
