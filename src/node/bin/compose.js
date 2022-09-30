const process = require('process');
const path = require('path');

const main = async () => {
    const imported = await import(path.resolve(process.env.COMPOSE));
    const compose = imported?.default ?? imported;
    const { load, json } = compose();
    if (load) await load();
    console.log(json());
};

main();
