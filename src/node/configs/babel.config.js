const process = require('process');
const omit = (process.env.BABEL_OMIT_PRESETS ?? '').split(process.env.SEP);

const presets = [
    ['@babel/preset-env', { targets: 'defaults', modules: false }],
    ['@babel/preset-react', { runtime: 'automatic' }]
].filter(([name]) => !omit.includes(name));

module.exports = { presets };
