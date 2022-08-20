const process = require('process');
const path = require('path');
const packageJson = path.resolve(process.env.PACKAGE_JSON);
module.exports = require(packageJson);
