class TrieNode{
  late Map<String,TrieNode> children;
  late bool isWordEnd;
  TrieNode(){
    children = {};
    isWordEnd = false;
  }
}
class Trie{
  late TrieNode root;
  Trie(){
    root = TrieNode();
  }
  void insert(String word){
    TrieNode? currentNode = root;
    for(int i = 0; i < word.length; i++){
      String charToInsert = word[i];
      if(!currentNode!.children.containsKey(charToInsert)){
        currentNode.children[charToInsert] = TrieNode();
      }
      currentNode = currentNode.children[charToInsert];
    }
    currentNode!.isWordEnd = true;
  }
  bool contains(String word){
    TrieNode? currentNode = root;
    for(int i = 0; i < word.length; i ++){
      String charTofind = word[i];
      if(!currentNode!.children.containsKey(charTofind)){
        return false;
      }
      currentNode = currentNode.children[charTofind];
    }
    return currentNode!.isWordEnd;
  }
  bool startsWithPrefix(String prefix){
    TrieNode? currentNode = root;
    for(int i = 0; i < prefix.length; i++){
      String charTofind = prefix[i];
      if(!currentNode!.children.containsKey(charTofind)){
        return false;
      }
      currentNode = currentNode.children[charTofind];
    }
    return true;
  }
  List<String> getWordWithPrefix(String prefix){
    TrieNode? currentNode = root;
    for(int i = 0; i < prefix.length; i++){
      String charTofind = prefix[i];
      if(!currentNode!.children.containsKey(charTofind)){
        return [];
      }
      currentNode = currentNode.children[charTofind];
    }
    List<String> words = [];
    collectWordWithPrefix(currentNode, prefix, words);
    return words;
  }
  void collectWordWithPrefix(
    TrieNode? node, String currentPrefix, List<String> words
  ){
    if(node!.isWordEnd){
      words.add(currentPrefix);
    }
    for(String char in node.children.keys){
      collectWordWithPrefix(node.children[char], currentPrefix + char, words);
    }
  }
}
void main(List<String> args) {
  Trie trie = Trie();
  trie.insert('shaheen');
  trie.insert('shaheema');
  trie.insert('sakir');
  trie.insert('sahir');
  trie.insert('son');
  trie.insert('brother');
  trie.insert('brototype');
  trie.insert('c');
  print(trie.contains("c"));
  print(trie.startsWithPrefix("bro"));
  print(trie.getWordWithPrefix('s'));
  print(trie.getWordWithPrefix('sa'));
  print(trie.getWordWithPrefix('sha'));
}