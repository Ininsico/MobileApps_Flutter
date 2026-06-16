//   Question P4:
// *Find the Largest of Three Numbers*
//    Write a program that takes three numbers as input and outputs the largest number.

import 'dart:io';

void main() {
  List<int> numbers = [];
  print("Enter First digit");
  int first = int.parse(stdin.readLineSync()!);
  numbers.add(first);
  print("Enter Second digit");
  int second = int.parse(stdin.readLineSync()!);
  numbers.add(second);
  print("Enter Third digit");
  int third = int.parse(stdin.readLineSync()!);
  numbers.add(third);

  int largest = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  for (int i = 0; i < numbers.length; i++) {
    print("Number at index ${i}: ${numbers[i]}");
  }
  print("Largest number : ${largest}");
}
