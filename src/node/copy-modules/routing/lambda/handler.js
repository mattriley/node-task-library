const response = data => {
    return {
        statusCode: data.statusCode ?? 200,
        body: data.body ? JSON.stringify(data.body) : undefined,
        headers: {
            'content-type': 'application/json'
        }
    };
};

module.exports = ({ routing }) => async event => {
    const req = event.requestContext.http;
    req.body = event.body ? JSON.parse(event.body) : {};
    const result = await routing.handle(req);
    return response(result);
};
