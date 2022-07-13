class Product {
  int id;
  String title;
  double price;
  String? description;
  String? image;
  String? category;

  Product({
    required this.id,
    required this.title,
    required this.price,
    this.description,
    this.image,
    this.category,
  });

  factory Product.fromJson(Map<String, dynamic> data) {
    return Product(
      id: data['id'],
      title: data['title'],
      price: double.parse(data['price'].toString()),
      description: data['description'],
      image: data['image'],
      category: data['category'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    };
  }
}
