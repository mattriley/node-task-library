const _ = require('lodash');
const Ajv = require('ajv');
const addFormats = require('ajv-formats');

module.exports = ({ schemas }) => {

    const ajv = new Ajv();
    addFormats(ajv);

    return ({ req }) => {
        const schemaName = _.camelCase(`${req.method} ${req.path}`);
        const schema = schemas[schemaName];
        if (!schema) { console.warn(`No matching schema for ${schemaName}`); return []; }
        const validate = ajv.compile(schema);
        validate(req.body);
        const errors = validate.errors ?? [];
        return errors.length ? { statusCode: 400, body: { errors } } : {};
    };

};
