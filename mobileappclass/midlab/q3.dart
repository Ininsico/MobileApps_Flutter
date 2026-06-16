import 'dart:io';

class Person {
  String name;
  int age;
  String cinic;
  
  Person({required this.name, required this.age, required this.cinic});
}

int printAgeGroup(Person person) {
  String ageGroup;
  
  if (person.age < 18) {
    ageGroup = "minor";
  } else if (person.age >= 18 && person.age <= 60) {
    ageGroup = "adult";
  } else if (person.age > 60) {
    ageGroup = "senior";
  } else {
    ageGroup = "invalid";
  }
  
  switch (ageGroup) {
    case "minor":
      return 1;
    case "adult":
      return 2;
    case "senior":
      return 3;
    default:
      print('Age Group: Invalid age');
      return 0;
  }
}

void main(){
  List<Person> people = [];
  print('Enter name: ');
  String? name = stdin.readLineSync();
  print('Enter age: ');
  int? age = int.tryParse(stdin.readLineSync()!);
  
  print('Enter CNIC: ');
  String? cinic = stdin.readLineSync();
  
  people.add(Person(name: name!, age: age!, cinic: cinic!));
  
  int code = printAgeGroup(people[0]);
  
  switch(code) {
    case 1:
      print('minor');
      break;
    case 2:
      print('adult');
      break;
    case 3:
      print('senior');
      break;
  }
}