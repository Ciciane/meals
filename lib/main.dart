import 'package:flutter/material.dart';
import 'package:meals/screens/meal_detail_screen.dart';

import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: "Raleway",
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: "RobotoCondensed",
              ),
            ),
      ),
      routes: {
        AppRoutes.home: (ctx) => CategoriesScreen(),
        AppRoutes.categoriesMeals: (ctx) => CategoriesMealsScreen(),
        AppRoutes.mealDetail: (ctx) => MealDetailScreen(),
      },
    );
  }
}
