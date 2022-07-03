const p = require('../lib/package');
const logJson = require('../lib/log-json');

if (!p.jest) p.jest = {};
p.jest.coverageReporters = ['text-summary', 'json-summary', 'lcov'];
logJson(p);
