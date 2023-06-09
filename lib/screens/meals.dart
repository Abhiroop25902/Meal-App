import 'package:flutter/material.dart';
import 'package:meal/screens/meal_details.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key, this.title, required this.meals});

  final String? title;
  final List<Meal> meals;

  void _selectMeal(BuildContext context, Meal meal) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MealDetailsScreen(meal: meal)));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
        padding: const EdgeInsets.all(24),
        itemCount: meals.length,
        itemBuilder: (ctx, idx) => MealItem(
              meal: meals[idx],
              onSelectMeal: () => _selectMeal(context, meals[idx]),
            ));

    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Uh oh ... nothing here!',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(
              height: 16,
            ),
            Text('Try adding meals as your favorite',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground))
          ],
        ),
      );
    }

    return Scaffold(
        appBar: title == null
            ? null
            : AppBar(
                title: Text(title!),
              ),
        body: content);
  }
}
