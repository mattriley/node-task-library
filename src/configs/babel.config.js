const process = require('process');
const noBabelConfig = process.env.NO_BABEL_CONFIG === 'true';

const presets = [
    ['@babel/preset-env', { 'targets': 'defaults' }],
    ['@babel/preset-react', { 'runtime': 'automatic' }]
];

module.exports = noBabelConfig ? {} : { presets };
