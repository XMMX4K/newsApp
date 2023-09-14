import 'package:flutter/material.dart';
import 'package:newsapp/models/newsCategoryModel.dart';
import 'package:newsapp/widgets/newsCategory.dart';

class newsCateListView extends StatelessWidget {
  newsCateListView({
    super.key,
  });

  final List<CategoryModel> categoryModel = [
    CategoryModel(
        image: 'assets/news/entertaiment.avif', categoryname: 'Entertaiment'),
    CategoryModel(image: 'assets/news/general.avif', categoryname: 'General'),
    CategoryModel(image: 'assets/news/health.avif', categoryname: 'Health'),
    CategoryModel(image: 'assets/news/science.avif', categoryname: 'Science'),
    CategoryModel(image: 'assets/news/sports.avif', categoryname: 'Sports'),
    CategoryModel(image: 'assets/news/tech.avif', categoryname: 'Tech'),
    CategoryModel(image: 'assets/news/Buss.avif', categoryname: 'Business'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoryModel.length,
        itemBuilder: (context, index) {
          return NewsCategory(categoryModel[index]);
        });
  }
}
