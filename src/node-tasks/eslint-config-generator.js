const p = require('../lib/package');
const logJson = require('../lib/log-json');
const eslintConfig = require('../configs/eslintrc.json');

if (p.type === 'module') {
    eslintConfig.parserOptions.sourceType = 'module';
}

if (p.devDependencies?.react || p.dependencies?.react) {
    eslintConfig.extends.push('plugin:react/recommended');
    eslintConfig.extends.push('plugin:react/jsx-runtime');
}

logJson(eslintConfig);
