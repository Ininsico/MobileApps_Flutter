//Create a record that stores a person's firstName, lastName, and age. Print each field individually
import 'dart:io';

void main(List<String> args) {
  print("Enter your first name");
  String? name = stdin.readLineSync();
  print("Enter your last name");
  String? lastname = stdin.readLineSync();
  print("Enter your age");
  int? age = int.parse(stdin.readLineSync()!);

  var record = (name: name, lastname: lastname, age: age);
  print(record);
}
