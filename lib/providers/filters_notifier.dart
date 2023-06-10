import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/filter.dart';
import '../models/meal.dart';
import 'meals_provider.dart';
part 'filters_notifier.g.dart';

@Riverpod(keepAlive: true)
class FiltersNotifier extends _$FiltersNotifier {
  @override
  Filter build() {
    return const Filter();
  }

  void setGlutenFree(bool val) {
    state = state.copyWith(glutenFree: val);
  }

  void setLactoseFree(bool val) {
    state = state.copyWith(lactoseFree: val);
  }

  void setVegan(bool val) {
    state = state.copyWith(vegan: val);
  }

  void setVegetarian(bool val) {
    state = state.copyWith(vegetarian: val);
  }
}

final filteredMealsProvider = Provider<List<Meal>>((ref) {
  final meals = ref.watch(mealsProvider);
  final activeFilters = ref.watch(filtersNotifierProvider);

  return meals.where((e) {
    if (activeFilters.glutenFree && !e.isGlutenFree) return false;
    if (activeFilters.lactoseFree && !e.isLactoseFree) return false;
    if (activeFilters.vegetarian && !e.isVegetarian) return false;
    if (activeFilters.vegan && !e.isVegan) return false;

    return true;
  }).toList();
});
