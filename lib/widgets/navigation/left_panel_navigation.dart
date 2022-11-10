import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/navigation/navigation.dart';

class LeftPanelNavigation extends ConsumerStatefulWidget {
  const LeftPanelNavigation({Key? key, required this.notifyParent}) : super(key: key);
  final Function() notifyParent;

  @override
  ConsumerState<LeftPanelNavigation> createState() => _LeftPanelNavigationState();
}

class _LeftPanelNavigationState extends ConsumerState<LeftPanelNavigation> {
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
    var gameName = ref.watch(globalGameNameStateProvider);

    String route = AlchemyRouter.getRouteByIndex(index: index);
    context.push('/$gameName$route');
  }

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      backgroundColor: Colors.grey[50],
      leading: null,
      selectedIndex: globalChosenTabIndex,
      onDestinationSelected: onDestinationSelected,
      labelType: NavigationRailLabelType.selected,
      destinations: getDestinations(),
    );
  }
}
