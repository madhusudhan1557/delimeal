import 'package:flutter/material.dart';
import 'package:mealapp/screens/filter_screen.dart';
import 'package:mealapp/screens/meal_details.dart';
import 'package:mealapp/screens/tab_screen.dart';
import '../screens/category_meal.dart';

void main() {
  runApp(const MealApp());
}

class MealApp extends StatelessWidget {
  const MealApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meal App",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
            ),
      ),
      routes: {
        '/': (ctx) => const TabScreen(),
        CategoryMeal.routeName: (ctx) => const CategoryMeal(),
        MealDetails.routeName: (ctx) => const MealDetails(),
        FilterScreen.routeName: (ctx) => const FilterScreen(),
      },
    );
  }
}
