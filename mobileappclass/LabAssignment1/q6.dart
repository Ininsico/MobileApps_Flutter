import 'dart:io';

typedef MathOperation = double Function(double a, double b);

double add(double a, double b) => a + b;
double subtract(double a, double b) => a - b;
double multiply(double a, double b) => a * b;
double divide(double a, double b) => a / b;

void main() {
  Map<String, MathOperation> operations = {
    "+": add,
    "-": subtract,
    "*": multiply,
    "/": divide,
  };
  
  print("Calculator");
  stdout.write("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter operator (+, -, *, /): ");
  String op = stdin.readLineSync()!;
  stdout.write("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);
  if (operations.containsKey(op)) {
    if (op == "/" && num2 == 0) {
      print("Error: Cannot divide by zero");
    } else {
      double result = operations[op]!(num1, num2);
      print("Result: $num1 $op $num2 = $result");
    }
  } else {
    print("Invalid operator");
  }
}