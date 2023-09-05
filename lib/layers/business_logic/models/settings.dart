import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';

class Settings {
  Settings({
    required this.gameName,
    required this.language,
  });
  final String gameName;
  final String language;

  factory Settings.fromMap(Map<String, String> data) {
    final gameName = data.containsKey('gameName') ? data['gameName'] as String : Constant.fallbackGameName;
    final language = data.containsKey('language') ? data['language'] as String : Constant.fallbackLanguage;

    return Settings(
      gameName: gameName,
      language: language,
    );
  }
}
