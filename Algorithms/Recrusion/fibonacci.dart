fibonacci(int num){
  if(num <= 1){
    return num;
  }
  return fibonacci(num-1) + fibonacci( num -2);
}
void main(List<String> args) {
  int result = fibonacci(6);
  print(result);
}