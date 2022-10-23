import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/navigation/navigation.dart';

class LeftPanelNavigation extends StatefulWidget {
  const LeftPanelNavigation({Key? key, required this.notifyParent}) : super(key: key);
  final Function() notifyParent;

  @override
  State<LeftPanelNavigation> createState() => _LeftPanelNavigationState();
}

class _LeftPanelNavigationState extends State<LeftPanelNavigation> {
  List<NavigationRailDestination> getDestinations() {
    return Navigation.getItems()
        .map(
          (navigationItem) => NavigationRailDestination(
            icon: navigationItem.icon,
            selectedIcon: navigationItem.selectedIcon,
            label: Text(navigationItem.label),
          ),
        )
        .toList();
  }

  void onDestinationSelected(index) {
    globalChosenTabIndex = index;
    String route = AlchemyRouter.getRouteByIndex(index: index);
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
