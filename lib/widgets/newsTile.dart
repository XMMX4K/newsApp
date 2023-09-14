import 'package:flutter/material.dart';
import 'package:newsapp/widgets/newsContain.dart';

class newsTile extends StatelessWidget {
  const newsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return NewsContain();
    }, childCount: 10));
  }
}
