// 2ページ目

import 'package:flutter/material.dart';
import './dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "/category-meals";

  const CategoryMealsScreen({super.key});
  // final String categoryId;
  // final String categoryTitle;
  // CategoryMealsScreen({
  //   required this.categoryId,
  //   required this.categoryTitle,
  // });
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = routeArgs["id"];
    final categoryTitle = routeArgs["title"];

    // .where メソッド フィルタリングする iterable => toList
    final categoryMeals = DUMMY_MEALS.where((meal) {
      // 求めているものとは異なるときは､false
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        // builderで管理すると良い点
        // 画面上にないアイテムは削除することでパフォーマンスを向上させる
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
