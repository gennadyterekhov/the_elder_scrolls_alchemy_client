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

  @deprecated
  static Future<String> getSavedGameName() async {
    String? gameNameFromPreferences = await getGameNameFromPreferences();
    if (gameNameFromPreferences == null) {
      return Constant.fallbackGameName;
    }
    return gameNameFromPreferences;
  }

  @deprecated
  static String getLocaleLanguageCode(BuildContext context) {
    return Localizations.localeOf(context).languageCode;
  }

  @deprecated
  static Future<String> getSafeLanguageCode() async {
    String? languageCodeFromPreferences = await getLanguageCodeFromPreferences();
    if (languageCodeFromPreferences == null) {
      return Constant.fallbackLanguage;
    }
    return languageCodeFromPreferences;
  }

  @deprecated
  static Future<String?> getLanguageCodeFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final String? languageCode = prefs.getString('languageCode');

    return languageCode;
  }

  @deprecated
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
    final appWidget = AppWidget(
      languageCode: widget.settingsManager.settings.gameName,
      gameName: widget.settingsManager.settings.language,
    );

    final blocProvider = BlocProvider(
      create: (_) => AppState(),
      child: appWidget,
    );

    return blocProvider;
  }
}
