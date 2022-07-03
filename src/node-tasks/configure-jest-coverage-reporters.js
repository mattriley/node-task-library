const p = require('../lib/package');

if (!p.jest) p.jest = {};
p.jest.coverageReporters = ['text-summary', 'json-summary', 'lcov'];
console.log(JSON.stringify(p, null, 4));
