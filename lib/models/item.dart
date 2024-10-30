class LostItem {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final bool isFound;

  LostItem({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    this.isFound = false,
  });
}
