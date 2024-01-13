class Node{
  int? data;
  Node? next;
  Node(int data){
    this.data = data;
  }
}
class Stack{
  Node? top = null;
  push(int data){
    Node newNode = Node(data);
    if(top == null){
      top = newNode;
    }else{
      newNode.next = top;
      top = newNode;
    }
  }
  pop(){
    if(top == null){
      print("stack is underflow");
    }else{
      top = top!.next;
    }
  }
  
  
  void displaySmallest(){
   int smallest = top!.data!;
   Node? current = top;
   while(current != null){
    if(current.data! < smallest){
      smallest = current.data!;
    }
    current = current.next;
   }
   print(smallest);
  }
  void sizeOfTheStack(){
    int count = 0;
    Node? current = top;
    while(current != null){
      count++;
      current = current.next;
    }
    print(count);
  }
  void display(){
    Node? current = top;
    while(current != null){
      print(current.data);
      current = current.next;
    }
  }
}
void main(List<String> args) {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.display();
  print("---");
}