// Write a program that takes the command line arguments of types string, integer and decimal value.
// In the case of a string, its length should be displayed, for an integer value,
// it should be multiplied by 100, and for a decimal value, we need to take its power of 3.

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  for (var item in args) {
    if (int.tryParse(item) != null) {
      var a = int.parse(item);
      print(a * 100);
    } else if (double.tryParse(item) != null) {
      var a = double.parse(item);
      print(pow(a, 3));
    } else {
      print(item.length);
    }
  }
}
