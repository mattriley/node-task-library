const fs = require('fs');
const eslintConfig = require('../lib/eslintrc.json');
const p = JSON.parse(fs.readFileSync('package.json', 'utf-8'));

if (p.type === 'module') {
    eslintConfig.parserOptions.sourceType = 'module';
}

if (p.devDependencies?.react || p.dependencies?.react) {
    eslintConfig.extends.push('plugin:react/recommended');
    eslintConfig.extends.push('plugin:react/jsx-runtime');
}

const jsonOutput = JSON.stringify(eslintConfig, null, 4);
console.log(jsonOutput);
