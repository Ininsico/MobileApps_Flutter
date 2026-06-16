void main() {
  Set<int> setA = {1, 2, 3, 4, 5};
  Set<int> setB = {4, 5, 6, 7, 8};
  
  Set<int> unionSet = setA.union(setB);
  
  print(unionSet);
}