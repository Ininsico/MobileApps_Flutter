// *Find the Largest of Three Numbers*
//  Write a program that takes three numbers as input and outputs the largest number
import 'dart:io';

void main() {
  print("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);
  
  print("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);
  
  print("Enter third number: ");
  double num3 = double.parse(stdin.readLineSync()!);
  
  double bigger = num1 > num2 ? num1 : num2;
  double largest = bigger > num3 ? bigger : num3;
  
  print("Largest number: $largest");
}