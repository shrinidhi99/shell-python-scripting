console.log('---async await---');

async function fun1() {
    let delhiWeather = new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("27 Deg");
        }, 1000);
    });

    let mumbaiWeather = new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("25 Deg");
        }, 5000);
    });

    // delhiWeather.then(console.log);
    // mumbaiWeather.then(console.log);

    console.log("Fetching Delhi Weather...");
    let delhiW = await delhiWeather;
    console.log("Fetching Mumbai Weather...");
    let mumbaiW = await mumbaiWeather;

    return [delhiW, mumbaiW];
}

const fun2 = async () => {
    console.log("Fun2 executed.");
}

const main1 = async () => {
    console.log("Weather report");
    let a = await fun1();
    console.log(a);
    let b = fun2();
}

main1();