class Student {
  String name;
  int age;
  int marks;
  Student({required this.name, required this.age, required this.marks});
}

void main() {
  List<Student> myObjects = [];
  
  myObjects.add(Student(name: 'Alice', age: 25, marks: 55));
  myObjects.add(Student(name: 'Bob', age: 30, marks: 50));
  myObjects.add(Student(name: 'Alice', age: 27, marks: 40));
  myObjects.add(Student(name: 'Charlie', age: 22, marks: 45));
  
  myObjects.where((student) => 
    student.age > 25 && 
    student.marks >= 50 && 
    (student.name == 'Alice' || student.name == 'Bob'),  
  ).forEach((student) {
    print("Name: ${student.name}, Age: ${student.age}, Marks: ${student.marks}");
  });
}