import 'package:flutter/material.dart';

class LeftPanelNavigation extends StatefulWidget {
  const LeftPanelNavigation({Key? key, required this.onDestinationSelected})
      : super(key: key);

  final Function(int) onDestinationSelected;
  @override
  State<LeftPanelNavigation> createState() => _LeftPanelNavigationState();
}

class _LeftPanelNavigationState extends State<LeftPanelNavigation>
    with RestorationMixin {
  final RestorableInt _selectedIndex = RestorableInt(0);

  @override
  String get restorationId =>
      'nav_rail_demo'; // TODO learn how this works with RestorationMixin

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedIndex, 'selected_index');
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }

  List<NavigationRailDestination> getDestinations() {
    return [
      const NavigationRailDestination(
        icon: Icon(Icons.home_outlined),
        selectedIcon: Icon(Icons.home),
        label: Text('Home'),
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.menu_book_outlined),
        selectedIcon: Icon(Icons.menu_book),
        label: Text('Effects'),
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.restaurant_outlined),
        selectedIcon: Icon(Icons.restaurant),
        label: Text('Ingredients'),
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.liquor_outlined),
        selectedIcon: Icon(Icons.liquor),
        label: Text('Potions'),
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.search_outlined),
        selectedIcon: Icon(Icons.search),
        label: Text('Search'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      leading: null,
      selectedIndex: _selectedIndex.value,
      onDestinationSelected: widget.onDestinationSelected,
      labelType: NavigationRailLabelType.selected,
      destinations: getDestinations(),
    );
  }
}
