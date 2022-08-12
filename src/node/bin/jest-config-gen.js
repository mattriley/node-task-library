const process = require('process');
const logJson = require('../lib/log-json');
const jestConfig = require('../configs/jest.config.json');

jestConfig.testMatch = ['<rootDir>' + process.env.TEST_PATTERN];

jestConfig.coverageThreshold = {
    global: {
        branches: process.env.COV_BRANCHES,
        functions: process.env.COV_FUNCTIONS,
        lines: process.env.COV_LINES,
        statements: process.env.COV_STATEMENTS
    }
};

logJson(jestConfig);
