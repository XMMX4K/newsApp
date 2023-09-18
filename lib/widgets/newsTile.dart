import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:newsapp/api/getApi.dart';
import 'package:newsapp/models/newsModel.dart';
import 'package:newsapp/widgets/newsContain.dart';

class newsTile extends StatefulWidget {
  const newsTile({
    super.key,
  });

  @override
  State<newsTile> createState() => _newsTileState();
}

class _newsTileState extends State<newsTile> {
  bool isLoading = true;
  List<newsModel> aaa = [];

  @override
  void initState() {
    getNEWSSS();

    super.initState();
  }

  Future<void> getNEWSSS() async {
    aaa = await NewsService(Dio()).getNews();
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
        : SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
            return NewsContain(artic: aaa[index]);
          }, childCount: aaa.length));
  }
}
