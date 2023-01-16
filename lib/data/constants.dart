import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';

class Constant {
  static String globalUnknown = 'unknown';
  static String skyrimHomeLink = '/${DataSource.gameNameSkyrim}/home';
  static String oblivionHomeLink = '/${DataSource.gameNameOblivion}/home';
  static String morrowindHomeLink = '/${DataSource.gameNameMorrowind}/home';
  static Map<String, String> supportedLanguageCodesToCountryCodesMap = {
    'en': 'gb',
    'ru': 'ru',
    'es': 'es',
    'fr': 'fr',
    'de': 'de',
    'pl': 'pl',
    'it': 'it',
    'ja': 'jp',
    'zh': 'cn',
  };

  static Map<String, String> supportedLanguageCodesToLanguageNamesMap = {
    'en': 'English',
    'ru': 'Русский',
    'es': 'Español',
    'fr': 'Français',
    'de': 'Deutsch',
    'pl': 'Polski',
    'it': 'Italiano',
    'ja': '日本語',
    'zh': '中文',
  };
}
