const process = require('process');
const [str] = process.argv.slice(2);
const nums = [...str].map(s => s.charCodeAt(0)).join('');
const step = Math.trunc(nums.length / 5);
const ints = [];
for (let i = 1; i < 5; i++) { ints.push(nums[i * step]); }
if (ints[0] === '0') ints[0] = '1';
const port = ints.join('');
console.log(port);
