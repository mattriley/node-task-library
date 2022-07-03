const fs = require('fs');
const p = JSON.parse(fs.readFileSync('package.json', 'utf-8'));
if (!p.jest) p.jest = {};
p.jest.coverageReporters = ['text-summary', 'json-summary', 'lcov'];
console.log(JSON.stringify(p, null, 4));
