
class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class SingleLingedList {
       

  Node? head = null;
  Node? tail = null;


  
  void addNode(int data){
    Node newNode = Node(data);// vast case is :  O(1)T and O(1)s
    if(head == null){
      head = newNode; //the head is null , you should add a newNode to head.
    }else{
      tail!.next = newNode; //the head isn't null you can add a newNode to head.
    }
    tail = newNode; //if head null or not null you should add a newNode to tail. 
    //because . a linged list have to be a tail poperly.
  }

void findAndDeleteMiddleValue() {
    if (head == null || head!.next == null) {
        // Empty or single-node list, nothing to delete
        return;
    }

    Node? slow = head, fast = head;
    while (fast != null && fast.next != null) {
        slow = slow!.next;
        fast = fast.next!.next;
    }

    // Delete the middle node
    deleteNode(slow!.data); // Pass the data of the middle node to deleteNode
}


  void deleteNode(int? data){
    Node? temp = head, prev = null;
    if(temp != null && temp.data == data){
      head = temp.next;
      return;
    }//if your deleting data is same to a data that include head of the SingleLingedList.
     //if not like, your data will be in two cases
     
     while(temp != null && temp.data != data){
      prev = temp;
      temp = temp.next;// O(1)T&S
     }
     if(temp == null){
      return ; //if you entered a data  for delete that does not include or contain in your singleLingedList.
     }
     if(temp == tail){
      prev = tail;
      tail!.next = null;
      return; //if you entered a data for delete that includes your SingleLingedList's tail position.
     }
     prev!.next = temp.next; //if you entered a data for delete that includes your SingleLingedList' nontail position. 
  }

  void deleteDoublicateElementFormSinglyLinkedList(){
    Node? current = head;
    while(current != null){
      Node? next = current.next;
      while(next != null && next.data == current.data){
        next = next.next;
      }
      current.next = next;
      if(next == tail && next!.data == current.data){
        tail = current;
        tail!.next = null;
      }
      current = next;
    }
  }

  
  void insertNode(int nextTo, int data){//nextTo argument is used for finding insert position.
    Node newNode = Node(data);
    Node? temp = head;
    while(temp != null && temp.data != nextTo){//it will be work temp will be null or finding nextTo value.
      temp = temp.next;// vast case is :  O(n)T and O(1)s
    }
    if(temp == null){
      return;
    }
    if(temp == tail){
      temp.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = temp.next;
    temp.next = newNode; 
  }

  void insertNodebeforehead(int data){ //it is the example of adding newNode infront of head.
    Node newNode = Node(data);
    if (head == null){
      head = newNode;
      tail = newNode;
    }else{
      newNode.next = head; // O(1)T&S
      head = newNode;
    }
  }

  void reverseAllNodes(){
    Node? temp = head!.next;
    Node? prev = head;
    Node? next = null;
    while(temp != null){
      head!.next = temp.next;
      next = temp.next;
      temp.next = prev;
      prev = temp;
      temp = next;
    }
    temp = head;
    head = tail;
    tail = temp;
  }

  

  void display() {
    if (head == null) {
      print("empty");//if head is null , the print function will work.
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;//if the head not null you should put temp.next to temp for finding next Node.
      }// O(n)T, O(1)s
    }
  }


  
}

void main(List<String> args) {
  SingleLingedList list = SingleLingedList();
  list.display();
  list.addNode(1);
  list.addNode(2);
  list.addNode(3);
  list.addNode(4);
  list.addNode(5);
  list.display();
  print("_____");
  list.insertNodebeforehead(0);
  list.display();
  print("_____");
  list.insertNode(4, 5);
  list.display();
  print("_____");
  list.deleteDoublicateElementFormSinglyLinkedList();
  list.display();
  // print("_____");
  // list.reverseAllNodes();
  // list.display();
  // print("_____");
  // list.findAndDeleteMiddleValue();
  // list.display();

}