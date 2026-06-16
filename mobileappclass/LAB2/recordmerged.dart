void main() {
  var record1 = {'name': 'Arslan', 'age': 21};
  var record2 = {'city': 'Jhelum', 'country': 'Pakistan'};
  var merged = {...record1, ...record2};
  print(merged);
}
