// カテゴリー画面
import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 全てのカテゴリーを含むgridを戻り値にする
    // grid = 複数の項目が隣り合わせに配置される
    // ListView = 項目を並べないリスト
    // GridView = 項目を並べたいリスト
    return Scaffold(
      appBar: AppBar(
        title: const Text("DeliMeal"),
        elevation: 10,
        centerTitle: false,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        //  gridもListViewと一緒 デフォルトスクロール可能
        // レイアウトを担当　クラスに移譲する
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          // 1つのオブジェクトにどのくらいの幅を割り当てるのか
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.5,
          // グリッド内の列の間に対して
          crossAxisSpacing: 10,
          // グリッド内の行の間にどのくらいの距離をとるか
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((catData) {
          return CategoryItem(
            id: catData.id,
            title: catData.title,
            color: catData.color,
          );
        }).toList(),
      ),
    );
  }
}
