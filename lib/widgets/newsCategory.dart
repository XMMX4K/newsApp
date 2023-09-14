import 'package:flutter/material.dart';

class NewsCategory extends StatelessWidget {
  const NewsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10),
      width: 150,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          image: DecorationImage(
              image: AssetImage('assets/news/Buss.avif'), fit: BoxFit.fill)),
      child: Center(
        child: Text(
          'Business',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
