import 'package:flutter/material.dart';

class LeftPanelNavigation extends StatefulWidget {
  const LeftPanelNavigation(
      {Key? key,
      required this.onDestinationSelected,
      required this.selectedIndex})
      : super(key: key);

  final Function(int) onDestinationSelected;
  final int selectedIndex;

  @override
  State<LeftPanelNavigation> createState() => _LeftPanelNavigationState();
}

class _LeftPanelNavigationState extends State<LeftPanelNavigation> {
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
    debugPrint('_LeftPanelNavigationState build ${widget.selectedIndex}');

    return NavigationRail(
      leading: null,
      selectedIndex: widget.selectedIndex,
      onDestinationSelected: widget.onDestinationSelected,
      labelType: NavigationRailLabelType.selected,
      destinations: getDestinations(),
    );
  }
}
