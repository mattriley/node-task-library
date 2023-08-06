const process = require('process');
const omit = (process.env.BABEL_OMIT_PRESETS ?? '').split('|');
const modules = process.env.NODE_ENV === 'test' ? 'auto' : false;

const presets = [
    [process.env.BABEL_PRESET_ENV, { targets: 'defaults', modules }],
    ['@babel/preset-react', { runtime: 'automatic' }]
].filter(([name]) => !omit.includes(name));

module.exports = { presets };
