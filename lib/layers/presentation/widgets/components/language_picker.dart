import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';

@deprecated //https://github.com/gennadyterekhov/the_elder_scrolls_alchemy_client/issues/151
class LanguagePicker extends StatelessWidget {
  const LanguagePicker({Key? key}) : super(key: key);

  List<DropdownMenuItem<String>> getLocaleButtonsDropdown(context) {
    List<DropdownMenuItem<String>> popupMenuItems = [];
    Constant.supportedLanguageCodesToLanguageNamesMap.forEach((langCode, langName) {
      popupMenuItems.add(
        DropdownMenuItem(
          value: langCode,
          child: Text(
            langName,
          ),
        ),
      );
    });

    return popupMenuItems;
  }

  @override
  Widget build(BuildContext context) {
    String currentLanguageCode = context.read<AppState>().get()['language'];

    final languagePicker = DropdownButtonFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.translate),
        labelText: AppLocalizations.of(context)!.homePageChangeLanguage,
      ),
      value: currentLanguageCode,
      icon: const Icon(Icons.expand_more),
      items: getLocaleButtonsDropdown(context),
      onChanged: (String? value) {
        if (value is String) {
          context.read<AppState>().changeLanguage(value);
        }
      },
    );

    return languagePicker;
  }
}
