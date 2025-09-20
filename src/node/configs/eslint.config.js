// eslint.config.js (flat config)

module.exports = [
    {
        files: ['**/*.js'],
        languageOptions: {
            ecmaVersion: 'latest',
            sourceType: 'commonjs',
            globals: {
                module: 'readonly',
                require: 'readonly',
                __dirname: 'readonly',
                __filename: 'readonly',
                process: 'readonly',
                console: 'readonly'
            }
        },

        rules: {
            // --- Variables ---
            'prefer-const': 'error',
            'no-var': 'error',
            'no-restricted-syntax': [
                'warn',
                {
                    selector: "VariableDeclaration[kind='let']",
                    message:
                        "Avoid 'let' — prefer 'const'; only allow for performance optimisations."
                }
            ],

            // --- Control flow ---
            'no-else-return': ['error', { allowElseIf: false }],

            // --- Ternary ---
            'no-nested-ternary': 'error',
            'multiline-ternary': ['error', 'never'],

            // --- Strings ---
            quotes: [
                'error',
                'single',
                { avoidEscape: true, allowTemplateLiterals: true }
            ],

            // --- Strict mode ---
            strict: ['error', 'never'],

            // --- Code style ---
            indent: ['error', 4, { SwitchCase: 1 }],
            semi: ['error', 'always'],
            'eol-last': ['error', 'always'],
            'comma-dangle': ['error', 'never'],
            'no-trailing-spaces': 'error',

            // --- Other sanity rules ---
            'no-unused-vars': ['warn', { argsIgnorePattern: '^_' }],
            'no-console': 'off',
            'object-shorthand': ['error', 'always']
        }
    }
];
