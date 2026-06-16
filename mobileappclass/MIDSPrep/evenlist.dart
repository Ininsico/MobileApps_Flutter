void main() {
  List<int> n = [for (int i = 0; i < 10; i++) i];
  List<int> evenno = [
    for (var r in n)
      if (r % 2 == 0) r,
  ];
  print(evenno);
}
