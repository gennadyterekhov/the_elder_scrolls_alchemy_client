import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/data/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/extensions/capitalize.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';

class AlchemyAppBar extends ConsumerWidget implements PreferredSizeWidget {
  AlchemyAppBar({Key? key, required this.gameName}) : super(key: key);
  final String gameName;

  @override
  Size get preferredSize => Size(20.0, 50.0);

  Function() chooseGame(context, ref, String gameName) {
    return () {
      var path = '/$gameName${AlchemyRouter.getRouteByIndex(index: ref.read(globalChosenTabIndexStateProvider))}';
      GoRouter.of(context).go(path);
    };
  }

  @override
  AppBar build(BuildContext context, WidgetRef ref) {
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
      onTap: () => context.go('/home/$gameName'),
      child: Text(gameName.capitalize()),
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
