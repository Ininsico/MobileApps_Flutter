// Question P10:
// *Count Digits in a Number*
//     Write a program that counts the number of digits in an integer entered by the user.
import 'dart:io';
void main() {
  print('Enter an integer: ');
  int number = int.parse(stdin.readLineSync()!);
  int digitCount = number.abs().toString().length;
  print('The number of digits in $number is: $digitCount');
}
