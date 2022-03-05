import 'package:flutter/material.dart';
import 'package:mealapp/dummydata/dummy_data.dart';
import 'package:mealapp/widgets/meal_item.dart';

class CategoryMeal extends StatelessWidget {
  static const routeName = '/category-meals';

  const CategoryMeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Container(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: MealItem(
                id: categoryMeals[index].id,
                title: categoryMeals[index].title,
                imageUrl: categoryMeals[index].imageUrl,
                duration: categoryMeals[index].duration,
                complexity: categoryMeals[index].complexity,
                affordability: categoryMeals[index].affordability,
              ),
            ),
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
