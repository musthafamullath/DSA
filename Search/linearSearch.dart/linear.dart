linear(List list, int target){
  for (int i = 0 ; i <=list.length; i ++){
    if (list[i] == target){
      return i;
    }
  }
  return -1;
}

void main(List<String> args) {
  List list = [ 1, 2, 3, 4, 5];
  int target = 4;
  int result = linear(list, target);
  print("$target present at index $result");
}

// bS(List list, int target){
//   int leftIndex = 0;
//   int rightIndex = list.length-1;
//   while(leftIndex<rightIndex){
//     int middle = ((leftIndex+rightIndex)/2).floor();
//     if(target == list[middle]){
//       return middle;
//     }
//     if(target < list[middle]){
//       return middle-1;
//     }else{
//       return middle+1;
//     }
//   }
//   return -1;
// }
// ls(List list , int target){
//   for (int i = 0; i < list.length; i ++){
//     if (list == target){
//       return i;
//     }
//   }
//   return -1;
// }