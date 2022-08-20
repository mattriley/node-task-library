const compose = require('./compose');
const { modules } = compose();
module.exports = modules.routing.lambda;
