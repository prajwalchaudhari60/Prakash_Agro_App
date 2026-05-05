class Product {
  String id;
  String name;
  double price;
  String image;
  String category;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.category,
  });

  factory Product.fromFirestore(doc) {
    var data = doc.data();

    return Product(
      id: doc.id,
      name: data['name'],
      price: data['price'].toDouble(),
      image: data['image'],
      category: data['category'],
    );
  }
}