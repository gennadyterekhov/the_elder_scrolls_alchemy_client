import 'package:the_elder_scrolls_alchemy_client/data/morrowind.dart';
import 'package:the_elder_scrolls_alchemy_client/data/oblivion.dart';
import 'package:the_elder_scrolls_alchemy_client/data/skyrim.dart';

class DataSource {
  static Map<String, dynamic> getMap() {
    return _globalMap;
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

  static void checkGameName(String gameName) {
    if (!gameNames.contains(gameName)) {
      throw Exception('Unknown game name');
    }
  }
}
