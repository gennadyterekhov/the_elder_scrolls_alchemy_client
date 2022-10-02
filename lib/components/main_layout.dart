import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data.dart';
import 'package:the_elder_scrolls_alchemy_client/extensions/capitalize.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
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

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;
  String _chosenGame = defaultChosenGame;

  Widget _childPage = const HomePage();

  String _pageTitle = 'The Elder Scrolls Alchemy';

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

  void popupMenuItemOnTap(gameName) {
    setState(() {
      _chosenGame = gameName;
    });
  }

  Function() chooseGame(String gameName) {
    return () {
      setState(() {
        _chosenGame = gameName;
        _pageTitle = '${_chosenGame.capitalize()} Alchemy';
      });
    };
  }

  List<Widget> getAppBarActions() {
    return [
      PopupMenuButton<Text>(
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              onTap: chooseGame(DataProvider.gameNameSkyrim),
              child: Text(DataProvider.gameNameSkyrim.capitalize()),
            ),
            PopupMenuItem(
              onTap: chooseGame(DataProvider.gameNameOblivion),
              child: Text(DataProvider.gameNameOblivion.capitalize()),
            ),
            PopupMenuItem(
              onTap: chooseGame(DataProvider.gameNameMorrowind),
              child: Text(DataProvider.gameNameMorrowind.capitalize()),
            ),
          ];
        },
      )
    ];
  }

  void onDestinationSelected(index) {
    setState(() {
      _selectedIndex = index;
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
        actions: getAppBarActions(),
      ),
      body: Row(
        children: [
          LeftPanelNavigation(
            onDestinationSelected: onDestinationSelected,
            selectedIndex: _selectedIndex,
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(child: _childPage),
        ],
      ),
    );
  }
}
