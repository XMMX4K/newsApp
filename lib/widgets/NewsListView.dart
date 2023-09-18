import 'package:flutter/material.dart';
import 'package:newsapp/models/newsModel.dart';
import 'package:newsapp/widgets/newsContain.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.aaa,
  });

  final List<newsModel> aaa;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return NewsContain(artic: aaa[index]);
    }, childCount: aaa.length));
  }
}
