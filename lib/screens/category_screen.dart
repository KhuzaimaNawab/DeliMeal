import 'package:flutter/material.dart';
import '../widgets/category_grid.dart';

class CategoryPage extends StatelessWidget {
  final int _currentIndex = 0;

  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              height: 150,
              child: DrawerHeader(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(color: Colors.amber),
                child: Text(
                  'Cooking Up!',
                  style: TextStyle(
                      fontSize: 34,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.food_bank),
              title: const Text('Meals'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Filters'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('DeliMeal'),
      ),
      body: const CatergoryGrid(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
