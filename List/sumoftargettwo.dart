import 'dart:collection';

void main(List<String> args) {
  List<int> list = [1,2,3,4,5,6,7,8,9];
  int target = 10;
  List<int> result = toNumberSum(list, target);
  for(int i = 0 ; i < result.length; i ++){
    print(result[i]);
  }
  
}
toNumberSum(List<int> list, int target){
  Set<int> nums =  HashSet<int>();
  for(int i = 0 ; i < list.length ; i ++){
    int currentValue = list[i];
    int match = target - currentValue;
    if(nums.contains(match)){
      return [currentValue,match];
    }else{
      nums.add(currentValue);
    }
  }
  return [0];
}
