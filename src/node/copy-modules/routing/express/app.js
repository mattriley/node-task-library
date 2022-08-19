module.exports = ({ routing }) => () => {

    const cors = require('cors');
    const express = require('express');
    const app = express();

    app.all('/*', express.json(), cors(), async (req, res) => {
        const event = {
            body: req.body ?? undefined,
            requestContext: {
                http: {
                    method: req.method.toUpperCase(),
                    path: req.path
                }
            }
        };
        const result = await routing.lambda.handler(event);
        res.status(result.statusCode).send(result.body);
    });

    return app;

};
