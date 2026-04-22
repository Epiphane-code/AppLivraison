class Article {
  final int articleID;
  final String articlename;
  final String category;
  late String description;
  final String imageUrl;
  late double price;
  late int stock;
  late int nombrecommandeminimum;

  Article({
    required this.articleID,
    required this.articlename,
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.stock,
    required this.nombrecommandeminimum,
  });

  static Article articleFromJSON(Map<String, dynamic> json) {
    return Article(
      articleID: json['articleID'],
      articlename: json['articlename'],
      category: json['category'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      price: json['price'].toDouble(),
      stock: json['stock'],
      nombrecommandeminimum: json['nombrecommandeminimum'],
    );
  }

  static Map<String, dynamic> articleToJSON(Article article) {
    return {
      'articleID': article.articleID,
      'articlename': article.articlename,
      'category': article.category,
      'description': article.description,
      'imageUrl': article.imageUrl,
      'price': article.price,
      'stock': article.stock,
      'nombrecommandeminimum': article.nombrecommandeminimum,
    };
  }

}