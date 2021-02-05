const arr = [1, 2, 3, 4, 5, 6, 2, 4, 2, 2, 3];
const countOccurance = (arr, ele) => {
    let count = 0;
    arr.forEach((element) => {
        if (element === ele) count++;
    });
    return count;
};
console.log(countOccurance(arr, 4));