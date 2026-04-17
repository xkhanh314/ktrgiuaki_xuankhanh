class Guide {
  final int id;
  final String title;
  final String description;
  final String content;
  final String imageUrl;
  bool isFavorite;

  Guide({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
