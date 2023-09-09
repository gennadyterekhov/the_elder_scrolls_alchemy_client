import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/app_widget.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';

class TheElderScrollsAlchemyClientApp extends StatelessWidget {
  const TheElderScrollsAlchemyClientApp({Key? key}) : super(key: key);

  static Future<String> getSavedGameName() async {
    String? gameNameFromPreferences = await getGameNameFromPreferences();
    if (gameNameFromPreferences == null) {
      return Constant.fallbackGameName;
    }
    return gameNameFromPreferences;
  }

  static String getLocaleLanguageCode(BuildContext context) {
    return Localizations.localeOf(context).languageCode;
  }

  static Future<String> getSavedLanguageCode() async {
    String? languageCodeFromPreferences = await getLanguageCodeFromPreferences();
    if (languageCodeFromPreferences == null) {
      return Constant.fallbackLanguage;
    }
    return languageCodeFromPreferences;
  }

  static Future<String?> getLanguageCodeFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final String? languageCode = prefs.getString('languageCode');

    return languageCode;
  }

  static Future<String?> getGameNameFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final String? gameName = prefs.getString('gameName');

    return gameName;
  }

  AppState setStateFromUrl() {
    String savedGameName = Constant.fallbackGameName;
    String savedLanguage = Constant.fallbackLanguage;
    TheElderScrollsAlchemyClientApp.getSavedGameName().then((value) => savedGameName = value);
    TheElderScrollsAlchemyClientApp.getSavedLanguageCode().then((value) => savedLanguage = value);

    String chosenTab = Constant.tabHome;
    String objectName = '';

    if (kIsWeb) {
      final segments = Uri.base.pathSegments;

      if (segments.length == 2 || segments.length == 3) {
        savedGameName = segments[0];

        chosenTab = segments[1];

        if (segments.length > 2) {
          objectName = segments[2];
        }
      }
    }

    return AppState(
      gameName: savedGameName,
      language: savedLanguage,
      chosenTab: chosenTab,
      chosenEffectName: chosenTab == Constant.tabEffects ? objectName : '',
      chosenIngredientName: chosenTab == Constant.tabIngredients ? objectName : '',
      urlPath: Uri.base.path,
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = setStateFromUrl();

    final blocProvider = BlocProvider(
      create: (_) => state,
      child: const AppWidget(),
    );

    return blocProvider;
  }
}
