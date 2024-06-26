class Product {
  final String title;
  final String description;
  final double price;
  final double rating;
  final String brand;
  final String category;
  final String thumbnail;
  final List<String> images;

  Product(
      {required this.title,
      required this.description,
      required this.price,
      required this.rating,
      required this.brand,
      required this.category,
      required this.thumbnail,
      required this.images
      });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      description: json['description'],
      price:json['price'] * 1.0,
      rating:json['rating'] * 1.0,
      brand:json['brand'],
      category:json['category'],
      thumbnail: json['thumbnail'],
      images: List<String>.from((json['images'] as List)),
    );
  }
}
