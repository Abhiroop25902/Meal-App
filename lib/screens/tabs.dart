import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal/models/favorite_meals.dart';
import 'package:meal/screens/categories.dart';
import 'package:meal/screens/meals.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TabsScreenState();

  // @override
  // State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;
  final _pageViewController = PageController();

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });

    _pageViewController.animateToPage(index,
        duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (value) => setState(() {
          _selectedPageIndex = value;
        }),
        controller: _pageViewController,
        children: [
          const CategoriesScreen(),
          MealScreen(
              title: 'Favorites', meals: ref.watch(favoriteMealsProvider))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          enableFeedback: true,
          currentIndex: _selectedPageIndex,
          onTap: _selectPage,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.set_meal), label: 'Categories'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
          ]),
    );
  }
}
