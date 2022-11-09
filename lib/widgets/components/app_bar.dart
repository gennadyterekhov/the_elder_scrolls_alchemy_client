import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/extensions/capitalize.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';

class AlchemyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const AlchemyAppBar({Key? key, required this.notifyParent}) : super(key: key);
  final Function() notifyParent;

  @override
  State<AlchemyAppBar> createState() => _AlchemyAppBarState();

  @override
  Size get preferredSize => Size(20.0, 50.0); // TODO remove hardcode
}

class _AlchemyAppBarState extends State<AlchemyAppBar> {
  String _pageTitle = '${globalChosenGame.capitalize()} Alchemy';

  Function() chooseGame(String gameName) {
    return () {
      globalChosenGame = gameName;
      // globalPage = globalPage;
      widget.notifyParent();
      setState(() {
        globalChosenGame = gameName;
        _pageTitle = '${gameName.capitalize()} Alchemy';
      });
      // context.go(AlchemyRouter.getRouteByIndex(index: globalChosenTabIndex));
      context.go('/');
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
            PopupMenuItem(
              onTap: chooseGame(DataSource.gameNameOblivion),
              child: Text(DataSource.gameNameOblivion.capitalize()),
            ),
            PopupMenuItem(
              onTap: chooseGame(DataSource.gameNameMorrowind),
              child: Text(DataSource.gameNameMorrowind.capitalize()),
            ),
          ];
        },
      )
    ];
  }

  void onTap() {
    context.go('/');
  }

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      title: InkWell(
        onTap: onTap,
        child: Text(_pageTitle),
      ),
      actions: getAppBarActions(),
    );
  }
}
