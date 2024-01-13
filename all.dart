
  // void reverseAllNodes(){
  //   Node? temp = head!.next;
  //   Node? prev = head;
  //   Node? next = null;
  //   while(temp != null){
  //     head!.next = temp.next;
  //     next = temp.next;
  //     temp.next = prev;
  //     prev = temp;
  //     temp = next;
  //   }
  //   temp = head;
  //   head = tail;
  //   tail = temp;
  // }


  // void insertNodebeforehead(int data){ //it is the example of adding newNode infront of head.
  //   Node newNode = Node(data);
  //   if (head == null){
  //     head = newNode;
  //     tail = newNode;
  //   }else{
  //     newNode.next = head; // O(1)T&S
  //     head = newNode;
  //   }
  // }


  //   void deleteDoublicateElementFormSinglyLinkedList(){
  //   Node? current  = head;
  //   while(current != null){
  //     Node? next = current.next;
  //     while(next != null && next.data == current.data){
  //       next = next.next;
  //     }
  //     current.next = next;
  //     if(next == tail && next!.data == current.data){
  //       tail = current;
  //       tail!.next = null;
  //     }
  //     current = next;
  //   }
  // }

//   void findAndDeleteMiddleValue() {
//     if (head == null || head!.next == null) {
//         return;
//     }

//     Node? slow = head, fast = head;
//     while (fast != null && fast.next != null) {
//         slow = slow!.next;
//         fast = fast.next!.next;
//     }

//     // Delete the middle node
//     deleteNode(slow!.data); 
// }

// fibonacci(int data){
//   if(data <= 1){
//     return data;
//   }
//   return fibonacci(data-1)+fibonacci(data-2);
// }
// factorial(int data){
//   if(data <= 1){
//     return 1;
//   }
//   return data * factorial(data -1);
// }
// sum(int data){
//   if(data <= 1 ){
//     return 1;
//   }
//   return data + sum(data -1);
// }


// reverse(String str){
//   String reverse = '';
//   for (int i = str.length -1; i >= 0 ; i --){
//     reverse += str[i];
//   }
//   return reverse;
// }
// void main(List<String> args) {
//   String word = 'musthafa';
//   print(reverse(word));
// }
// palindrome(String str){
//   String rev = str.toLowerCase().split('').reversed.join();
//   if(rev == str.toLowerCase()){
//    print("palindrome");
//   }else{
//     print("non palindrome");
//   }
// }
// void main(List<String> args) {
//   String word = 'wowa';
//   palindrome(word);
// }


// linear(List list, int value){
// //   for(int i = 0; i <= list.length; i ++){
// //     if(list[i]==value){
// //       return i;
// //     }
// //   }
// //   return -1;
// int lef =0;
// int rig =list.length-1;
// while(lef<=rig){
//   int mid = ((lef+rig)/2).floor();
//   if(value == list[mid]){
//     return mid;
//   }
//   if(value < list[mid]){
//     rig = mid-1;
//   }else{
//     lef = mid+1;
//   }
// }
// }
// void main(List<String> args) {
//   List list = [1,2,3,4,5];
//   int value = 3;
//   int result = linear(list, value);
//   print(result);
// }



// void displayRecrusion(Node? node){
//   if(node == null){
//     return;
//   }
//   print(node.data);
//   displayRecrusion(node.next);
// }
// void displayUsingRecrusion(){
//   displayRecrusion(head);
// }




bS(List list, int target){
  int leftIndex = 0;
  int rightIndex = list.length-1;
  while(leftIndex<rightIndex){
    int middle = ((leftIndex+rightIndex)/2).floor();
    if(target == list[middle]){
      return middle;
    }
    if(target < list[middle]){
      leftIndex = middle-1;
    }else{
      rightIndex = middle+1;
    }
  }
  return -1;
}
lS(List list, int target){
  for(int i = 0; i <list.length; i ++){
    if(list[i] == target){
      return i;
    }
  }
  return -1;
}

bbblsrt(List list){
  for(int i = 0; i< list.length-1; i++){
    for(int j = 0 ; j< list.length-i-1; j++){
      if(list[j]>list[j+1]){
        int temp = list[j];
        list[j] = list[j+1];
        list[j+1] = temp;
      }
    }
  }
}

instnsrt(List list){
  for(int i = 1; i<list.length;i++){
    int current = list[i];
    int j = i-1;
    while(j>=0 && list[j]> current){
      list[j+1] = list[j];
      j--;
    }
    list[j+1] = current;
  }
}

slctonsrt(List list){
  for(int i =0; i<list.length-1; i ++){
    int minIndex = i;
    for(int j = i+1; j <list.length;j++){
      if(list[j]<list[minIndex]){
        minIndex = j;
      }
    }
   int temp = list[i];
   list[i] = list[minIndex];
   list[minIndex] = temp;
  }
}

quicksort(List list){
  if(list.length <2){
    return list;
  }
  int pivot = list[list.length-1];
  List leftlist = [];
  List rightlist = [];
  for(int i =0; i < list.length-1;i++){
    if(list[i]<=pivot){
      leftlist.add(list[i]);
    }else{
      rightlist.add(list[i]);
    }
  }
  return [...leftlist,pivot,...rightlist];
}

List mergesort(List list){
  if(list.length <2){
    return list;
  }
  int middle = list.length~/2;
  List leftPart = list.sublist(0,middle);
  List rightPart = list.sublist(middle);
  return merge(mergesort(leftPart), mergesort(rightPart));
}

List merge(List leftPart, List rightPart){
  List sortedList = [];
  while(leftPart.isNotEmpty && rightPart.isNotEmpty){
    if(leftPart.first <= rightPart.first){
      sortedList.add(leftPart.removeAt(0));
    }else{
      sortedList.add(rightPart.removeAt(0));
    }
  }
  return [...sortedList,...leftPart,...rightPart];
}
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
      print('Stack is underFlow');
      return;
    }
    top = top!.next;
  }
  removeMiddleElement(){
    if(top == null || top!.next == null){
      return null;
    }
    Node? slow = top;
    Node? fast = top!.next;
    while(fast != null && fast.next != null){
      slow = slow!.next;
      fast = fast.next!.next;
    }
    slow!.next = slow.next!.next; 
  }
  biggestOfStack(){
    int biggest = top!.data!;
    Node? current = top;
    while(current!=null){
      if(current.data! >= biggest){
        biggest = current.data!;
      }
    }
    print(biggest);
  }
  sizeOfTheStack(){
    int count =0;
    Node? current = top;
    while(current != null){
      current= current.next;
      count++;
    }
    print(count);
  }
  display(){
    Node? current = top;
    while(current != null){
      print(current.data);
      current = current.next;
    }
  }
}
class Node1{
  int? data;
  Node? next;
  Node1(int data){
    this.data = data;
  }
}
class Queue{
  Node? front;
  Node? rear;
  enqueue(int data){
    Node newNode = Node(data);
    if(rear == null){
      rear = front = newNode;
    }else{
      rear!.next = newNode;
      rear = newNode;
    }
  }
  dequeue(){
    if(front == null){
      print("queue is emplty");
      return;
    }
    front = front!.next;
    if(front == null){
      rear = null;
    }
  }
  middleDeletionQueue(){
    if(front == null|| front!.next == null){
      return null;
    }
    Node? slower = front;
    Node? faster = front!.next;
    while(faster != null && faster.next != null){
      slower = slower!.next;
      faster = faster.next!.next;
    }
    slower!.next = slower.next!.next;
  }
  distpay(){
    Node? current = front;
    while(current != null){
      print(current.data);
      current = current.next;
    }
  }
  
}
class Hashing{
  int? size;
  List? table;
  Hashing(int size){
    this.size = size;
    this.table = List.filled(size, null);
  }
  hashingFunction(String key){
    int total = 0;
    for(var i = 0; i <key.length; i++){
      total += key.codeUnitAt(i);
    }
    return total % size!;
  }
  set(key,value){
    int index = hashingFunction(key);
    table?[index] = value;
  }
  get(key){
    int index = hashingFunction(key);
    print(table?[index]);
  }
  collisionAvoidset(String key, dynamic value){
    final index = hashingFunction(key);
    final bucket = table?[index];
    if(bucket.isEmpty){
      table?[index] = [[key, value]];
    }else{
      final sameKeyItem = bucket.firstWhere((item) => item == key, orElse: () => []);
      if(sameKeyItem.isNotEmpty){
        sameKeyItem[1] = value;
      }else{
        table?[index].add(key,value);
      }
    }
  }
  getAvoidedCollision(String key){
    final index = hashingFunction(key);
    final bucket = table?[index];
    if(bucket.isNotEmpty){
      final sameKeyItem = bucket.firstWhere((item) => item ==key, orElse: () => []);
      if(sameKeyItem.isNotEmpty){
        print(sameKeyItem[1]);
      }
    }
  }
  display(){
    for(var i =0; i <table!.length; i++){
      print(table?[i]);
    }
  }
}



void main(List<String> args) {
  Stack stack = Stack();
  Queue queue = Queue();
  stack.display();
  queue.distpay();
}



