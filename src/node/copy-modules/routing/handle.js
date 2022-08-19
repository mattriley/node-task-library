module.exports = ({ routing, routes }) => async req => {

    const { method, path } = req;
    const pipeline = routes[`${method.toUpperCase()} ${path}`];
    if (!pipeline) return { statusCode: 404 };
    const extendedPipeline = [routing.middleware.schemaValidation, ...pipeline];

    try {
        return await extendedPipeline.reduce(async (p, f) => {
            const acc = await p;
            return { ...await f(acc), ...acc }; // this order prevents overriding
        }, Promise.resolve({ req }));
    } catch (err) {
        console.error(err);
        return { statusCode: 500 };
    }

};
