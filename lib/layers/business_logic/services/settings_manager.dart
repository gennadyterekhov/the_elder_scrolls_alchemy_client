import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/settings.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';

class SettingsManager {
  late Settings settings;

  SettingsManager() {
    this.settings = Settings(gameName: Constant.fallbackGameName, language: Constant.fallbackLanguage);
  }
}
