const eslintConfig = require('./eslintrc.json');
const package = require(process.cwd() + '/package.json');

if (package.type === 'module') {
    eslintConfig.parserOptions.sourceType = 'module';
}

if (package.devDependencies?.react || package.dependencies?.react) {
    eslintConfig.extends.push('plugin:react/recommended');
    eslintConfig.extends.push('plugin:react/jsx-runtime');
}

const jsonOutput = JSON.stringify(eslintConfig, null, 4)
console.log(jsonOutput);
