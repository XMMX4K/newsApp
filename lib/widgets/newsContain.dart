import 'package:flutter/material.dart';

class NewsContain extends StatelessWidget {
  const NewsContain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          child: Image.asset('assets/news/sports.avif'),
        )
      ],
    );
  }
}
