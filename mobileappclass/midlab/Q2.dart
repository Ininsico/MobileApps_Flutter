import 'dart:io';

class Person {
  String name;
  int age;
  String cinic;
  
  Person({required this.name, required this.age, required this.cinic});
}

void main() {
  List<Person> people = [];
  
  while (true) {
    print('1. Add a new person');
    print('2. Display all persons and their age groups');
    print('3. Exit');
    print('Enter your choice: ');
    
    String? choice = stdin.readLineSync();
    
    switch (choice) {
      case '1':
        print('Enter name: ');
        String? name = stdin.readLineSync();
        
        print('Enter age: ');
        int? age = int.tryParse(stdin.readLineSync() ?? '');
        
        print('Enter CNIC: ');
        String? cinic = stdin.readLineSync();
        
        if (name != null && age != null && cinic != null && name.isNotEmpty) {
          people.add(Person(name: name, age: age, cinic: cinic));
          print('Person added successfully!');
        } else {
          print('Invalid input! Please try again.');
        }
        break;
        
      case '2':
        if (people.isEmpty) {
          print('No persons added yet!');
        } else {
          for (var i = 0; i < people.length; i++) {
            print('\nPerson ${i + 1}:');
            print('Name: ${people[i].name}');
            print('Age: ${people[i].age}');
            print('CNIC: ${people[i].cinic}');
            printAgeGroup(people[i]);
          }
        }
        break;
        
      case '3':
        print('Exiting program');
        return;
        
      default:
        print('Invalid choice! Please enter 1, 2, or 3.');
    }
  }
}

void printAgeGroup(Person person) {
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
      print('Age Group: Minor (Under 18)');
      break;
    case "adult":
      print('Age Group: Adult (18-60)');
      break;
    case "senior":
      print('Age Group: Senior (Over 60)');
      break;
    default:
      print('Age Group: Invalid age');
  }
}