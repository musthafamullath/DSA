toLowerCase(String str){
  String toLowerCase = '';
  for (int i = 0 ;i < str.length; i ++){
    toLowerCase += str[i].toLowerCase();
  } 
  return toLowerCase;
}
void main(List<String> args) {
  String word = "MUSTHAFA";
  print(toLowerCase(word));
}