const process = require('process');
const p = require('../lib/package');
const logJson = require('../lib/log-json');
const eslintConfig = require('../configs/eslintrc.json');

const dependsOn = dep => p.devDependencies?.[dep] || p.dependencies?.[dep];

if (p.type === 'module') {
    eslintConfig.parserOptions.sourceType = 'module';
}

if (dependsOn('react')) {
    if (!eslintConfig.overrides) eslintConfig.overrides = [];

    eslintConfig.overrides.push(
        {
            files: [process.env.SRC],
            plugins: ['react'],
            extends: ['plugin:react/recommended', 'plugin:react/jsx-runtime']
        }
    );

    eslintConfig.ecmaFeatures.jsx = true;
}

if (dependsOn('jest')) {
    if (!eslintConfig.overrides) eslintConfig.overrides = [];

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
    if (!eslintConfig.overrides) eslintConfig.overrides = [];

    eslintConfig.overrides.push(
        {
            files: [process.env.TEST_PATTERN],
            plugins: ['mocha'],
            extends: ['plugin:mocha/recommended']
        }
    );
}

if (dependsOn('tape')) {
    if (!eslintConfig.overrides) eslintConfig.overrides = [];

    eslintConfig.overrides.push(
        {
            files: [process.env.TEST_PATTERN],
            plugins: ['tape'],
            extends: ['plugin:tape/recommended']
        }
    );
}

if (dependsOn('tap')) {
    if (!eslintConfig.overrides) eslintConfig.overrides = [];

    eslintConfig.overrides.push(
        {
            files: [process.env.TEST_PATTERN],
            plugins: ['tap'],
            extends: ['plugin:tap/recommended']
        }
    );
}

logJson(eslintConfig);
