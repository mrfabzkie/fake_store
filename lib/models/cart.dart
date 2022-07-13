class Cart {
  int id;
  int userId;
  DateTime date;
  List<dynamic> products;

  Cart({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
  });

  factory Cart.fromJson(Map<String, dynamic> data) {
    return Cart(
      id: data['id'],
      userId: data['userId'],
      date: DateTime.parse(data['date']),
      products: data['products'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'date': date,
      'products': products,
    };
  }
}
