import 'package:flutter/material.dart';

class NavigationItem {
  NavigationItem({key, required this.icon, required this.selectedIcon, required this.label, required this.path});
  final Icon icon;

  final String label;

  final Icon selectedIcon;
  final String path;
}

class Navigation {
  static List<NavigationItem> getItems({bool withHome = false, bool withPotions = false}) {
    final home = NavigationItem(
        icon: const Icon(Icons.home_outlined), selectedIcon: const Icon(Icons.home), label: 'Home', path: '/');

    final effects = NavigationItem(
        icon: const Icon(Icons.menu_book_outlined),
        selectedIcon: const Icon(Icons.menu_book),
        label: 'Effects',
        path: '/effects');

    final ingredients = NavigationItem(
        icon: const Icon(Icons.restaurant_outlined),
        selectedIcon: const Icon(Icons.restaurant),
        label: 'Ingredients',
        path: '/ingredients');

    final potions = NavigationItem(
        icon: const Icon(Icons.liquor_outlined), selectedIcon: const Icon(Icons.liquor), label: 'Potions', path: '/');

    final search = NavigationItem(
        icon: const Icon(Icons.search_outlined),
        selectedIcon: const Icon(Icons.search),
        label: 'Search',
        path: '/search');

    final List<NavigationItem> itemsNoHome = [
      effects,
      ingredients,
      search,
    ];

    return itemsNoHome;
  }
}
