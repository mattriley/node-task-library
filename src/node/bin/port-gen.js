const process = require('process');
const [str] = process.argv.slice(2);
const nums = [...str].map(s => s.charCodeAt(0)).join('');
const step = Math.trunc(nums.length / 5);

const ints = Array.from({ length: 4 }, (_, i) => nums[(i + 1) * step]);
const fixed = ints[0] === '0' ? ['1', ...ints.slice(1)] : ints;

const port = fixed.join('');
console.log(port);
