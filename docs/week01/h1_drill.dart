class MenuItem {
  final String name;
  final double price;
  final double? discountPercent;

  MenuItem({
    required this.name,
    required this.price,
    this.discountPercent,
  });

  double finalPrice() {
    final currentDiscount = discountPercent ?? 0.0;
    return price - (price * (currentDiscount / 100));
  }
}

void main() {
  List<MenuItem> menu = [
    MenuItem(name: 'Nasi Goreng', price: 20000, discountPercent: 10),
    MenuItem(name: 'Es Teh Manis', price: 5000),
    MenuItem(name: 'Ayam Goreng', price: 18000, discountPercent: 5),
    MenuItem(name: 'Tempe Mendoan', price: 12000),
  ];

  List<String> allNames = menu.map((item) => item.name).toList();
  List<MenuItem> itemsUnder15k = menu.where((item) => item.finalPrice() < 15000).toList();
  double totalPrice = menu.fold(0.0, (sum, item) => sum + item.finalPrice());

  print('Semua Nama: $allNames');
  print('Menu di bawah 15k: ${itemsUnder15k.map((i) => i.name).toList()}');
  print('Total Harga: Rp $totalPrice');
}