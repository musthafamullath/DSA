class Node{
  int? data;
  Node? next;
  Node(int data){
    this.data = data;
  }
}
class Queue{
  Node? front;
  Node? rear;
  void enQueue(int data){
    Node newNode = Node(data);
    if(rear == null){
      rear = front = newNode;
    }else{
      rear!.next = newNode;
      rear = newNode;
    }
  }
  void deQueue(){
    if(front == null){
      print("empty");
      return;
    }
    front = front!.next;
    if(front == null){
      rear = null;
    }
  }
  display(){
    Node? current = front;
    while(current != null){
      print(current.data);
      current = current.next;
    }
  }
}
void main(List<String> args) {
  Queue queue = Queue();
  queue.enQueue(1);
  queue.enQueue(2);
  queue.enQueue(3);
  queue.display();
  print('____');
  queue.deQueue();
  queue.display();
    print('____');
}