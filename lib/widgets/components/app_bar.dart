import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/extensions/capitalize.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';

class AlchemyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const AlchemyAppBar({Key? key, required this.notifyParent}) : super(key: key);
  final Function() notifyParent;

  @override
  State<AlchemyAppBar> createState() => _AlchemyAppBarState();

  @override
  Size get preferredSize => Size(20.0, 50.0); // TODO remove hardcode
}

class _AlchemyAppBarState extends State<AlchemyAppBar> {
  String _pageTitle = 'The Elder Scrolls Alchemy | ${globalChosenGame.capitalize()}';

  Function() chooseGame(String gameName) {
    return () {
      globalChosenGame = gameName;
      // globalPage = globalPage;
      widget.notifyParent();

      setState(() {
        globalChosenGame = gameName;
        _pageTitle = 'The Elder Scrolls Alchemy | ${gameName.capitalize()}';
      });
    };
  }

  List<Widget> getAppBarActions() {
    return [
      PopupMenuButton<Text>(
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              onTap: chooseGame(DataSource.gameNameSkyrim),
              child: Text(DataSource.gameNameSkyrim.capitalize()),
            ),
            // PopupMenuItem(
            //   onTap: chooseGame(DataSource.gameNameOblivion),
            //   child: Text(DataSource.gameNameOblivion.capitalize()),
            // ),
            PopupMenuItem(
              onTap: chooseGame(DataSource.gameNameMorrowind),
              child: Text(DataSource.gameNameMorrowind.capitalize()),
            ),
          ];
        },
      )
    ];
  }

  AppBar getAppBar() {
    bool showLeading = false; // TODO show on mobile to toggle left panel, disabled in web

    IconButton leading = IconButton(
      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      icon: const Icon(Icons.menu),
      onPressed: () {},
    );
    return AppBar(
      leading: (showLeading) ? leading : null,
      title: Text(_pageTitle),
      actions: getAppBarActions(),
    );
  }

  @override
  AppBar build(BuildContext context) {
    return getAppBar();
  }
}
