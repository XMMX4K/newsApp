import 'package:flutter/material.dart';

class NewsContain extends StatelessWidget {
  const NewsContain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/news/sports.avif',
            fit: BoxFit.fill,
          ),
        ),
        Text(
          'أول تعليق من بايدن على فتح تحقيق بالكونغرس لـ"عزله"',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        Text(
          'أول تعليق من بايدن على فتح تحقيق بالكونغرس لـ"عزله"',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
