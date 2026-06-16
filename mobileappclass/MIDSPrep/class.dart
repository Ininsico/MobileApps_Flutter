import 'dart:io';

class Person {
  int id;
  String name;
  int age;
  
  Person({required this.id, required this.name, required this.age});
  
  void display() {
    print("ID: $id, Name: $name, Age: $age");
  }
}

class Student extends Person {
  double cgpa;
  String semester;
  DateTime admissionDate;
  
  Student({
    required int id,
    required String name,
    required int age,
    required this.cgpa,
    required this.semester,
    required this.admissionDate,
  }) : super(id: id, name: name, age: age);
  
  @override
  void display() {
    super.display();
    print("CGPA: $cgpa, Semester: $semester, Admission Date: ${admissionDate.toLocal().toString().split(' ')[0]}");
  }
}

class Teacher extends Person {
  double salary;
  String designation;
  String department;
  DateTime joiningDate;
  
  Teacher({
    required int id,
    required String name,
    required int age,
    required this.salary,
    required this.designation,
    required this.department,
    required this.joiningDate,
  }) : super(id: id, name: name, age: age);
  
  @override
  void display() {
    super.display();
    print("Salary: $salary, Designation: $designation, Department: $department, Joining Date: ${joiningDate.toLocal().toString().split(' ')[0]}");
  }
}

void main() {
  List<Person> people = [];
  
  // Populate Students
  people.add(Student(
    id: 1,
    name: "Ali Khan",
    age: 20,
    cgpa: 3.8,
    semester: "FA23",
    admissionDate: DateTime(2023, 9, 1),
  ));
  
  people.add(Student(
    id: 2,
    name: "Sara Ahmed",
    age: 21,
    cgpa: 3.9,
    semester: "SP22",
    admissionDate: DateTime(2022, 2, 15),
  ));
  
  people.add(Student(
    id: 3,
    name: "Bilal Hassan",
    age: 22,
    cgpa: 3.5,
    semester: "FA21",
    admissionDate: DateTime(2021, 8, 20),
  ));
  
  // Populate Teachers
  people.add(Teacher(
    id: 101,
    name: "Dr. Fatima Raza",
    age: 45,
    salary: 150000,
    designation: "Professor",
    department: "Computer Science",
    joiningDate: DateTime(2015, 3, 10),
  ));
  
  people.add(Teacher(
    id: 102,
    name: "Mr. Usman Chaudhry",
    age: 38,
    salary: 120000,
    designation: "Assistant Professor",
    department: "Mathematics",
    joiningDate: DateTime(2018, 7, 22),
  ));
  
  people.add(Teacher(
    id: 103,
    name: "Ms. Ayesha Malik",
    age: 35,
    salary: 100000,
    designation: "Lecturer",
    department: "Physics",
    joiningDate: DateTime(2020, 1, 15),
  ));
  
  // Search by ID
  stdout.write("Enter ID to search: ");
  int searchId = int.parse(stdin.readLineSync()!);
  
  bool found = false;
  for (var person in people) {
    if (person.id == searchId) {
      print("\n--- Record Found ---");
      person.display();
      found = true;
      break;
    }
  }
  
  if (!found) {
    print("No record found with ID: $searchId");
  }
  
  // Print students with CGPA > 3.7
  print("\n--- Students with CGPA > 3.7 ---");
  for (var person in people) {
    if (person is Student && person.cgpa > 3.7) {
      person.display();
      print("");
    }
  }
}