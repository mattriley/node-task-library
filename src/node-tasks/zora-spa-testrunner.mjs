/* eslint-disable import/no-unresolved */

import JSDOM from 'jsdom';
import { createHarness } from 'zora';
import { createDiffReporter } from 'zora-reporters';
import glob from 'fast-glob';
import process from 'process';
import path from 'path';

const [pattern] = process.argv.slice(2);
const testFiles = glob.sync(pattern);
const testHarness = createHarness({ indent: true });
const test = testHarness[process.env.ZORA_ONLY === 'true' ? 'only' : 'test'];

const start = async () => {
    const { default: composeModules } = await import('./src/compose');
    const { default: composeTesting } = await import('./testing/compose');
    const { default: defaultTestConfig } = await import('./testing/test-config');

    const setup = () => {
        const { window } = new JSDOM.JSDOM('', { url: 'https://localhost/' });
        const { helpers } = composeTesting({ window }).modules;

        const compose = ({ defaults, overrides, config } = {}) => {
            window.document.getElementsByTagName('html')[0].innerHTML = '';
            delete window.dataLayer;
            const composition = composeModules({ window, defaults, overrides, configs: [defaultTestConfig, config] });
            composition.modules.startup.start({ composition });
            return composition;
        };

        return { compose, window, helpers };
    };

    const testModuleArgs = setup();

    const runTests = filePath => {
        return test(filePath, async ({ only, skip, ...t }) => {
            const test = (...args) => t.test(...args);
            Object.assign(test, { only, skip });
            const { default: invokeTests } = await import(path.resolve(filePath));
            return invokeTests({ test, ...testModuleArgs });
        });
    };

    await Promise.all(testFiles.map(runTests));
    await testHarness.report({ reporter: createDiffReporter() });
};

start();
