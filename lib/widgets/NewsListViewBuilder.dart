import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/api/getApi.dart';
import 'package:newsapp/widgets/NewsListView.dart';

class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsService(Dio()).getNews(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(aaa: snapshot.data!);
          } else {
            return SizedBox(
                height: MediaQuery.of(context).size.height / 1.4,
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
