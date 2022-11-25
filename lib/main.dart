import 'package:flutter/material.dart';
import 'package:mealapp/screens/category_screen.dart';
import 'package:mealapp/screens/meal_screen.dart';
import 'package:mealapp/screens/recipe_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const CategoryPage(),
        MealScreen.routeName: (context) => const MealScreen(),
        RecipeScreen.routeName: (context) => const RecipeScreen(),
      },
    );
  }
}
