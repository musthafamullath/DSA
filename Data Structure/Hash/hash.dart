class Hash{
  int? size;
  List? table;
  Hash(int size){
    this.size = size;
    this.table = List.filled(size, null);
  }

  hashFunction(String key){
    int total = 0;
    for(var i = 0; i < key.length; i ++){
      total += key.codeUnitAt(i);
    }
    return total % size!;
  }
  

  set(key,value){
    int index = hashFunction(key);
    table?[index] = value;
  }
  
  get(key){
    int index = hashFunction(key);
    print(table?[index]);
  }

  display(){
    for(var i = 0; i < table!.length; i ++){
      if(table?[i] != null){
        print('$i:${table?[i]}');
      }
    }
  }
}
void main(List<String> args) {
  Hash table = Hash(10);
  table.set('Musthafa', 27);
  table.set('Ribin Raj', 29);
  table.get('Musthafa');
  table.get('Ribin Raj');
  table.display();
}