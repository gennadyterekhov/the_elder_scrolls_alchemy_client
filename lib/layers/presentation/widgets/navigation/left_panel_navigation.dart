import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/navigation/navigation.dart';

class LeftPanelNavigation extends StatefulWidget {
  const LeftPanelNavigation({Key? key, required this.gameName, required this.notifyParent}) : super(key: key);
  final Function() notifyParent;
  final String gameName;

  @override
  State<LeftPanelNavigation> createState() => _LeftPanelNavigationState();
}

class _LeftPanelNavigationState extends State<LeftPanelNavigation> {
  List<NavigationRailDestination> getDestinations() {
    return Navigation.getItems(context: context)
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
    String route = AlchemyRouter.getRouteByIndex(index: index);

    if (route == '/home') {
      return context.read<AppState>().moveToHome();
    }
    if (route == '/effects') {
      return context.read<AppState>().moveToEffects();
    }
    if (route == '/ingredients') {
      return context.read<AppState>().moveToIngredients();
    }
  }

  @override
  Widget build(BuildContext context) {
    var selectedIndex = 0;
    String? url;
    url = ModalRoute.of(context)?.settings.name;

    if (url != null && url.contains('effect')) {
      selectedIndex = 1;
    }
    if (url != null && url.contains('ingredient')) {
      selectedIndex = 2;
    }

    return NavigationRail(
      backgroundColor: Colors.grey[50],
      leading: null,
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      labelType: NavigationRailLabelType.all,
      destinations: getDestinations(),
    );
  }
}
