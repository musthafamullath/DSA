List<int> mergeSort(List<int> list){
  if(list.length < 2){
    return list;
  }
  int middle = list.length ~/2;
  List<int> leftList = list.sublist(0,middle);
  List<int> rightList = list.sublist(middle);
  return merge(mergeSort(leftList), mergeSort(rightList));
}
List<int> merge (List<int> leftList,List<int> rightList){
  List<int> sortedList = [];
  while(leftList.isNotEmpty && rightList.isNotEmpty){
    if(leftList.first <= rightList.first){
      sortedList.add(leftList.removeAt(0));
    }else{
      sortedList.add(rightList.removeAt(0));
    }
  }
  return [...sortedList,...leftList,...rightList];
}
void main(List<String> args) {
  List<int> list = [4,3,2,1,5,7,6];
  List<int> result = mergeSort(list);
  print(result);
}
bs(List list, int target){
  
}