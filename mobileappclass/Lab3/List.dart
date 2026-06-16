// Initialize a list of records, consisting of name and age values. Sort list with respect to name and
// then with age.
void main(List<String> args) {
  var record = [
    (name: 'Daddy', age: 62),
    (name: 'Mama', age: 52),
    (name: 'Arslan', age: 26), 
    (name: 'Bilal', age: 19),
    (name: 'Jalal', age: 18),
  ];
  print("Pre-Sort");
  print(record);
  // record.sort((a, b){
  //   var result = a.name.compareTo(b.name);
  //   if (result == 0) {
  //     return a.age.compareTo(b.age);
  //   } else {
  //     return result;
  //   }
  // });

  record.sort((a, b) => b.name.compareTo(a.name) );
  print(record);
}
