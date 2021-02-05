arr = [1,2,3,4,5];
toRemove = [1,2,3];


function removeArrElements(arr , toRemove){
    myArray = arr.filter( function( el ) {
        return !toRemove.includes( el );
      } );

    return myArray
}

final_arr = removeArrElements(arr,toRemove);

console.log(final_arr);



  