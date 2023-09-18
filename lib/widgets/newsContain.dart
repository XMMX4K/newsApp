import 'package:flutter/material.dart';
import 'package:newsapp/models/newsModel.dart';

class NewsContain extends StatefulWidget {
  const NewsContain({required this.artic});

  final newsModel artic;

  @override
  State<NewsContain> createState() => _NewsContainState();
}

class _NewsContainState extends State<NewsContain> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: widget.artic.image != null
                ? Image.network(
                    '${widget.artic.image}',
                    fit: BoxFit.fill,
                  )
                : Image.network(
                    'https://images.unsplash.com/photo-1694949043973-1b51337cb8ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2127&q=80',
                    fit: BoxFit.fill,
                  )),
        Text(
          '${widget.artic.subtitle ?? ''}',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        Text(
          '${widget.artic.subtitle ?? ''}',
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
