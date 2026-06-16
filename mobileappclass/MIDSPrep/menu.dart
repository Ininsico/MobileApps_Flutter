import "dart:io";

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
  
  double num1 = getNumber("Enter the first Number: ");
  
  String? op = getOperator(operations);
  
  double num2 = getNumber("Enter the second Number: ");
  
  if (op == "/" && num2 == 0) {
    print("Can not divide by 0");
    return;
  }
  
  double result = operations[op]!(num1, num2);
  print("Result: $num1 $op $num2 = $result");
}

double getNumber(String prompt) {
  while (true) {
    stdout.write(prompt);
    try {
      return double.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Invalid input. Please enter a valid number.");
    }
  }
}

String? getOperator(Map<String, MathOperation> operations) {
  while (true) {
    stdout.write("Enter the operation (+, -, *, /): ");
    String? op = stdin.readLineSync();
    if (operations.containsKey(op)) {
      return op;
    } else {
      print("Invalid operation. Please enter +, -, *, or /");
    }
  }
}