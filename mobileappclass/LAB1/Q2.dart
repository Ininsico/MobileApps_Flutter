// Simple Arithmetic Operations*
//    Write a program that takes two numbers as input and outputs their sum, difference, product, and quotient.

import 'dart:io';

void main() {
  print("Enter First Number");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter Second Number");
  double num2 = double.parse(stdin.readLineSync()!);
  double sum = num1 + num2;
  double diff = num1 - num2;
  double product = num1 * num2;
  double quoitent = num1 / num2;
  print("Sum : ${sum}");
  print("Difference : ${diff}");
  print("Product : ${product}");
  print("Quotient: ${quoitent}");
}
