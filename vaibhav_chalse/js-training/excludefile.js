const arr = [1, 2, 3, 4, 5];
const arr1 = [1, 2, 4];
const exclude = (array, array1) => array.filter((ele) => !array1.includes(ele));
console.log(exclude(arr, arr1));