// *Simple Interest Calculation*
//    Write a program to calculate the simple interest using
//the formula SI = (P * R * T) / 100, where P is the principal,
// R is the rate of interest, and T is the time period.

import 'dart:io';

void main() {
  print("Enter the principal : ");
  int p = int.parse(stdin.readLineSync()!);
  print("Enter the Rate of interest :");
  int r = int.parse(stdin.readLineSync()!);
  print("Enter the time period : ");
  int t = int.parse(stdin.readLineSync()!);
  double Simpleinterest = (p * r * t) / 100;
  print("The interest calculated is ${Simpleinterest}");
}
