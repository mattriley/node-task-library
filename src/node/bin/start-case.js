const _ = require('lodash');
const process = require('process');
const [str] = process.argv.slice(2);
const result = _.startCase(str).split(' ').map(str => str.match(/[aeiou]/) ? str : str.toUpperCase()).join(' ');
console.log(result);
