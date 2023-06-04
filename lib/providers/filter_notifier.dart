import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/filter.dart';
part 'filter_notifier.g.dart';

@Riverpod(keepAlive: true)
class FilterNotifier extends _$FilterNotifier {
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
