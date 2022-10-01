const process = require('process');
const omit = (process.env.BABEL_OMIT_PRESETS ?? '').split(process.env.SEP);
const modules = process.env.BABEL_PRESET_ENV_MODULES === 'true';

const presets = [
    ['@babel/preset-env', { targets: 'defaults', modules }],
    ['@babel/preset-react', { runtime: 'automatic' }]
].filter(([name]) => !omit.includes(name));

module.exports = { presets };
