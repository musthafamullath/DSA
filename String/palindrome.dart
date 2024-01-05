palindrome(String str){
  String reversed = str.toLowerCase().split("").reversed.join();
  if(reversed == str.toLowerCase()){
    print("it is palindrome");
  }else{
    print("it is not plindrom");
  }
}
void main(List<String> args) {
  String wordOne = "woowa";
  palindrome(wordOne);
  print("-----");
  String wordTwo = "wow";
  palindrome(wordTwo);
}