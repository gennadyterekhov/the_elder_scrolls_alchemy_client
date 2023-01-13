import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/navigation/navigation.dart';

class BottomPanelNavigation extends StatefulWidget {
  const BottomPanelNavigation({Key? key, required this.gameName, required this.notifyParent}) : super(key: key);
  final Function() notifyParent;
  final String gameName;

  @override
  State<BottomPanelNavigation> createState() => _BottomPanelNavigationState();
}

class _BottomPanelNavigationState extends State<BottomPanelNavigation> {
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
    var gameName = widget.gameName;

    String route = AlchemyRouter.getRouteByIndex(index: index, withHome: false);
    context.go('/$gameName$route');
  }

  @override
  Widget build(BuildContext context) {
    var selectedIndex = 0;
    String? url;
    url = ModalRoute.of(context)?.settings.name;

    if (url != null && url.contains('ingredient')) {
      selectedIndex = 1;
    }
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      items: getDestinations(),
      selectedItemColor: Colors.green[200],
      unselectedItemColor: Colors.grey[800],
      onTap: onDestinationSelected,
    );
  }
}
