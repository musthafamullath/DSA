class Stack {
 final List<int> _elements = []; 
 void push(int data) {
    _elements.add(data); 
  }

 int pop() {
    if (_elements.isEmpty) {
      print("stack is underflow");
      return -1;
    } else {
   return _elements.removeLast(); 
    }
  }

  int removeMiddleElement(int mid, int current){
    if(mid == current){
      return pop();
    }
    final temp = pop();
    removeMiddleElement(mid, current +1);
    push(temp);
    return -1;
  }
 
  List<int> elements = [];

  void displaySmallest() {
    int smallest = _elements.first; 
    for (int element in _elements) {
      if (element < smallest) {
        smallest = element;
      }
    }
    print(smallest);
  }

  void sizeOfTheStack() {
    print(_elements.length); 
  }

  void display() {
    for (int element in _elements.reversed) { 
      print(element);
    }
  }
}

void main(List<String> args) {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  stack.display();
  print("-------");
  stack.displaySmallest();
  print("-------");
  stack.sizeOfTheStack();
  stack.display();
  print("-------");
  final current = 0;
  final mid = stack._elements.length ~/2;
  stack.removeMiddleElement(mid, current);
  stack.display();
}
