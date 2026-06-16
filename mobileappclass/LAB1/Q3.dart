// Question P3:
// *Even or Odd*
//    Write a program that checks if a given number is even or odd.

import 'dart:io';

void main() {
  print("Enter the number to check if even or odd");
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print("Number is even");
  } else {
    print("Numebr is odd");
  }
}
