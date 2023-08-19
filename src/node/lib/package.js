const process = require('process');
const path = require('path');
const packageJson = path.resolve(process.env.PACKAGE_CONFIG);
module.exports = require(packageJson);
