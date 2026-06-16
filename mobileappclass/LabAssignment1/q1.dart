import 'dart:io';

void main() {
  print("Enter first number: ");
  int first = int.parse(stdin.readLineSync()!);

  print("Enter Second number: ");
  int second = int.parse(stdin.readLineSync()!);

  print("Choose Operation to perform");
  print("1: +");
  print("2: -");
  print("3: *");
  print("4: /");
  int choice = int.parse(stdin.readLineSync()!);
  
  funct(first, second, choice);
}

void funct(int first, int second, int choice) {
  double result;
  String operation;
  
  switch (choice) {
    case 1:
      result = (first + second).toDouble();
      operation = "+";
      break;
    case 2:
      result = (first - second).toDouble();
      operation = "-";
      break;
    case 3:
      result = (first * second).toDouble();
      operation = "*";
      break;
    case 4:
      if (second != 0) {
        result = first / second;
        operation = "/";
      } else {
        print("Error: Cannot divide by zero!");
        return;
      }
      break;
    default:
      print("Invalid entry");
      return;
  }
  
  print("$first $operation $second = $result");
}