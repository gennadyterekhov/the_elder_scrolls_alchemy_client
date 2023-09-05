import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/extensions/capitalize.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/state/search_field_toggle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AlchemyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AlchemyAppBar({Key? key, required this.gameName}) : super(key: key);
  final String gameName;

  @override
  Size get preferredSize => Size(20.0, 50.0);

  @override
  AppBar build(
    BuildContext context,
  ) {
    final homeLink = InkWell(
      onTap: () => context.push('/$gameName/home'),
      child: Text(Constant.getGameNameForPresentation(gameName)),
    );

    final searchFieldToggle = Provider.of<SearchFieldToggle>(context);
    final isSearchVisible = searchFieldToggle.isSearchFieldShown;

    final toggleSearchInkWell = InkWell(
      child: Wrap(children: [
        isSearchVisible ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
        Text(' ' + AppLocalizations.of(context)!.appBarSearchToggle),
      ]),
      onTap: () => searchFieldToggle.isSearchFieldShown = !isSearchVisible,
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
    );
  }
}