binarySearchFromList(List list, int target){
  int leftIndex = 0;
  int rightIndex = list.length-1;
  while(leftIndex <= rightIndex){
    int middle = ((leftIndex + rightIndex)/2).floor();
    if(target == list[middle]){
      return middle;
    }
    if(target < list[middle]){
      rightIndex = middle-1;
    }else{
      leftIndex = middle+1;
    }
  }
  return -1;
}

void main(List<String> args) {
  List list = [1,2,3,4,5,300];
  int target = 300;
  int result = binarySearchFromList(list, target);
  print("element $target found from index $result");
}


