charectorIndex(String string, char){
  for(int i = 0; i < string.length; i++){
    if(string[i] == char){
      return i;
    }
  }
}
void main(List<String> args) {
  String word = "musthafa";
  String target = "m";
  print(charectorIndex(word, target));
}