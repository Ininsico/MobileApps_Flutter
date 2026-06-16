// // Write a Dart program to perform the following operations on a map that stores student
// names as keys and their grades as values:
// 13
// - Add a new key-value pair.
// - Update the grade of an existing student.
// - Remove a student from the map.
// - Print all students and their grades.

void main() {
  Map<String, int> students = {
    'Ali': 85,
    'Bilal': 72,
    'Sara': 90,
    'Zara': 68
  };
  
  print("Original map:");
  students.forEach((name, grade) => print("$name: $grade"));
  
  // Add a new key-value pair
  students['Arslan'] = 88;
  print("\nAfter adding Arslan:");
  students.forEach((name, grade) => print("$name: $grade"));
  
  // Update the grade of an existing student
  students['Ali'] = 95;
  print("\nAfter updating Ali's grade:");
  students.forEach((name, grade) => print("$name: $grade"));
  
  // Remove a student from the map
  students.remove('Zara');
  print("\nAfter removing Zara:");
  students.forEach((name, grade) => print("$name: $grade"));
  
  // Print all students and their grades
  print("\nFinal list of all students:");
  students.forEach((name, grade) => print("$name: $grade"));
}