class MinHeap{
  List<int> heap = [];
  getParentIndex(int index){
    return (index - 1) ~/ 2;
  }
  getLeftChildIndex(int index){
    return 2 * index + 1;
  }
  getRightChildIndex(int index){
    return 2 * index + 2;
  }
  swap(int index1, int index2){
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }
  heapifyToUp(int index){
    int parentIndex = getParentIndex(index);
    if(parentIndex >= 0 && heap[parentIndex] > heap[index]){
      swap(index, parentIndex);
      heapifyToUp(parentIndex);
    }
  }
  heapifyToDown(int index){
    int leftChildIndex = getLeftChildIndex(index);
    int rightChildIndex = getRightChildIndex(index);
    int minIndex = index;
    if(leftChildIndex < heap.length && heap[leftChildIndex] < heap[minIndex]){
      minIndex = leftChildIndex;
    }
    if(rightChildIndex < heap.length && heap[rightChildIndex] < heap[minIndex]){
      minIndex = rightChildIndex;
    }
    if(minIndex != index){
      swap(index, minIndex);
      heapifyToDown(minIndex);
    }
  }
  insert(int value){
    heap.add(value);
    heapifyToUp(heap.length -1);
  }
  remove(){
    if(heap.isEmpty){
      return null;
    }
    if(heap.length == 1){
      return heap.removeLast();
    }
    int min = heap[0];
    heap[0] = heap.removeLast();
    heapifyToDown(0);
    return min;
  }
  heapSort(){
    List<int>sortedArray = [];
    while(heap.isNotEmpty){
      sortedArray.add(remove());
    }
    return sortedArray;
  }
  buildHeapFromArray(List<int> array){
    heap = array;
    int firstNonLeafIndex = (array.length -2) ~/ 2;
    for(int i = firstNonLeafIndex; i>= 0; i--){
      heapifyToDown(i);
    }
  }
}
void main(List<String> args) {
  MinHeap minHeap = MinHeap();
  minHeap.insert(8);
  minHeap.insert(9);
  minHeap.insert(4);
  minHeap.insert(1);
  print("your heap is : ${minHeap.heap}");
  print("removed element is: ${minHeap.remove()}");
  print("your heap is : ${minHeap.heap}");
  print("sorted heap is: ${minHeap.heapSort()}");
}