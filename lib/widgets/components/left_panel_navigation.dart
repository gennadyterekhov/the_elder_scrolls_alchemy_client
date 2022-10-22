import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';

class LeftPanelNavigation extends StatefulWidget {
  const LeftPanelNavigation({Key? key, required this.notifyParent}) : super(key: key);
  final Function() notifyParent;

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
      // const NavigationRailDestination(
      //   icon: Icon(Icons.liquor_outlined),
      //   selectedIcon: Icon(Icons.liquor),
      //   label: Text('Potions'),
      // ),
      const NavigationRailDestination(
        icon: Icon(Icons.search_outlined),
        selectedIcon: Icon(Icons.search),
        label: Text('Search'),
      ),
    ];
  }

  void onDestinationSelected(index) {
    globalChosenTabIndex = index;
    String route = AlchemyRouter.getRouteByIndex(index);
    context.go(route);
  }

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      leading: null,
      selectedIndex: globalChosenTabIndex,
      onDestinationSelected: onDestinationSelected,
      labelType: NavigationRailLabelType.selected,
      destinations: getDestinations(),
    );
  }
}
