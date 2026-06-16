// Write a program that takes the command line arguments of types string, integer and
// decimal value. In the case of a string, its length should be displayed, for an integer
// value, it should be multiplied by 100, and for a decimal value, we need to take its
// power of 3.
import 'dart:io';

void main() {
  int marks;
  double random;
  print("Enter the string : ");
  String? name = stdin.readLineSync();
  print("Enter the integar ");
  marks = int.parse(stdin.readLineSync()!);
  print("Enter the Double ");
  random = double.parse(stdin.readLineSync()!);

  if (name != null && name.isNotEmpty) {
    print(name.length);
  }
  print(marks * 100);
  print(random * random * random);
}
