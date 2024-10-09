class ShoeModel {
  final String? id; 
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  ShoeModel({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }

  factory ShoeModel.fromMap(Map<String, dynamic> map) {
    return ShoeModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
      imageUrl: map['imageUrl'],
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ShoeModel &&
        other.name == name &&
        other.price == price &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode =>
      name.hashCode ^
      price.hashCode ^
      imageUrl.hashCode; 
}
