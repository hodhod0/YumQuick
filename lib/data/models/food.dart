class Food {
  const Food({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.categoryId,
    this.rating = 5.0,
  });

  final String id;
  final String name;
  final String description;
  final double price;
  final String categoryId;
  final double rating;
}
