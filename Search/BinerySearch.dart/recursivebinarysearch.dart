recursiveBinarySearchFromList(List list , int target){
  return search(list, target, 0, list.length-1);
}

search(List list , int target, int leftIndex, int rightIndex){
  if (leftIndex > rightIndex){
    return -1;
  }
  int middleIndex = ((leftIndex + rightIndex)/2).floor();
  if (target == list[middleIndex]){
    return middleIndex;
  }
  if (target < list[middleIndex]){
    return search(list, target, leftIndex, middleIndex-1);
  }else{
    return search(list, target, middleIndex+1, rightIndex);
  }
}

void main(List<String> args) {
 int result =(recursiveBinarySearchFromList([1,2,3,4,5,6,7,8,9,0], 6));
 print("recursive binary is $result");
}