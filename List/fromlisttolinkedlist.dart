class Node {
  late int data;
  Node? next;

  Node(int data) {
    this.data = data;
    this.next = null;
  }
}

Node arrayToLinkedList(List<int> arr) {
  if (arr.isEmpty) {
    throw ArgumentError('Array must not be empty.');
  }

  Node head = Node(arr[0]);
  Node current = head;

  for (int i = 1; i < arr.length; i++) {
    current.next = Node(arr[i]);
    current = current.next!;
    
  }

  return head;
  
}

void main() {
  List<int> myArray = [1, 2, 3, 4, 5];
  Node myLinkedList = arrayToLinkedList(myArray);
  print(myLinkedList);

  // Now myLinkedList is a linked list with nodes containing elements from the array.
}
