import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/pages/home/home.dart';
import 'package:the_elder_scrolls_alchemy_client/pages/skyrim/effects/effects.dart';
import 'package:the_elder_scrolls_alchemy_client/pages/skyrim/ingredients/ingredients.dart';
import 'package:the_elder_scrolls_alchemy_client/pages/skyrim/potions/potions.dart';
import 'package:the_elder_scrolls_alchemy_client/pages/skyrim/search/search.dart';
import 'package:the_elder_scrolls_alchemy_client/components/left_panel_navigation.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> with RestorationMixin {
  final RestorableInt _selectedIndex = RestorableInt(0);

  @override
  String get restorationId => 'nav_rail_demo';

  Widget _childPage = const HomePage();

  final String _pageTitle = 'The Elder Scrolls Alchemy';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedIndex, 'selected_index');
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }

  Widget getPage(index) {
    if (index == 1) {
      return const EffectsPage();
    }
    if (index == 2) {
      return const IngredientsPage();
    }
    if (index == 3) {
      return const PotionsPage();
    }
    if (index == 4) {
      return const SearchPage();
    }

    return const HomePage();
  }

  void onDestinationSelected(index) {
    debugPrint('onDestinationSelected $index');

    setState(() {
      _selectedIndex.value = index;
      _childPage = getPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    bool showLeading =
        false; // TODO show on mobile to toggle left panel, disabled in web

    IconButton leading = IconButton(
      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      icon: const Icon(Icons.menu),
      onPressed: () {},
    );

    return Scaffold(
      appBar: AppBar(
        leading: (showLeading) ? leading : null,
        title: Text(_pageTitle),
      ),
      body: Row(
        children: [
          LeftPanelNavigation(onDestinationSelected: onDestinationSelected),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(child: _childPage),
        ],
      ),
    );
  }
}
