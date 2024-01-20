insertionSort(List<int> list){
  for(int i = 1; i < list.length; i ++){
    int current = list[i];
    int j = i - 1;
    while(j>=0 && list[j] > current){
      list[j+1] = list[j];
      j--;
    } 
    list[j+1]= current;
  }
}
void main(List<String> args) {
  List<int> list = [1,3,5,2,4,6,0];
  insertionSort(list);
  print(list);
}

