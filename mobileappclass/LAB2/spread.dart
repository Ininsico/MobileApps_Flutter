void main() {
  Set <int> A = {1,3,4,5,6,7};
  Set <int> B = {3,41,4,2,55,6,7,5};
  Set <int> spread = {...A,...B};
  print(spread);
}
