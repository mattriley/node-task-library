const p = require('../lib/package');
const sourceUrl = 'https://' + p.repository.url.split('://')[1].replace('.git', '');
console.log(sourceUrl);
