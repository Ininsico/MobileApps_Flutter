import 'dart:io';

class Student {
  String name;
  int age;
  int marks;
  Student({required this.name, required this.age, required this.marks});
}

void main() {
  List<Student> myObject = [];
  myObject.add(Student(name: " Arslan", age: 25, marks: 200));
  myObject.add(Student(name: "Bilal", age: 20, marks: 3));
  myObject.where(
    (student) =>
        (student.age > 25 &&
        student.marks >= 34 &&
        (student.name == 'Arslan'))).forEach((student) {
          print("OK");
        }
  );
}
