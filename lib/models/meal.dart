enum Complexity {
  simple,
  challenging,
  hard,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  // 料理名
  final String title;
  // 画像
  final String imageUrl;
  // 食材の名前
  final List<String> ingredients;
  // 料理方法
  final List<String> steps;
  // 料理時間
  final int duration;
  // 難易度
  // Stringやintで管理するのは､選択肢が多いことから､視認性が悪い
  final Complexity complexity;
  // 価格
  final Affordability affordability;

  // 分類
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
  });
}
