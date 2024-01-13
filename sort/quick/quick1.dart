List<int>quickSort(List<int>list){
  if(list.length < 2){
    return list;
  }
  int pivot = list[list.length-1];
  List<int> leftList = [];
  List<int> rightList = [];
  for(int i = 0; i < list.length-1; i ++){
    if(list[i] < pivot){
      leftList.add(list[i]);
    }else{
      rightList.add(list[i]);
    }
  }
  return [...quickSort(leftList),pivot,...quickSort(rightList)];
}

void main(List<String> args) {
  List<int> list = [1,2,3,4,5,10,8,7,6,9];
  List<int> result = quickSort(list);
  print(result);

}

