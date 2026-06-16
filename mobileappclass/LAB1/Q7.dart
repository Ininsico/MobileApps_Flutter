// *Check for Leap Year*
//    Write a program that checks if a given year is a leap year or not.

import 'dart:io';

void main() {
  print("Enter your choice");
  print("1 For checking current Year");
  print("2 For checking custom Year");
  int a = int.parse(stdin.readLineSync()!);
  
  switch (a) {
    case 1:
      DateTime now = DateTime.now();
      int currentYear = now.year;
      
      if ((currentYear % 4 == 0 && currentYear % 100 != 0) || (currentYear % 400 == 0)) {
        print("The year $currentYear is a Leap Year");
      } else {
        print("The year $currentYear is not a Leap Year");
      }
      break;
      
    case 2:
      print("Enter your custom year");
      int b = int.parse(stdin.readLineSync()!);
      
      if ((b % 4 == 0 && b % 100 != 0) || (b % 400 == 0)) {
        print("The year $b is a Leap Year");
      } else {
        print("The year $b is not a Leap Year");
      }
      break;
      
    default:
      print("Invalid choice! Please enter 1 or 2");
  }
}