class Memo {
  final int id;
  final String title;
  final String body;
  final bool favorite;
  final DateTime createdAt;
  final DateTime updatedAt;

  Memo({
    required this.id,
    required this.title,
    required this.body,
    required this.favorite,
    required this.createdAt,
    required this.updatedAt,
  });
}
