import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/extensions/capitalize.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';

class AlchemyAppBar extends ConsumerWidget implements PreferredSizeWidget {
  AlchemyAppBar({Key? key}) : super(key: key);

  String chosenGameName = 'skyrim';
  @override
  Size get preferredSize => Size(20.0, 50.0);

  Function() chooseGame(context, ref, String gameName) {
    return () {
      chosenGameName = gameName;

      var location = GoRouter.of(context).location;
      if (location == '/') {
        GoRouter.of(context).go('/');
      } else {
        var path = '/$gameName' + AlchemyRouter.getRouteByIndex(index: globalChosenTabIndex);
        GoRouter.of(context).go(path);
      }
      ref.read(globalGameNameStateProvider.notifier).state = gameName;
    };
  }

  @override
  AppBar build(BuildContext context, WidgetRef ref) {
    chosenGameName = ref.watch(globalGameNameStateProvider);

    final actions = [
      PopupMenuButton<Text>(
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              onTap: chooseGame(context, ref, DataSource.gameNameSkyrim),
              child: Text(DataSource.gameNameSkyrim.capitalize()),
            ),
            PopupMenuItem(
              onTap: chooseGame(context, ref, DataSource.gameNameOblivion),
              child: Text(DataSource.gameNameOblivion.capitalize()),
            ),
            PopupMenuItem(
              onTap: chooseGame(context, ref, DataSource.gameNameMorrowind),
              child: Text(DataSource.gameNameMorrowind.capitalize()),
            ),
          ];
        },
      )
    ];

    final homeLink = InkWell(
      onTap: () => context.push('/home'),
      child: Text(chosenGameName.capitalize()),
    );

    final isSearchVisible = ref.watch(globalIsSearchShownStateProvider);

    final toggleSearchInkWell = InkWell(
      child: Wrap(children: [
        isSearchVisible ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
        const Text(' Search'),
      ]),
      onTap: () => ref.read(globalIsSearchShownStateProvider.notifier).state = !isSearchVisible,
    );

    final titleLine = Wrap(
      alignment: WrapAlignment.spaceEvenly,
      spacing: 32,
      runAlignment: WrapAlignment.spaceEvenly,
      children: [homeLink, toggleSearchInkWell],
    );
    return AppBar(
      automaticallyImplyLeading: true,
      title: titleLine,
      actions: actions,
    );
  }
}
