import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NavigationItem {
  NavigationItem({key, required this.icon, required this.selectedIcon, required this.label, required this.path});
  final Icon icon;
  final String label;
  final Icon selectedIcon;
  final String path;
}

class Navigation {
  static List<Map<String, String>> getItemsPaths() {
    final List<Map<String, String>> items = [
      {'path': '/home'},
      {'path': '/effects'},
      {'path': '/ingredients'},
    ];

    return items;
  }

  static Map<String, NavigationItem> getNameToNavigationItemMap({required BuildContext context}) {
    final paths = Navigation.getItemsPaths();

    final home = NavigationItem(
        icon: const Icon(Icons.house_outlined),
        selectedIcon: const Icon(Icons.house),
        label: AppLocalizations.of(context)!.homeNavigation,
        path: '/home/');

    final effects = NavigationItem(
        icon: const Icon(Icons.menu_book_outlined),
        selectedIcon: const Icon(Icons.menu_book),
        label: AppLocalizations.of(context)!.effectsLeftPanel,
        path: paths[0]['path']!);

    final ingredients = NavigationItem(
        icon: const Icon(Icons.restaurant_outlined),
        selectedIcon: const Icon(Icons.restaurant),
        label: AppLocalizations.of(context)!.ingredientsLeftPanel,
        path: paths[1]['path']!);

    final Map<String, NavigationItem> map = {
      'home': home,
      'effects': effects,
      'ingredients': ingredients,
    };

    return map;
  }

  static List<NavigationItem> getItems({required BuildContext context}) {
    final paths = Navigation.getItemsPaths();

    final home = NavigationItem(
        icon: const Icon(Icons.house_outlined),
        selectedIcon: const Icon(Icons.house),
        label: AppLocalizations.of(context)!.homeNavigation,
        path: paths[0]['path']!);

    final effects = NavigationItem(
        icon: const Icon(Icons.menu_book_outlined),
        selectedIcon: const Icon(Icons.menu_book),
        label: AppLocalizations.of(context)!.effectsLeftPanel,
        path: paths[1]['path']!);

    final ingredients = NavigationItem(
        icon: const Icon(Icons.restaurant_outlined),
        selectedIcon: const Icon(Icons.restaurant),
        label: AppLocalizations.of(context)!.ingredientsLeftPanel,
        path: paths[2]['path']!);

    final List<NavigationItem> items = [
      home,
      effects,
      ingredients,
    ];

    return items;
  }
}
