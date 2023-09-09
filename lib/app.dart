import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/services/settings_manager.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/app_widget.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';

class TheElderScrollsAlchemyClientApp extends StatefulWidget {
  TheElderScrollsAlchemyClientApp({
    Key? key,
    required this.settingsManager,
  }) : super(key: key);

  SettingsManager settingsManager;

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

  @deprecated
  static void setLocaleLanguageCode(BuildContext context, String languageCode) async {
    _TheElderScrollsAlchemyClientAppState state =
        context.findAncestorStateOfType<_TheElderScrollsAlchemyClientAppState>()!;
    state.setLocaleLanguageCode(languageCode);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', languageCode);
  }

  @deprecated
  static void setGameName(BuildContext context, String gameName) async {
    _TheElderScrollsAlchemyClientAppState state =
        context.findAncestorStateOfType<_TheElderScrollsAlchemyClientAppState>()!;
    state.setGameName(gameName);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('gameName', gameName);
  }

  @override
  _TheElderScrollsAlchemyClientAppState createState() => _TheElderScrollsAlchemyClientAppState();
}

class _TheElderScrollsAlchemyClientAppState extends State<TheElderScrollsAlchemyClientApp> {
  setLocaleLanguageCode(String languageCode) {
    setState(() {
      // widget.languageCode = languageCode;
    });
  }

  setGameName(String gameName) {
    setState(() {
      // widget.gameName = gameName;
    });
  }

  @override
  Widget build(BuildContext context) {
    String savedGameName = Constant.fallbackGameName;
    String savedLanguage = Constant.fallbackLanguage;

    TheElderScrollsAlchemyClientApp.getSavedGameName().then((value) => savedGameName = value);
    TheElderScrollsAlchemyClientApp.getSavedLanguageCode().then((value) => savedLanguage = value);

    final blocProvider = BlocProvider(
      create: (_) => AppState(
        gameName: savedGameName,
        language: savedLanguage,
      ),
      child: const AppWidget(),
    );

    return blocProvider;
  }
}
