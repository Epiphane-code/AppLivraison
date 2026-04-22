class Boutique {
  final String userID;
  final String name;
  late String? description;
  late String? imageUrl;

  Boutique({
    required this.userID,
    required this.name,
    this.description,
    this.imageUrl, 
  });
}