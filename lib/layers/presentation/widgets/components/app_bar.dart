import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/navigation/back_button.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';

class AlchemyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AlchemyAppBar({Key? key, required this.gameName}) : super(key: key);
  final String gameName;

  @override
  Size get preferredSize => const Size(20.0, 50.0);

  @override
  Widget build(
    BuildContext context,
  ) {
    final homeLink = InkWell(
      onTap: () => context.read<AppState>().moveToHome(),
      child: Text(Constant.getGameNameForPresentation(gameName)),
    );

    final blocBuilder = BlocBuilder<AppState, Map<String, dynamic>>(
      builder: (context, state) {
        Widget toggleSearchInkWell;

        if (context.read<AppState>().shouldSearchFieldBeShownOnThisPage()) {
          toggleSearchInkWell = InkWell(
            child: Wrap(children: [
              state['isSearchVisible'] ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
              Text(' ${AppLocalizations.of(context)!.appBarSearchToggle}'),
            ]),
            onTap: () => context.read<AppState>().toggleSearch(),
          );
        } else {
          toggleSearchInkWell = SizedBox.shrink();
        }

        final titleLine = Wrap(
          alignment: WrapAlignment.spaceEvenly,
          spacing: 32,
          runAlignment: WrapAlignment.spaceEvenly,
          children: [homeLink, toggleSearchInkWell],
        );
        return AppBar(
          backgroundColor: const Color(0xffa5d6a7),
          leading: const CustomBackButton(),
          automaticallyImplyLeading: false,
          title: titleLine,
        );
      },
    );

    return blocBuilder;
  }
}
