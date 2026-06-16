void main(List<String> args) {
  var record = [
    (name: "test1", age: 3),
    (name: "test2", age: 24),
    (name: "test3", age: 34),
    (name: "test4", age: 10),
    (name: "test5", age: 5),
    (name: "test1", age: 30),  
    (name: "test2", age: 1),   
    (name: "test3", age: 20),  
  ];
  
  print("PreSort");
  print(record);
  
  record.sort((a, b) {
    int nameComparison = a.name.compareTo(b.name);
    if (nameComparison == 0) {
      return a.age.compareTo(b.age);
    }
    return nameComparison;
  });
  
  print("\nPostSort");
  print(record);
}