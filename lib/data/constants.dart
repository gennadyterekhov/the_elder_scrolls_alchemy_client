import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';

class Constant {
  static const String fallbackLanguage = lcEnglish;

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
  static const String skyrimHomeLink = '/${DataSource.gameNameSkyrim}/home';
  static const String oblivionHomeLink = '/${DataSource.gameNameOblivion}/home';
  static const String morrowindHomeLink = '/${DataSource.gameNameMorrowind}/home';

  static const Map<String, String> supportedLanguageCodesToLanguageNamesMap = {
    lcEnglish: 'English',
    lcRussian: 'Русский',
    lcSpanish: 'Español',
    lcFrench: 'Français',
    lcGerman: 'Deutsch',
    lcPolish: 'Polski',
    lcItalian: 'Italiano',
    lcJapanese: '日本語',
    lcChinese: '中文',
  };
}
