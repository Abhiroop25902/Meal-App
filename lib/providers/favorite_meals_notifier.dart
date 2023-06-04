import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/meal.dart';

part 'favorite_meals_notifier.g.dart';

@riverpod
class FavoriteMealsNotifier extends _$FavoriteMealsNotifier {
  @override
  List<Meal> build() {
    return [];
  }

  void toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((element) => element.id != meal.id).toList();
    } else {
      state = [meal, ...state];
    }
  }
}
