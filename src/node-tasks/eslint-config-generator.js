const process = require('process');
const p = require('../lib/package');
const logJson = require('../lib/log-json');
const eslintConfig = require('../configs/eslintrc.json');

const dependsOn = dep => p.devDependencies?.[dep] || p.dependencies?.[dep];

if (p.type === 'module') {
    eslintConfig.parserOptions.sourceType = 'module';
}

if (dependsOn('react')) {
    eslintConfig.extends.push('plugin:react/recommended');
    eslintConfig.extends.push('plugin:react/jsx-runtime');
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

logJson(eslintConfig);
