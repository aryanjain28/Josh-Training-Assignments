function count(arr, element){
    var cnt = 0;
    for(var i = 0;i < arr.length; i++){
        if(arr[i] == element){
            cnt+=1;
        }
    }

    return cnt;
}

arr = [1,1,1,2,2,3];
console.log(count(arr,1));