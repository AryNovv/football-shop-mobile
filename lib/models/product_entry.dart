
import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
  String id;
  int price;
  String name;
  String description;
  String category;
  String? thumbnail;
  DateTime createdAt;
  int productsViews;
  bool isFeatured;
  bool isProductHot;
  int userId;

  ProductEntry({
    required this.id,
    required this.price,
    required this.name,
    required this.description,
    required this.category,
    this.thumbnail,
    required this.createdAt,
    required this.productsViews,
    required this.isFeatured,
    required this.isProductHot,
    required this.userId,
  });

  factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
    id: json["id"],
    price: json["price"],
    name: json["name"],
    description: json["description"],
    category: json["category"],
    thumbnail: json["thumbnail"],
    createdAt: DateTime.parse(json["created_at"]),
    productsViews: json["products_views"],
    isFeatured: json["is_featured"],
    isProductHot: json["is_product_hot"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "price": price,
    "name": name,
    "description": description,
    "category": category,
    "thumbnail": thumbnail,
    "created_at": createdAt.toIso8601String(),
    "products_views": productsViews,
    "is_featured": isFeatured,
    "is_product_hot": isProductHot,
    "user_id": userId,
  };
}