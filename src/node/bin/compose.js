const process = require('process');

const main = async () => {
    const imported = await import(process.env.COMPOSE);
    const compose = imported?.default ?? imported;
    const { load, json } = compose();
    if (load) await load();
    console.log(json());
};

main();
