// Write a Dart program that creates a **set** of favorite colors. The set should initially contain
// `'Blue'`, `'Green'`, and `'Red'`. Use the **collection `if`** to include `'Purple'` only if a boolean
// variable `likesPurple` is `true`. Print the final set of favorite colors.
void main() {
  bool likespurple = true;
  Set<String> n = {"Blue", "Green", 'Red',if(likespurple)'purple'};
  print(n);
}
