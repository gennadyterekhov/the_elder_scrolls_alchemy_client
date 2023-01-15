import 'package:the_elder_scrolls_alchemy_client/data/l10n/morrowind.dart';
import 'package:the_elder_scrolls_alchemy_client/data/l10n/oblivion.dart';
import 'package:the_elder_scrolls_alchemy_client/data/l10n/skyrim.dart';
import 'package:the_elder_scrolls_alchemy_client/data/morrowind.dart';
import 'package:the_elder_scrolls_alchemy_client/data/oblivion.dart';
import 'package:the_elder_scrolls_alchemy_client/data/skyrim.dart';

class DataSource {
  static Map<String, dynamic> getMap() {
    return _globalMap;
  }

  static Map<String, dynamic> getLocalizedMap() {
    return _localizedMap;
  }

  static const gameNameSkyrim = 'skyrim';
  static const gameNameOblivion = 'oblivion';
  static const gameNameMorrowind = 'morrowind';
  static const gameNames = [
    gameNameSkyrim,
    gameNameOblivion,
    gameNameMorrowind,
  ];
  static const Map<String, dynamic> _globalMap = {
    "_meta": {},
    gameNameSkyrim: SkyrimData.skyrimData,
    gameNameOblivion: OblivionData.oblivionData,
    gameNameMorrowind: MorrowindData.morrowindData,
  };

  static const Map<String, Map<String, Map<String, Map<String, String>>>> _localizedMap = {
    gameNameSkyrim: SkyrimL10nData.skyrimL10nData,
    gameNameOblivion: OblivionL10nData.oblivionL10nData,
    gameNameMorrowind: MorrowindL10nData.morrowindL10nData,
  };

  static void checkGameName(String gameName) {
    if (!gameNames.contains(gameName)) {
      throw Exception('Unknown game name');
    }
  }
}
