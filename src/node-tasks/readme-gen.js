const process = require('process');
const lib = require('../lib/readme-gen');
const [templateFile] = process.argv.slice(2);
lib.renderFile(templateFile);
