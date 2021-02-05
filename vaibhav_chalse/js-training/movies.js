const moviesData = require("./moviesData.json");
filteredMovies = moviesData.filter(({ rating }) => rating > 7);
sortedMovies = filteredMovies.sort((a, b) => b.year - a.year);
console.log(sortedMovies);