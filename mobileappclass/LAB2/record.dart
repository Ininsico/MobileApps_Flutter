import 'dart:math';

void main() {
  List<int> numebers = List.generate(30, (_) => Random().nextInt(100) + 1);
  print(numebers);
  List<int> evennumbers = numebers.where((num) => num % 2 == 0).toList();
  List<int> oddnumbers = numebers.where((num) => num % 2 != 0).toList();
  print(evennumbers);
  print(oddnumbers);
}
