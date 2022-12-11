import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;
  CategoryMealsScreen({
    required this.categoryId,
    required this.categoryTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(categoryTitle),
      ),
      body: const Center(
        child: Text("The Recipes For The Category"),
      ),
    );
  }
}
