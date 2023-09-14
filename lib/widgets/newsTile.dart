import 'package:flutter/material.dart';
import 'package:newsapp/widgets/newsContain.dart';

class newsTile extends StatelessWidget {
  const newsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return NewsContain();
          }),
    );
  }
}
