void main(List<String> args) {
  List<int> list = [2,3,4,5,6,7,8,9];
  int target = 10;
  List<int> result = toNumbersSum(list, target);

  for (int i = 0; i < result.length; i++) {
    print(result[i]);
  }
}

toNumbersSum(List<int> list, int target) {
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = i + 1; j < list.length; j++) {
      if (list[i] + list[j] == target) {
        return [list[i], list[j]];
      }
    }
  }
  return [0];
}
  
