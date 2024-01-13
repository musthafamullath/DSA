bubbleSort(List<int> list){
  for(int i = 0 ; i < list.length-1; i++){
    for(int j = 0; j < list.length-i-1; j++){
      if(list[j]>list[j+1]){
        int temp = list[j];
        list[j] = list[j+1];
        list[j+1] = temp;
      }
    }
    
  }
}
void main(List<String> args) {
  List<int> list = [1,3,5,2,4];
  bubbleSort(list);
  print(list);
}

