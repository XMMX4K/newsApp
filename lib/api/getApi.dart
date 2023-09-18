import 'package:dio/dio.dart';
import 'package:newsapp/models/newsModel.dart';

class NewsService {
  String baseUrl = 'https://newsapi.org/v2/everything';
  String apiKey = '70b7adf2f2c844d49be42662a16652e5';
  String q = 'south korea';
  final Dio dio;
  NewsService(this.dio);
  Future<List<newsModel>> getNews() async {
    try {
      Response response = await dio.get('$baseUrl?q=$q&apiKey=$apiKey');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<newsModel> articList = [];

      for (var article in articles) {
        newsModel art = newsModel.fromjson(article);
        articList.add(art);
      }
      return articList;
    } catch (e) {
      return [];
    }
  }
}
