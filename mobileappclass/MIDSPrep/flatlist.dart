List<int> flattenList(List<List<int>> nestedList) {
  return [for (var list in nestedList) ...list];
}

void main() {
  List<List<int>> nestedList = [
    [1, 2],
    [3, 4],
    [5, 6],
  ];
  List<int> flatList = flattenList(nestedList);
  print(flatList);
}
