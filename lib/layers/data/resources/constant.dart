import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/extensions/capitalize.dart';

class Constant {
  static const String fallbackLanguage = lcEnglish;
  static const String fallbackGameName = gameNameSkyrim;

  static const int positiveEffectBackgroundColor = 0xffd4fae3;
  static const int negativeEffectBackgroundColor = 0xfffad4d4;

  static const tabHome = 'home';
  static const tabEffects = 'effects';
  static const tabIngredients = 'ingredients';

  static const gameNameSkyrim = 'skyrim';
  static const gameNameOblivion = 'oblivion';
  static const gameNameMorrowind = 'morrowind';
  static const gameNameTeso = 'teso';
  static const gameNameTesoPresentation = 'TES Online';

  /// lc for languageCode
  static const String lcEnglish = 'en';
  static const String lcRussian = 'ru';
  static const String lcGerman = 'de';
  static const String lcFrench = 'fr';
  static const String lcJapanese = 'ja';
  static const String lcChinese = 'zh';
  static const String lcPolish = 'pl';
  static const String lcItalian = 'it';
  static const String lcSpanish = 'es';

  static const String globalUnknown = 'unknown';

  static const Map<String, String> supportedLanguageCodesToLanguageNamesMap = {
    lcEnglish: 'English',
    lcRussian: 'Русский',
    // lcSpanish: 'Español',
    // lcFrench: 'Français',
    // lcGerman: 'Deutsch',
    // lcPolish: 'Polski',
    // lcItalian: 'Italiano',
    // lcJapanese: '日本語',
    // lcChinese: '中文',
  };

  static String getGameNameForPresentation(String gameName) {
    if (gameName == Constant.gameNameTeso) {
      return Constant.gameNameTesoPresentation;
    }
    return gameName.capitalize();
  }

  static String getHomeLink(String gameName) {
    return '/$gameName/home';
  }
}
