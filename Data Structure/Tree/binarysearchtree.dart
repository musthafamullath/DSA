import 'dart:io';

class Node<T>{
  T? value;
  Node? left;
  Node? right;
  Node({this.value});
}

class BinarySearchTree{
  Node? root;
  isEmpty(){
    return root == null;
  }
  insert(value){
    Node newNode = Node(value: value);
    if(isEmpty()){
      root = newNode;
    }else{
      insertionNode(root, newNode);
    }
  }



  insertionNode(Node? root, Node? newNode){
    if(newNode!.value < root!.value){
      if(root.left == null){
        root.left = newNode;
      }else{
        insertionNode(root.left, newNode);
      }
    }else{
      if(root.right == null){
        root.right = newNode;
      }else{
        insertionNode(root.right, newNode);
      }
    }
  }



  search(Node? root, dynamic value){
    if(root == null){
      return 'value did not find';
    }else{
      if(root.value == value){
        return 'value found';
      }else if(value < root.value){
        return search(root, value);
      }else{
        return search(root, value);
      }
    }
  }

  //DSF(depth first search from BST)
  preOrder(Node? root){
    if(root != null){
      stdout.write('${root.value}\t');
      preOrder(root.left);
      preOrder(root.right);
    }
  }
  inOrder(Node? root){
    if(root != null){
      inOrder(root.left);
      stdout.write('${root.value}\t');
      inOrder(root.right);
    }
  }
  postOrder(Node? root){
    if(root != null){
      postOrder(root.left);
      postOrder(root.right);
      stdout.write('${root.value}\t');
    }
  }




  //BFS(Breadth first search form BST)
  levelOrder(){
    List<Node> queue = [];
    queue.add(root!);
    while(queue.isNotEmpty){
      Node? current = queue.removeAt(0);
      stdout.write('${current.value}\t');
      if(current.left != null){
        queue.add(current.left!);
      }
      if(current.right != null){
        queue.add(current.right!);
      }
    }
  }



  min(Node? root){
    if(root!.left == null){
      return root.value;
    }else{
      return min(root.left);
    }
  }


  max(Node? root){
    if(root!.right == null){
      return root.value;
    }else{
      return max(root.right);
    }
  }



  delete(dynamic value){
    root = deleteNode(root, value);
  }
  deleteNode(Node? root, dynamic value){
      if(root == null){
        return root;
      }
      if(value < root.value){
        root.left = deleteNode(root.left, value);
      }else if(value > root.value){
        root.right = deleteNode(root.right, value);
      }else{
        if(root.left == null && root.right == null){
          return null;
        }
        if(root.left == null){
          return root.right;
        }else if(root.right == null){
          return root.left;
        }
        root.value = min(root.right);
        root.right = deleteNode(root.right, root.value);
      }
    return root;
  }



    // ========== Valid Binary Search Tree ==========


  bool isValidBST(Node? root, dynamic minValue, dynamic maxValue) {
    if (root == null) {
      return true;
    }
    if (root.value <= minValue || root.value >= maxValue) {
      return false;
    }
    return isValidBST(root.left, minValue, root.value) &&
        isValidBST(root.right, root.value, maxValue);
  }



  int maxDepth(Node? root) {
    if (root == null) {
      return 0;
    }
    int left = maxDepth(root.left);
    int right = maxDepth(root.right);

    return left > right ? left + 1 : right + 1;
  }



  int minDepth(Node? root) {
    if (root == null) {
      return 0;
    }
    int left = minDepth(root.left);
    int right = minDepth(root.right);

    return left > right ? left + 1 : right + 1;
  }

  closest(num value){
    int closest = root!.value;
    Node? current = root;
    while(current != null){
      if((current.value - value).abs() < 
      (closest - value).abs()){
        closest = current.value;
      }
      if(value < current.value){
        current = current.left;
      }else if (value > current.value){
        current = current.right;
      }else {
        return current.value;
      }
    }
    return closest;
  }
}

void main(List<String> args) {
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(61);
  bst.insert(21);
  bst.insert(13);
  bst.insert(45);
  bst.insert(35);
  bst.insert(02);
  bst.insert(06);
  // stdout.write('Preorder: ');
  // bst.preOrder(bst.root);
  // print('');
  // stdout.write('inorder: ');
  // bst.inOrder(bst.root);
  // print('');
  // stdout.write('postorder: ');
  // bst.postOrder(bst.root);
  // print('');
  // stdout.write('levelorder: ');
  // bst.levelOrder( );
  // print(' ');
  // print('smallest node :${bst.min(bst.root)}');
  // print('largest node :${bst.max(bst.root)}');
  // bst.delete(45);
  // stdout.write('levelorder: ');
  // bst.levelOrder( );
  // print(' ');
  //  print(bst.isValidBST(bst.root, double.negativeInfinity, double.infinity));
  //  print(bst.minDepth(bst.root));
  //  print(bst.maxDepth(bst.root));
  print(bst.closest(5.9));
}