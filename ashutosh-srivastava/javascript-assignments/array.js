arr = [1,2,3,4,5];
arr_unwanted = [1,2,3];

removeArrElements = (arr , arr_remove)=> arr.filter(element=> !arr_remove.includes(element));

final_arr = removeArrElements(arr,arr_unwanted);

console.log(final_arr);
