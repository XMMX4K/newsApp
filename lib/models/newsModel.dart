class newsModel {
  String title;
  String? subtitle;
  String? image;
  newsModel({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  factory newsModel.fromjson(jsondata) {
    return newsModel(
        title: jsondata['title'],
        subtitle: jsondata['author'],
        image: jsondata['url']);
  }
}
