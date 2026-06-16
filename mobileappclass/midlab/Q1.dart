// Execute a Dart program that defines a class Person with fields name, age and cinic. Create a function that takes a Person object and uses a switch statement with object patterns to print different messages based on the person's age group:

// If the person is younger than 18, print "Minor".

// If the person is between 18 and 60, print "Adult".

// If the person is over 60, print "Senior".
import 'dart:io';

class Person {
  String name;
  int age;
  String cinic;
  Person({required this.name, required this.age, required this.cinic});
}

void printAgeGroup(Person person) {
  switch (person) {
    case Person(age: < 18):
      print("Minor");
      break;
    case Person(age: >= 18 && <= 60):
      print("Adult");
      break;
    case Person(age: > 60):
      print("Senior");
      break;
    default:
      print("Invalid age");
  }
}

void main() {
  Person arslan = Person(name: 'Arslan', age: 21, cinic: "337301-4819362-5");
  Person arslan1 = Person(name: 'Arslann', age: 245, cinic: "337301-4819362-5");
  print("${arslan.name} (Age: ${arslan.age}):");
  printAgeGroup(arslan);
  printAgeGroup(arslan1);
}
