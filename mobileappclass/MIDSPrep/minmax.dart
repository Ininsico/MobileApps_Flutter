import 'dart:io';

void main(List<String> args) {
  List<int> numbers = [4, 5, 6, 2, 1, 5];
  (int min, int max) result = minmax(numbers);
  print("Minimum : ${result.$1}"); 
  print("Maximum : ${result.$2}");  
}

(int min, int max) minmax(List<int> numbers) {
  int min = numbers[0];
  int max = numbers[0];
  for (int num in numbers) {
    if (num < min) {
      min = num;
    }
    if (num > max) {
      max = num;
    }
  }
  return (min, max);
}