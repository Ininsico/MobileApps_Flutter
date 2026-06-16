// *Multiplication Table*
//    Write a program that generates the multiplication table for a given number.
import 'dart:io';

void main() {
  print("Enter the number you want to generate the multipliction table for");
  int a = int.parse(stdin.readLineSync()!);

  print("");
  for (int i = 0; i < 10; i++) {
    print(" ${a} x ${i}  ==  ${a * i}");
  }
}
