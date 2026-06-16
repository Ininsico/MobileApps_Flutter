import 'dart:io';

void main() {
  int choice;
  
  do {
    print("Enter a POSITIVE integer:");
    choice = int.parse(stdin.readLineSync()!);
    
    if (choice <= 0) {
      print("The integer must be positive");
    }
  } while (choice <= 0);
  
  func(choice);
}

void func(int choice) {
  if (choice % 2 == 0) {
    print("The number $choice is Even");
  } else {
    print("The number $choice is Odd");
  }
}