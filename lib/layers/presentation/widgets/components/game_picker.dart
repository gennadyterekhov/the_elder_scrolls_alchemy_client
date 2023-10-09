import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';

class GamePicker extends StatelessWidget {
  const GamePicker({Key? key, required this.gameName}) : super(key: key);
  final String gameName;

  List<DropdownMenuItem<String>> getGameButtonsDropdown(context) {
    List<DropdownMenuItem<String>> popupMenuItems = [];
    for (var gameName in DataResource.gameNames) {
      popupMenuItems.add(
        DropdownMenuItem(
          value: gameName,
          child: Text(Constant.getGameNameForPresentation(gameName)),
        ),
      );
    }

    return popupMenuItems;
  }

  @override
  Widget build(BuildContext context) {
    final gamePicker = DropdownButtonFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.videogame_asset),
        labelText: AppLocalizations.of(context)!.homePageChangeGame,
      ),
      value: this.gameName,
      icon: const Icon(Icons.expand_more),
      items: getGameButtonsDropdown(context),
      onChanged: (String? gameName) {
        if (gameName is String) {
          context.read<AppState>().changeGame(gameName);
        }
      },
    );

    return gamePicker;
  }
}
