import 'package:flutter_riverpod/flutter_riverpod.dart';

class Filter {
  bool glutenFree;
  bool lactoseFree;
  bool vegan;
  bool vegetarian;

  Filter({
    this.glutenFree = false,
    this.lactoseFree = false,
    this.vegan = false,
    this.vegetarian = false,
  });
}

final filterProvider = StateProvider((ref) => Filter());
