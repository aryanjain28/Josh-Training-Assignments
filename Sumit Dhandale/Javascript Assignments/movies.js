const jsonData = require("./movie_list.json")
console.log(`All movies:`);
console.log(jsonData);
good_movies = [];
jsonData.forEach((element)=>{
    if(element.rating >= 7){
        good_movies.push(element);
    }
})

good_movies.sort((a,b)=> b.year - a.year);
console.log("Good Movies");
console.log(good_movies);