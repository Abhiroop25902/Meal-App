import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'meal.dart';
part 'favorite_meals.g.dart';

@riverpod
class FavoriteMeals extends _$FavoriteMeals {
  @override
  List<Meal> build() {
    return [];
  }

  void addFavoriteMeal(Meal meal) {
    state = [...state, meal];
  }

  void removeFavoriteMeal(Meal meal) {
    state = state.where((element) => element.id != meal.id).toList();
  }
}
