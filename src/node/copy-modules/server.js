const compose = require('./compose');
const { modules } = compose();
modules.routing.express.serve();
