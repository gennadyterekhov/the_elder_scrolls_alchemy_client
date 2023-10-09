import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/navigation/navigation.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';

class LeftPanelNavigation extends StatefulWidget {
  const LeftPanelNavigation({
    Key? key,
    required this.gameName,
    required this.notifyParent,
    required,
  }) : super(key: key);
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
      String route = Navigation.getRouteByIndex(index: index);

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
        final blocBuilder = BlocBuilder<AppState, Map<String, dynamic>>(
      builder: (context, state) {
                return NavigationRail(
          backgroundColor: Colors.grey[50],
          leading: null,
          selectedIndex: Navigation.getSelectedIndexFromState(state),
          onDestinationSelected: onDestinationSelected,
          labelType: NavigationRailLabelType.all,
          destinations: getDestinations(),
        );
      },
    );
    return blocBuilder;
  }
}
