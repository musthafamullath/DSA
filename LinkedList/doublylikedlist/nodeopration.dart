

class Node{
  int? data;
  Node? next;
  Node? prev;

  Node(int data){
    this.data = data;
  }
}


class DoublyLinkedList{

  Node? head;
  Node? tail;


  void addNode(int data){
    Node newNode = Node(data);
    if(head == null){
      head = newNode;
    }else{
      tail!.next = newNode;
      newNode.prev = tail;  
    }
    tail = newNode;
  }


  void deleteNode(int data){
    Node? temp = head;
    if(temp!.data == data){
      head = temp.next;
      head!.prev = null; 
    }// head node delete handled.
    if(tail!.data == data){
      tail!.prev!.next = null;
      tail = tail!.prev;  
    }// tail node delete handled.
    while(temp != null && temp.data != data){
      temp = temp.next;
    }
    if(temp == null){
      return;
    }
    temp.prev!.next = temp.next;
    temp.next!.prev = temp.prev; 
  }// this is a delete opration handling for a node that is not head or tail and includs inside of doubly linkdlist.


  void insertNode(int location, int data){
    Node newNode = Node(data);
    Node? temp = head;
   // inserted a node the head of doubly linked list.
    while(temp != null && temp.data != location){
      temp = temp.next;
    }
    if(temp == null){
      print("empty");
      return;
    }
    
    if(temp == tail){
      temp.next = newNode;
      newNode.prev = temp;
      tail = newNode;
      return;
    }// inserted a node the tail of doubly linked list.
    temp.next!.prev = newNode;
    newNode.next = temp.next;
    temp.next = newNode;
    newNode.prev = temp;// inserted a node inside of head and tail.
  }
  void insertNodebeforehead(int data){
    Node newNode = Node(data);
    if(head == null){
      head = newNode;
      tail = newNode;
    }else{
      newNode.next = head;
      head!.prev = newNode;
      newNode.prev = null;
      head = newNode;
    }
    
  }

  void dispalyNormaly(){
    Node? temp = head;
    if(head == null){
      print("empty");
      return;
    }
    while (temp != null){
      print(temp.data);
      temp = temp.next;
    }
  }
  

  void dispalyReversely(){
    Node? temp = tail;
     if(head == null){
      print("empty");
      return;
    }
    while(temp != null){
      print(temp.data);
      temp = temp.prev;
    }
  }

}

void main(List<String> args) {
  DoublyLinkedList doublyLinkedList = DoublyLinkedList();
  doublyLinkedList.addNode(1);
  doublyLinkedList.addNode(2);
  doublyLinkedList.addNode(3);
  doublyLinkedList.addNode(4);
  doublyLinkedList.dispalyNormaly();
  print("--------");
  doublyLinkedList.dispalyReversely();
  print("--------");
  doublyLinkedList.insertNode(4, 5);
  doublyLinkedList.dispalyNormaly();
  print("--------");
  doublyLinkedList.insertNodebeforehead(0);
  doublyLinkedList.dispalyNormaly();
  print("--------");
}