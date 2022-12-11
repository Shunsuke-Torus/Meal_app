// GridView カテゴリー項目画面

import 'package:cook_app/category_meals_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoryItem(
      {super.key, required this.id, required this.title, required this.color});

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        "id": id,
        "title": title,
      },
      // MaterialPageRoute(
      //   builder: (_) {
      //     return CategoryMealsScreen(
      //       categoryId: id,
      //       categoryTitle: title,
      //     );
      //   },
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // anonymous関数にbindしTrigerされた際に転送
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).colorScheme.secondary,
      // 箱の形と等しく
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Text(title, style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
