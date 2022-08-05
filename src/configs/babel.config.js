const process = require('process');
const omit = (process.env.BABEL_OMIT_PRESETS ?? '').split(' | ');

const presets = [
    ['@babel/preset-env', { 'targets': 'defaults' }],
    ['@babel/preset-react', { 'runtime': 'automatic' }]
].filter(([name]) => !omit.includes(name));

module.exports = { presets };
