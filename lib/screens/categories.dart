import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meal/screens/meals.dart';

import '../data/dummy_data.dart';
import '../models/category.dart';
import '../models/filter.dart';
import '../widgets/category_grid_item.dart';

class CategoriesScreen extends ConsumerWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category, WidgetRef ref) {
    final filters = ref.read(filterProvider);

    final filteredMeals = dummyMeals.where((meal) {
      if (!meal.categories.contains(category.id)) return false;

      if (filters.glutenFree && !meal.isGlutenFree) return false;
      if (filters.lactoseFree && !meal.isLactoseFree) return false;
      if (filters.vegan && !meal.isVegan) return false;
      if (filters.vegetarian && !meal.isVegetarian) return false;

      return true;
    }).toList();

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => MealScreen(
                  title: category.title,
                  meals: filteredMeals,
                )));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            children: availableCategories
                .map((category) => CategoryGridItem(
                      category: category,
                      onSelectCategory: () =>
                          _selectCategory(context, category, ref),
                    ))
                .toList()),
      ),
    );
  }
}
