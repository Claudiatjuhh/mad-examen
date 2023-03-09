class Article {
  final String id;
  final String title;
  final String date;
  final String imageUrl;
  final String articleText;
  bool isSaved;

  Article({
    required this.id,
    required this.title,
    required this.date,
    required this.imageUrl,
    required this.articleText,
    this.isSaved = false,
  });
}