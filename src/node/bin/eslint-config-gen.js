const _ = require('lodash');
const process = require('process');
const p = require('../lib/package');
const logJson = require('../lib/log-json');
const eslintConfig = require('../configs/eslintrc.json');

const dependsOn = dep => p.devDependencies?.[dep] || p.dependencies?.[dep];

if (!eslintConfig.overrides) eslintConfig.overrides = [];

if (p.type === 'module') {
    _.set(eslintConfig, 'parserOptions.sourceType', 'module');
}

if (dependsOn('react')) {
    eslintConfig.overrides.push(
        {
            files: [process.env.SRC],
            plugins: ['react'],
            extends: ['plugin:react/recommended', 'plugin:react/jsx-runtime'],
            rules: {
                'react/display-name': 'off',
                'react/prop-types': 'off'
            }
        }
    );

    _.set(eslintConfig, 'settings.react.version', 'detect');
    _.set(eslintConfig, 'ecmaFeatures.jsx', true);
}

if (dependsOn('jest')) {
    eslintConfig.overrides.push(
        {
            files: [process.env.TEST_PATTERN],
            plugins: ['jest'],
            extends: ['plugin:jest/recommended'],
            rules: {
                'jest/require-top-level-describe': 'off',
                'jest/prefer-expect-assertions': 'off'
            }
        }
    );
}

if (dependsOn('mocha')) {
    eslintConfig.overrides.push(
        {
            files: [process.env.TEST_PATTERN],
            plugins: ['mocha'],
            extends: ['plugin:mocha/recommended']
        }
    );
}

if (dependsOn('tape')) {
    eslintConfig.overrides.push(
        {
            files: [process.env.TEST_PATTERN],
            plugins: ['tape'],
            extends: ['plugin:tape/recommended']
        }
    );
}

if (dependsOn('tap')) {
    eslintConfig.overrides.push(
        {
            files: [process.env.TEST_PATTERN],
            plugins: ['tap'],
            extends: ['plugin:tap/recommended']
        }
    );
}

logJson(eslintConfig);
