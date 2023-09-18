import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/api/getApi.dart';
import 'package:newsapp/models/newsModel.dart';
import 'package:newsapp/widgets/NewsListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  bool isLoading = true;
  List<newsModel> newsListVIEEW = [];

  @override
  void initState() {
    getNEWSSS();

    super.initState();
  }

  Future<void> getNEWSSS() async {
    newsListVIEEW = await NewsService(Dio()).getNews();
    isLoading = false;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
            child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.4,
                child: Center(child: CircularProgressIndicator())))
        : NewsListView(aaa: newsListVIEEW);
  }
}
