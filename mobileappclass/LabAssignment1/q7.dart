void main() {
  displayStudentInfo();
  sortAndPrintList([42, 17, 8, 23, 15, 4]);
  displayUserRecord();
}

void displayStudentInfo() {
  Map<String, int> students = {
    "Ali": 20,
    "Sara": 22,
    "Ahmed": 19,
    "Fatima": 21,
  };
  
  students.forEach((name, age) {
    print("Student: $name, Age: $age");
  });
  print(""); 
}

void sortAndPrintList(List<int> numbers) {
  List<int> sortedList = List.from(numbers);
  sortedList.sort();
  print("Original list: $numbers");
  print("Sorted list: $sortedList");
  print(""); 
}

void displayUserRecord() {
  (String name, String grade) user = ("Arslan", "A+");
  print("User Name: ${user.$1}, Grade: ${user.$2}");
}