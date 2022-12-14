import 'package:cook_app/widgets/category_item.dart';

import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import 'package:flutter/material.dart';
import './screens/meal_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(secondary: Colors.cyan),
        // primaryColor: Colors.grey[300],
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
              // 2021model
              titleMedium: const TextStyle(
                fontSize: 25,
                fontFamily: "RobotoCondensed",
                fontWeight: FontWeight.bold,
              ),
              bodyLarge: const TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: "RobotoCondensed",
              ),
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodySmall: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
                fontSize: 20,
                fontFamily: "RobotoCondensed",
              ),
            ),
      ),
      darkTheme: ThemeData.dark(),
      // home: CategoriesScreen(),
      initialRoute: "/",
      routes: {
        "/": (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      //   return MaterialPageRoute(builder: (context) => CategoriesScreen());
      // },
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(builder: (context) => CategoriesScreen());
      // },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("DeliMeals"),
//       ),
//       body: const Center(
//         child: Text("Navigation Time"),
//       ),
//     );
//   }
// }
