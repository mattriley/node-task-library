const path = require('path');
const process = require('process');
const test = require('node:test');
const assert = require('node:assert/strict');
const { main } = require(path.resolve('package.json'));
const testTarget = require(path.resolve(main));
const testFiles = process.argv.slice(2).map(f => path.resolve(f));

testFiles.forEach(f => {
    const ini = require(f);
    if (typeof ini !== 'function') return;
    const run = ini({ test, assert }, testTarget);
    if (typeof run !== 'function') return;
    run(testTarget);
});
