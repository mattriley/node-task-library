const response = data => {
    return {
        statusCode: data.statusCode ?? 200,
        body: JSON.stringify(data.body ?? {}),
        headers: {
            'content-type': 'application/json'
        }
    };
};

module.exports = ({ routing }) => async event => {
    const { method, path } = event.requestContext.http;
    const body = event.body ?? {};
    const req = { method, path, body };
    const result = await routing.handle(req);
    return response(result);
};
