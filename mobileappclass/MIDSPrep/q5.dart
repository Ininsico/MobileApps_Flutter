// Define a list of records to store information about students. Each student record should
// contain the student’s name, age, and grade. Write a Dart program that prints the details of all
// students in the list.
void main(List<String> args) {
  var records = {
    (name: "arslan", age: 33, grade: 'A'),
    (name: 'Bilal', age: 42, grade: "B"),
  };
  for (var r in records) {
    print("Records : Name: ${r.name} , Age : ${r.age} , grade : ${r.grade}");
  }
}
