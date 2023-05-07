let p1 = new Promise(function (resolve, reject) {
    console.log("Inside promise 1");
    resolve(2);
});

let p2 = new Promise(function (resolve, reject) {
    console.log("Inside promise 2");
    reject(2);
});

console.log("Hello 1");
setTimeout(() => {
    console.log("Hello 2");
}, 2000);
console.log("Hello 3");

p1.then((res) => {
    console.log(res);
});

p2.catch((err) => {
    console.log(err);
});

p1.then((res) => {
    console.log("creating a promise in then()");
    let p3 = new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve(res * 5);
        }, 2000);
    });
    return p3;
}).then((res) => {
    console.log("Inside then() after creation of promise...");
    console.log(res);
});

// multiple handlers

p1.then(() => {
    console.log("handler 1");
});

p1.then(() => {
    console.log("handler 2");
});

let promise_all = Promise.allSettled([p1, p2]);
promise_all.then((res) => {
    console.log(res);
});