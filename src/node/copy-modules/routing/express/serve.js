const process = require('process');
const packageName = process.env.PACKAGE_NAME;
const serverPort = process.env.WEB_SERVER_PORT;

module.exports = ({ routing }) => () => {

    const app = routing.express.app();

    app.listen(serverPort, () => {
        console.log(`${packageName} listening on port ${serverPort}`);
    });

};
