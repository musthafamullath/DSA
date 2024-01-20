toUpperCase(String str){
  String toUppercase = '';
  for(int i = 0 ; i < str.length; i ++){
    toUppercase += str[i].toUpperCase();
  }
  return toUppercase;
}
void main(List<String> args) {
  String word = "musthafa";
  print(toUpperCase(word));
}