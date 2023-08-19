const process = require('process');
const omit = (process.env.BABEL_OMIT_PRESETS ?? '').split('|');
const modules = process.env.NODE_ENV === 'test' ? 'auto' : false;

const presets = [
    ['@babel/preset-env', { targets: 'defaults', modules }],
    ['@babel/preset-react', { runtime: 'automatic' }]
].filter(([name]) => !omit.includes(name));

module.exports = { presets };
