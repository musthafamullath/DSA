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

// import 'sort/quick/quick1.dart';

// bS(List list , int target){
//   int leftIndex = 0;
//   int rightIndex = list.length-1;
//   while(leftIndex<rightIndex){
//     int middle = ((leftIndex+rightIndex)/2).floor();
//     if(target == list[middle]){
//       return middle;
//     }
//     if(target < list[middle]){
//       return middle-1;
//     }else{
//       return middle+1;
//     }
//   }
//   return -1;
// }
// lS(List list , int target){
//   for(int i =0; i < list.length-1; i ++){
//     if(list[i] == target){
//       return i;
//     }
//   }
// }
// bubblesort(List list){
//   for(int i =0; i < list.length-1; i ++){
//     for(int j =0; j< list.length-i-1; j++){
//       if(list[j]>list[j+1]){
//         int temp = list[j];
//         list[j] = list[j+1];
//         list[j+1] = temp;
//       }
//     }
//   }
// }
// insertionSort(List list){
//   for(int i = 1; i < list.length; i ++){
//     int current = list[i];
//     int j = i -1;
//     while(j>=0 && list[j]> current){
//       list[j+1] = list[j];
//       j--;
//     }
//     list[j+1] = current;
//   }
// }
// selectionSort(List list){
//   for(int i =0; i < list.length-1; i ++){
//     int minIndex = i;
//     for(int j = i+1; j < list.length-1; j++){
//       if(list[j]<list[minIndex]){
//         minIndex = j;
//       }
//     }
//     int temp = list[i];
//     list[i] = list[minIndex];
//     list[minIndex] = temp;
//   }
// }
// Quicksort(List list){
//   if(list.length <2){
//     return list;
//   }
//   int pivot = list[list.length-1];
//   List<int> leftList = [];
//   List<int> rightList = [];
//   for(int i = 0; i < list.length-1; i++){
//     if(list[i] <= pivot){
//       leftList.add(list[i]);
//     }else{
//       rightList.add(list[i]);
//     }
//   }
//   return [...quickSort(leftList),pivot,...quickSort(rightList)];
// }
// mergesort(List<int> list){
//   if(list.length <2){
//     return list;
//   }
//   int middle = list.length~/2;
//   List<int> leftList = list.sublist(0, middle);
//   List<int> rightList = list.sublist( middle);
//   return merge(mergesort(leftList), mergesort(rightList));
// }
// merge(List leftList, List rightList){
//   List sortedList = [];
//   while(leftList.isNotEmpty && rightList.isNotEmpty){
//     if(leftList.first <= rightList.first){
//       sortedList.add(leftList.removeAt(0));
//     }else{
//       sortedList.add(rightList.removeAt(0));
//     }
//   }
//   return[...sortedList,...leftList,...rightList];
// }
// class Node{
//   int? data;
//   Node? next;
//   Node(int data){
//     this.data = data;
//   }
// }
// class Stack{
//   Node? top = null;
//   push(int data){
//     Node newNode = Node(data);
//     if(top == null){
//       top = newNode;
//     }else{
//       top!.next = newNode;
//       top = newNode;
//     }
//   }
//   pop(){
//     if(top == null){
//       print("stack is underflow");
//       return ;
//     }
//     top = top!.next;
//   }
//   removeMiddleElement(){
//     if(top == null || top!.next == null){
//       return null;
//     }
//     Node? slow = top;
//     Node? fast = top!.next;
//     while(fast != null && fast.next != null){
//       slow = slow!.next;
//       fast = fast.next!.next;
//     }
//     slow!.next = slow.next!.next;
//   }
//   smallest(){
//     int smallest = top!.data!;
//     Node? current = top;
//     while(current != null){
//       if(current.data! <= smallest){
//         smallest = current.data!;
//       }
//     }
//     print(smallest);
//   }
//   sizeOfTheStack(){
//     int count = 0;
//     Node? current = top;
//     while(current != null){
//       current = current.next;
//       count++;
//     }
//     print(count);
//   }
//   display(){
//     Node? current = top;
//     while(current != null){
//       print(current.data);
//       current = current.next;
//     }
//   }
// }

// class Queue{
//   Node? front = null;
//   Node? rear = null;
//   enQueue(int data){
//     Node newNode = Node(data);
//     if(rear == null){
//       rear = front = newNode;
//     }else{
//       rear!.next = newNode;
//       rear = newNode;
//     }
//   }
//   deQueue(){
//     if(front == null){
//       print("queue is empty");
//       return ;
//     }
//     front = front!.next;
//     if(front == null){
//       rear = null;
//     }
//   }
//   removeMiddleElement(){
//     if(front == null || front!.next == null){
//       return null;
//     }
//     Node? slow = front;
//     Node? fast = front!.next;
//     while(fast != null && fast.next != null){
//       slow = slow!.next;
//       fast = fast.next!.next;
//     }
//     slow!.next = slow.next!.next;
//     }
//     display(){
//       Node? current = front;
//       while(current!= null){
//         print(current.data);
//         current = current.next;
//       }
//   }
// }
// class Hashing{
//   int? size;
//   List? table;
//   Hashing(int size){
//     this.size = size;
//     this.table = List.filled(size, null);
//   }
//   HashingFunction(String key){
//     int total = 0;
//     for(var i = 0; i < key.length; i ++){
//       total += key.codeUnitAt(i);
//     }
//     return total % size!;
//   }
//   set(key, value){
//     int index = HashingFunction(key);
//     table?[index] = value;
//   }
//   get(key){
//     int index = HashingFunction(key);
//     print(table?[index]);
//   }
//   setcollision(String key, dynamic value){
//     final index = HashingFunction(key);
//     final bucket = table?[index];
//     if(bucket.isEmpty){
//       table?[index] = [[key, value]];
//     }else{
//       final sameKeyItem = bucket.firstWhere((item) => item == key, orElse: ()=>[]);
//       if(sameKeyItem.isNotEmpty){
//         sameKeyItem[1] = value;
//       }else{
//         table?[index].add(key,value);
//       }
//     }
//   }
//   getcollision(String key){
//     final index = HashingFunction(key);
//     final bucket = table?[index];
//     if(bucket.isNotEmpty){
//       final sameKeyItem = bucket.firstWhere((item) => item == key, orElse: () => []);
//       if(sameKeyItem.isNotEmpty){
//         print(sameKeyItem[1]);
//       }
//     }
//   }
//   display(){
//     for(var i =0 ; i < table!.length; i++){
//       print(table?[i]);
//     }
//   }
// }
// void main(List<String> args) {
//   Stack stack = Stack();
//   Queue queue = Queue();
//   Hashing hashing = Hashing(50);
//   stack.display();
//   queue.display();
//   hashing.display();
// }


// quickSort(List list){
//   if(list.length <2){
//     return list;
//   }
//   int pivot = list[list.length-1];
//   List<int> leftList = [];
//   List<int> rightList = [];

//   for(int i =0; i < list.length-1; i++){
//     if(list[i] <= pivot){
//       leftList.add(list[i]);
//     }else{
//       rightList.add(list[i]);
//     }
//   }
//   return[...quickSort(leftList),pivot,...quickSort(rightList)];
// }
// void main(List<String> args) {
//   List list = [4,2,8,3,1];
//   List result = quickSort(list);
//   print(result); 
// }

// import 'dart:io';

// class Node<T>{
//   T? value;
//   Node? left;
//   Node? right;
//   Node({this.value});
// }
// class BinarySearchTree{
//   Node? root;
//   isEmpty(){
//     return root == null;
//   }
//   insert(value){
//     Node newNode = Node(value: value);
//     if(isEmpty()){
//       root = newNode;
//     }else{
//       insetNode(root, newNode);
//     }
//   }
//   insetNode(Node? root, Node? newNode){
//     if(root!.value < newNode!.value){
//       if(root.left == null){
//         root.left = newNode;
//       }else{
//         insetNode(root.left, newNode);
//       }
//     }else{
//       if(root.right == null){
//         root.left = newNode;
//       }else{
//         insetNode(root.right, newNode);
//       }
//     }
//   }
//   search(Node? root, dynamic value){
//     if(root == null){
//       return 'value did not find';
//     }else{
//       if(root.value == value){
//         return 'value found';
//       }else if(root.value < value){
//         return search(root, value);
//       }else{
//         return search(root, value);
//       }
//     }
//   }
//   PreOrder(Node? root){
//     if(root != null){
//       stdout.write('${root.value}\t');
//       PreOrder(root.left);
//       PreOrder(root.right);
//     }
//   }
//   inOrder(Node? root){
//     if(root != null){
//       inOrder(root.left);
//       stdout.write('${root.value}');
//       inOrder(root.right);
//     }
//   }
//   postOrder(Node? root){
//     if(root != null){
//       postOrder(root.left);
//       postOrder(root.right);
//       stdout.write('${root.value}');
//     }
//   }
//   levelOrder(){
//     List<Node> queue = [];
//     queue.add(root!);
//     while(queue.isNotEmpty){
//       Node? current = queue.removeAt(0);
//       stdout.write(current.value);
//       if(current.left != null){
//         queue.add(current.left!);
//       }
//       if(current.right != null){
//         queue.add(current.right!);
//       }
//     }
//   }
//   min(Node? root){
//     if(root!.left == null){
//       return root.value;
//     }else{
//       return min(root.left);
//     }
//   }
//   max(Node? root){
//     if(root!.right == null){
//       return root.value;
//     }else{
//       return max(root.right);
//     }
//   }

//   delete(dynamic value){
//     root = deleteNode(root, value);
//   }
//   deleteNode(Node? root, dynamic value){
//     if(root == null){
//       return root;
//     }
//     if(value < root.value){
//       root.left = deleteNode(root.left, value);
//     }else if(value > root.value){
//       root.right = deleteNode(root.right, value);
//     }else{
//       if(root.left == null && root.right == null){
//         return null;
//       }
//       if(root.left == null){
//         return root.right;
//       }else if(root.right == null){
//         return root.left;
//       }
//       root.value = min(root.right);
//       root.right = deleteNode(root.right,root.value);
//     }
//     return root;
//   }
//   bool isValidBST(Node? root, dynamic minValue, dynamic maxValue){
//     if(root == null){
//       return true;
//     }
//     if(root.value <= minValue || root.value >= maxValue){
//       return false;
//     }
//     return isValidBST(root.left, minValue, root.value)
//     &&isValidBST(root.right, root.value, maxValue);
//   }
//   int maxDepth(Node? root){
//     if(root == null){
//       return 0;
//     }
//     int left = maxDepth(root.left);
//     int right = maxDepth(root.right);
//     return left>right ? left+1 : right+1;
//   }
//   int minDepth(Node? root){
//     if(root == null){
//       return 0;
//     }
//     int left = minDepth(root.left);
//     int right = minDepth(root.right);
//     return left > right ? left +1: right +1;
//   }
//   closest(num value){
//     int closest = root!.value;
//     Node? current = root;
//     while(current != null){
//       if((current.value - value).abs() < 
//       (closest - value).abs()){
//         closest = current.value;
//       }
//       if(value < current.value){
//         current = current.left;
//       }else if(value > current.value){
//         current = current.right;
//       }else{
//         return current.value;
//       }
//     }
//     return closest;
//   }

// }
// void main(List<String> args) {
//   BinarySearchTree binarySearchTree = BinarySearchTree();
//   print(binarySearchTree.isValidBST(binarySearchTree.root, double.negativeInfinity, double.infinity));
// }

// import 'dart:io';

// class Node<T>{
//   T? value;
//   Node? left;
//   Node? right;
//   Node({this.value});
// }
// class BinarySearchTree{
//   Node? root;
//   isEmpty(){
//     return root == null;
//   }
//   insert(value){
//     Node newNode = Node(value: value);
//     if(isEmpty()){
//       root = newNode;
//     }else{
//       insertNode(root, newNode);
//     }
//   }
//   insertNode(Node? root, Node? newNode){
//     if(newNode!.value < root!.value){
//       if(root.left == null){
//         root.left = newNode;
//       }else{
//         insertNode(root.left, newNode);
//       }
//     }else{
//       if(root.right == null){
//         root.right = newNode;
//       }else{
//         insertNode(root.right, newNode);
//       }
//     }
//   }
//   search(Node? root, dynamic value){
//     if(root == null){
//       return 'value did not find';
//     }else{
//       if(root.value == value){
//         return 'value found';
//       }else if(root.value < value){
//         return search(root, value);
//       }else{
//         return search(root, value);
//       }
//     }
//   }
//   preOrder(Node? root){
//     if(root != null){
//       stdout.write('${root.value}');
//       preOrder(root.left);
//       preOrder(root.right);
//     }
//   }
//   inorder(Node? root){
//     if(root != null){
//       inorder(root.left);
//       stdout.write('${root.value}');
//       inorder(root.right);
//     }
//   }
//   postOrder(Node? root){
//     if(root != null){
//       postOrder(root.left);
//       postOrder(root.right);
//       stdout.write("${root.value}");
//     }
//   }
//   levelOrder(){
//     List<Node> queue = [];
//     queue.add(root!);
//     while(queue.isNotEmpty){
//       Node? current = queue.removeAt(0);
//       stdout.write("${current.value}\t");
//       if(current.left != null){
//         queue.add(current.left!);
//       }
//       if(current.right != null){
//         queue.add(current.right!);
//       }
//     }
//   }
//   min(Node? root){
//     if(root!.left == null){
//       return root.value;
//     }else{
//       return min(root.left);
//     }
//   }
//   max(Node? root){
//     if(root!.value == null){
//       return root.value;
//     }else{
//       return max(root.right);
//     }
//   }
//   delete(dynamic value){
//     root = deleteNode(root, value);
//   }
//   deleteNode(Node? root, dynamic value){
//     if(root == null){
//       return root;
//     }
//     if(value < root.value){
//       root.left = deleteNode(root.left, value);
//     }else if(value > root.value){
//       root.right = deleteNode(root.right, value);
//     }else{
//       if(root.left == null && root.right == null){
//         return null;
//       }if(root.left == null){
//         return root.right;
//       }else if(root.right == null){
//         return root.left;
//       }
//       root.value = min(root.right);
//       root.right = deleteNode(root.right,root.value);
//     }
//     return root;
//   }

//   bool isValidBST(Node? root, dynamic minVAlue, dynamic maxValue){
//     if(root == null){
//       return true;
//     }
//     if(root.value <= minVAlue || root.value >= maxValue){
//       return false;
//     }
//     return isValidBST(root.left, minVAlue, root.value)
//      && isValidBST(root.right,root.value, maxValue);
//   }
//   int maxDepth(Node? root){
//     if(root == null){
//       return 0;
//     }
//     int left = maxDepth(root.left);
//     int right = maxDepth(root.right);
//     return left > right ? left +1: right +1;
//   }
//   int minDepth(Node? root){
//     if(root == null){
//       return 0;
//     }
//     int left = minDepth(root.left);
//     int right = minDepth(root.right);
//     return left > right? left +1: right+1;
//   }
//   closest(dynamic value){
//     int closest = root!.value;
//     Node? current = root;
//     while(current != null){
//       if((current.value - value).abs() < (closest - value)){
//         closest = current.value;
//       }
//       if(value < current.value){
//         current = current.left;
//       }else if(value > current.value){
//         current = current.right;
//       }else{
//         return current.value;
//       }
//     }
//     return closest;
//   }
// }
// void main(List<String> args) {
//   BinarySearchTree binarySearchTree = BinarySearchTree();
//   print(binarySearchTree.isValidBST(binarySearchTree.root, double.negativeInfinity, double.infinity));
// }

// class MaxHeap{
//   List<int> heap = [];
//   getparentIndex(int index){
//     return (index -1)~/2;
//   }
//   getLeftChildIndex(int index){
//     return 2 * index  +1;
//   }
//   getRightChildIndex(int index){
//     return 2 * index +2;
//   }
//   swap(int index1, int index2){
//     int temp = heap[index1];
//     heap[index1] = heap[index2];
//     heap[index2] = temp;
//   }
//   heapifyUp(int index){
//     int parantIndex = getparentIndex(index);
//     if(parantIndex >=0 && heap[parantIndex] < heap[index]){
//       swap(index, parantIndex);
//       heapifyUp(parantIndex);
//     }
//   }
//   heapifyDown(int index){
//     int leftChildIndex = getLeftChildIndex(index);
//     int rightChildIndex = getRightChildIndex(index);
//     int maxIndex = index;
//     if(leftChildIndex < heap.length && heap[leftChildIndex] > heap[index]){
//       maxIndex = leftChildIndex;
//     }
//     if(rightChildIndex < heap.length && heap[rightChildIndex] > heap[index]){
//       maxIndex = rightChildIndex;
//     }
//     if(maxIndex != index){
//       swap(index, maxIndex);
//       heapifyDown(maxIndex);
//     }
//   }
//   insert(int value){
//     heap.add(value);
//     heapifyUp(heap.length-1);
//   }
//   remove(){
//     if(heap.isEmpty){
//       return null;
//     }
//     if(heap.length == 1){
//       return heap.removeLast();
//     }
//     int max = heap[0];
//     heap[0] = heap.removeLast();
//     heapifyDown(0);
//     return max;
//   }
//   heapSort(){
//     List<int> sortedArray = [];
//     while(heap.isNotEmpty){
//       sortedArray.add(remove());
//     }
//     return sortedArray;
//   }
//   buildHeapFromArray(List<int> array){
//     heap = array;
//     int firstNonLeafIndex = (array.length)~/2;
//     for(int i = firstNonLeafIndex; i >=0; i--){
//       heapifyDown(i);
//     }
//   }
// }
// import 'dart:developer';

// import 'Data Structure/Heap/maxheap.dart';

// class Heap{
//   List<int> heap = [];
//   getparantIndex(int index){
//     return (index -1)~/2;
//   }
//   getLeftChildIndex(int index){
//     return 2 * index +1;
//   }
//   getRightChildIndex(int index){
//     return 2 * index +2;
//   }
//   swap(int index1,int index2){
//     int temp = heap[index1];
//     heap[index1] = heap[index2];
//     heap[index2] = temp;
//   }
//   heapifyUp(int index){
//     int parantIndex = getparantIndex(index);
//     if(parantIndex >= 0 && heap[parantIndex] < heap[index]){
//       swap(index, parantIndex);
//       heapifyUp(parantIndex);
//     }
//   }
//   heapifyDown(int index){
//     int leftChildIndex = getLeftChildIndex(index);
//     int rightChildIndex = getRightChildIndex(index);
//     int maxIndex = index;
//     if(leftChildIndex < heap.length && heap[leftChildIndex]>heap[index]){
//       maxIndex = leftChildIndex;
//     }
//     if(rightChildIndex < heap.length && heap[rightChildIndex]>heap[index]){
//       maxIndex = rightChildIndex;
//     }
//     if(maxIndex != index){
//       swap(index, maxIndex);
//       heapifyDown(maxIndex);
//     }
//   }
//   insert(int value){
//     heap.add(value);
//     heapifyUp(heap.length-1);
//   }
//   remove(){
//     if(heap.isEmpty){
//       return null;
//     }
//     if(heap.length == 1){
//       return heap.removeLast();
//     }
//     int max = heap[0];
//     heap[0] = heap.removeLast();
//     heapifyDown(0);
//     return max;
//   }
//   heapSort(){
//     List<int> sortedArray = [];
//     while(heap.isNotEmpty){
//       sortedArray.add(remove());
//     }
//     return sortedArray;
//   }
//   buildHeapFromArray(List<int> array){
//     heap = array;
//     int firstNonleafIndex = (array.length)~/2;
//     for(int i = firstNonleafIndex; i >= 0; i--){
//       heapifyDown(i);
//     }
//   }
// }
// void main(List<String> args) {
//   MaxHeap maxHeap = MaxHeap();
//   maxHeap.insert(1);
// }
// class TrieNode{
//   late Map<String,TrieNode> children;
//   late bool iswordEnd;
//   TrieNode(){
//     children = {};
//     iswordEnd = false;
//   }
// }
// class Trie{
//   late TrieNode root;
//   Trie(){
//     root = TrieNode();
//   }
//   void insert(String word){
//     TrieNode? currentNode = root;
//     for(int i = 0; i < word.length; i++){
//       String charTofind = word[i];
//       if(!currentNode!.children.containsKey(charTofind)){
//         currentNode.children[charTofind] = TrieNode();
//       }
//       currentNode = currentNode.children[charTofind];
//     }
//     currentNode!.iswordEnd = true;
//   }
//   contains(String word){
//     TrieNode? currentNode = root;
//     for(int i = 0; i < word.length; i++){
//       String charTofind = word[i];
//       if(!currentNode!.children.containsKey(charTofind)){
//         return false;
//       }
//       currentNode = currentNode.children[charTofind];
//     }
//     currentNode!.iswordEnd;
//   }
//   bool startsWithPrefix(String prefix){
//     TrieNode? currentNode = root;
//     for(int i = 0; i < prefix.length; i++){
//       String charTofind = prefix[i];
//       if(!currentNode!.children.containsKey(charTofind)){
//         return false;
//       }
//       currentNode = currentNode.children[charTofind];
//     }
//     return true;
//   }
//   List<String> getsWordWithPrefix(String prefix){
//     TrieNode? currentNode = root;
//     for(int i = 0; i < prefix.length; i++){
//       String charToFind = prefix[i];
//       if(!currentNode!.children.containsKey(charToFind)){
//         return [];
//       }
//       currentNode = currentNode.children[charToFind];
//     }
//     List<String> words = [];
//     collectswordWithPrefix(currentNode, prefix, words);
//     return words;
//   }
//   void collectswordWithPrefix(
//     TrieNode? node, String currentPrefix, List<String> words
//   ){
//     if(node!.iswordEnd){
//       words.add(currentPrefix);
//     }
//     for(String char in node.children.keys){
//       collectswordWithPrefix(node.children[char], currentPrefix + char, words);
//     }
//   }
// }
// class Graph{
//   late List<String> vertices;
//   late Map<String,List<String>> edges;
//   Graph(){
//     vertices = [];
//     edges = {};
//   }
//   void addVertex(String vertex){
//     vertices.add(vertex);
//     edges[vertex] = [];
//   }
//   void addEdge(String vertex1, String vertex2){
//     if(edges.containsKey(vertex1)&&edges.containsKey(vertex2)){
//       edges[vertex1]!.add(vertex2);
//       edges[vertex2]!.add(vertex1);
//     }else{
//       print('pls add a vertex');
//     }
//   }
//   void display(){
//     for(var vertex in vertices){
//       String neighbor = edges[vertex]!.join(',');
//       print('$vertex --> $neighbor');
//     }
//   }
//   bool hasEdge(vertex1,vertex2){
//     return edges[vertex1]!.contains(vertex2)
//     && edges[vertex2]!.contains(vertex1);
//   }
//   deleteEdge(vertex1,vertex2){
//     edges[vertex1]!.remove(vertex2);
//     edges[vertex2]!.remove(vertex1);
//   }
//   deleteVertex(vertex){
//     if(!edges.containsKey(vertex)){
//       return null;
//     }
//     edges.remove(vertex);
//     for(var othervertex in edges.keys){
//       edges[othervertex]!.remove(vertex);
//     }
//     vertices.remove(vertex);
//   }

// }