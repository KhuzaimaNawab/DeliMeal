import 'package:flutter/material.dart';
import 'package:mealapp/widgets/meal_item.dart';

import '../modal/dummy_data.dart';

class MealList extends StatelessWidget {
  const MealList({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final categoryID = routeArg['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryID);
    }).toList();

    return ListView.builder(
      itemCount: categoryMeals.length,
      itemBuilder: (BuildContext context, int index) {
        return MealItem(
          id: categoryMeals[index].id,
          imageUrl: categoryMeals[index].imageUrl,
          duration: categoryMeals[index].duration,
          affordability: categoryMeals[index].affordability,
          complexity: categoryMeals[index].complexity,
          title: categoryMeals[index].title,
        );
      },
    );
  }
}
