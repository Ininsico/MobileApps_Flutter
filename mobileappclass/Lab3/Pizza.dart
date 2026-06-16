//  Write a Dart program that simulates a restaurant menu. The program should display the
// following options to the user:
//  1. Pizza
//  2. Burger
//  3. Pasta
//  4. Salad

import 'dart:io';

void main() {
  print("RMS Assignment");
  print("Choose from the option below");
  print("1:Pizza");
  print("2:Burger");
  print("3:Pastsa");
  print("4:Salad");
  int? choice = int.tryParse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      printe("Pizza");
    case 2:
      printe('burger');
    case 3:
      printe('pasta');
    case 4:
      printe('salad');
    default:
      print("invalid choice");
  }
}

void printe(String name) {
  print("Successfully orderd ${name}");
}
