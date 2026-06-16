import 'dart:io';

class Student {
  String name;
  int age;
  int marks;
  Student({required this.name, required this.age, required this.marks});
}

void main() {
  List<Student> student = [];
  student.add(Student(name: 'Arslan', age: 21, marks: 123));
  student.add(Student(name: 'Bilal', age: 20, marks: 2134));
  
  student
      .where(
        (student) =>
            student.age > 19 &&  // FIXED: was > 34 (no matches)
            student.marks >= 50 &&
            (student.name == 'Arslan' || student.name == 'Bilal'),
      )
      .forEach((student) {
        print(
          "Name: ${student.name}, Age: ${student.age}, Marks: ${student.marks}", // FIXED: "Nmae" typo
        );
      });
}