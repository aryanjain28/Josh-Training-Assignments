const p1 = new Promise(function(resolve,reject){
    //call for Data
    if(true) //if Data is Fetched
        resolve("Fetched data");
    else
        reject("Error: No internet connection");
});

p1.then((val)=>{
    console.log(val);
});

p1.catch((error_val)=>{
    console.log(error_val)
});


const p1 = new Promise(function(resolve,reject){
    //call for Data
    if(true) //if Data is Fetched
        resolve("Fetched data");
    else
        reject("Error: No internet connection");
});

p1.then((val)=>{
    console.log(val);
});

p1.catch((error_val)=>{
    console.log(error_val)
});