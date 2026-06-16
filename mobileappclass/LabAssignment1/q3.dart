void main() {
  print(sum(424));
}

int sum(int digits) {
  int sum = 0;
  int n = digits.abs();
  while (n > 0) {
    sum += n % 10;
    n ~/= 10;
  }
  return sum;
}
