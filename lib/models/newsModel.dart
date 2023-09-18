// ignore_for_file: public_member_api_docs, sort_constructors_first
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
        subtitle: jsondata['description'],
        image: jsondata['urlToImage']);
  }

  @override
  String toString() {
    return ' title : $title , subtitle : $subtitle , image : $image';
  }
}
