import 'package:flutter/material.dart';
import 'package:mealapp/modal/dummy_data.dart';
import 'package:mealapp/widgets/categoryItem.dart';

class CatergoryGrid extends StatelessWidget {
  const CatergoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES
          .map((catData) =>
              CategoryItem(title: catData.title, color: catData.color,id: catData.id,))
          .toList(),
    );
  }
}
