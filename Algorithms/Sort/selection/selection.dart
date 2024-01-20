selectionSort(List<int> list){
  for(int i = 0 ; i < list.length -1; i ++){
    int minIndex = i;
    for(int j = i + 1; j < list.length; j ++){
      if(list[j]<list[minIndex]){
        minIndex = j;
      }
    }
    int temp = list[i];
    list[i] = list[minIndex];
    list[minIndex] = temp;
  }
}
void main(List<String> args) {
  List<int> list = [5,2,4,3,1];
  selectionSort(list);
  print(list);
}
