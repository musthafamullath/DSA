class Hashing{
  int? size;
  List? table;
  Hashing(int size){
    this.size = size;
    this.table = List.filled(size, []);
  }
  hashingFunction(String key){
    int total = 0;
    for(int i = 0; i < key.length; i ++){
      total += key.codeUnitAt(i);
    }
    return total % size!;
  }
  
  set(String key, dynamic value){
    final index = hashingFunction(key);
    final bucket = table?[index];
    if(bucket.isEmpty){
      table?[index] = [[key,value]];
    }else{
      final sameKeyItem = 
      bucket.firstWhere((item) => item[0] == key, orElse:() => []);
      if(sameKeyItem.isNotEmpty){
        sameKeyItem[1] = value;
      }else{
        table?[index].add([key,value]);
      }
    }
  }
  get(String key){
    final index = hashingFunction(key);
    final bucket = table?[index];
    if(bucket.isNotEmpty){
      final sameKeyItem = 
      bucket.firstWhere((item)=> item[0] == key, orElse: () =>[]);
      if(sameKeyItem.isNotEmpty){
        print(sameKeyItem[1]);
      }
    }
    return null;
  }
  display(){
    for(int i = 0; i < size!; i ++){
      print('$i:${table?[i]}');
    }
  }
}
void main(List<String> args) {
  Hashing table = Hashing(10);
  table.set('Musthafa', 27);
  table.set('afahtsuM', 29);
  table.get("Musthafa");
  table.display();
}