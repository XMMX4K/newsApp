import 'package:flutter/material.dart';
import 'package:newsapp/models/newsCategoryModel.dart';

class NewsCategory extends StatelessWidget {
  NewsCategory(this.Category);

  final CategoryModel Category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10),
      width: 150,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          image: DecorationImage(
              image: AssetImage('${Category.image}'), fit: BoxFit.fill)),
      child: Center(
        child: Text(
          '${Category.categoryname}',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
