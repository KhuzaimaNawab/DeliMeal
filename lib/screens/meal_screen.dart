import 'package:flutter/material.dart';
import '../widgets/meal_list.dart';

class MealScreen extends StatelessWidget {
  static const routeName = '/meal-screen';

  const MealScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final categoryTitle = routeArg['title'];
  
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: const MealList(),
    );
  }
}
