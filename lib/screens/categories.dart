import 'package:flutter/material.dart';

import 'package:meal/screens/meals.dart';

import '../data/dummy_data.dart';
import '../models/category.dart';
import '../models/meal.dart';
import '../widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Meal> availableMeals;
  const CategoriesScreen({super.key, required this.availableMeals});

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = availableMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => MealScreen(
                  title: category.title,
                  meals: filteredMeals,
                )));
  }

  @override
  Widget build(BuildContext context) {
    final categoryIdSet = availableMeals.fold(<String>{}, (categorySet, meal) {
      categorySet.addAll(meal.categories);
      return categorySet;
    });

    final categories = availableCategories
        .where((cat) => categoryIdSet.contains(cat.id))
        .toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            children: categories
                .map((category) => CategoryGridItem(
                      category: category,
                      onSelectCategory: () =>
                          _selectCategory(context, category),
                    ))
                .toList()),
      ),
    );
  }
}
