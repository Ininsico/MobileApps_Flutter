void main() {
  bool applyDiscount = true;
  
  Map<String, dynamic> products = {
    "Laptop": 1200,
    "Mouse": 25,
    "Keyboard": 75,
    "Monitor": 300,
    if (applyDiscount) "Discount": () {
      double total = 1200 + 25 + 75 + 300;
      return total * 0.10;
    }()
  };
  
  if (applyDiscount) {
    double totalBeforeDiscount = 1200 + 25 + 75 + 300;
    print("Products: ${products}");
    print("Total before discount: \$${totalBeforeDiscount}");
    print("Discount applied: 10% = \$${products["Discount"]}");
    print("Final total: \$${totalBeforeDiscount - products["Discount"]}");
  } else {
    print("Products: ${products}");
    print("No discount applied");
  }
}