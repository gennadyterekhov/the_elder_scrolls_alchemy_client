import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/navigation/navigation.dart';

class BottomPanelNavigation extends ConsumerStatefulWidget {
  const BottomPanelNavigation({Key? key, required this.notifyParent}) : super(key: key);
  final Function() notifyParent;

  @override
  ConsumerState<BottomPanelNavigation> createState() => _BottomPanelNavigationState();
}

class _BottomPanelNavigationState extends ConsumerState<BottomPanelNavigation> {
  List<BottomNavigationBarItem> getDestinations() {
    return Navigation.getItems(withHome: false)
        .map(
          (navigationItem) => BottomNavigationBarItem(
            icon: navigationItem.selectedIcon,
            label: navigationItem.label,
          ),
        )
        .toList();
  }

  void onDestinationSelected(index) {
    ref.read(globalChosenTabIndexStateProvider.notifier).state = index;

    var gameName = ref.watch(globalGameNameStateProvider);

    String route = AlchemyRouter.getRouteByIndex(index: index, withHome: false);
    context.go('/$gameName$route');
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: ref.watch(globalChosenTabIndexStateProvider),
      items: getDestinations(),
      selectedItemColor: Colors.green[200],
      unselectedItemColor: Colors.grey[800],
      onTap: onDestinationSelected,
    );
  }
}
