
bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }
  if (num <= 3) {
    return true;
  }
  if (num % 2 == 0 || num % 3 == 0) {
    return false;
  }
  int i = 5;  
  while (i * i <= num) {  
    if (num % i == 0 || num % (i + 2) == 0) {  
      return false;
    }
    i += 6; 
  }
  return true;
}
void main(List<String> args) {
   for (int i = 0; i <= 10; i++) {
    if (isPrime(i)) {  
      print(i);  
    }
  }
}