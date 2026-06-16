void main() {
  Set<int> numbers = {1, 2, 3, 4, 5, 6};
  numbers.add(12);
  numbers.remove(5);
  bool hasFour = numbers.contains(4);
  if (hasFour == true) {
    print("yes it contains the element");
  } else {
    print("Nope the element was not found");
  }
  Set<int> moreNumbers = {7, 9, 8};
  numbers.addAll(moreNumbers);
  print(numbers);
}