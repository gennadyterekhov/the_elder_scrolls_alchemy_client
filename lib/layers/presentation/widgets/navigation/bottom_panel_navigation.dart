import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/navigation/navigation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';

class BottomPanelNavigation extends StatefulWidget {
  const BottomPanelNavigation({Key? key, required this.gameName, required this.notifyParent}) : super(key: key);
  final Function() notifyParent;
  final String gameName;

  @override
  State<BottomPanelNavigation> createState() => _BottomPanelNavigationState();
}

class _BottomPanelNavigationState extends State<BottomPanelNavigation> {
  List<BottomNavigationBarItem> getDestinations() {
    return Navigation.getItems(context: context)
        .map(
          (navigationItem) => BottomNavigationBarItem(
            icon: navigationItem.selectedIcon,
            label: navigationItem.label,
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
    final blocBuilder = BlocBuilder<AppState, Map<String, dynamic>>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: Navigation.getSelectedIndexFromState(state),
          items: getDestinations(),
          selectedItemColor: Colors.green[200],
          unselectedItemColor: Colors.grey[800],
          onTap: onDestinationSelected,
        );
      },
    );

    return blocBuilder;
  }
}
