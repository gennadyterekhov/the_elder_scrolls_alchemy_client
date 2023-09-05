import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/storage/l10n/morrowind.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/storage/l10n/oblivion.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/storage/l10n/skyrim.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/storage/morrowind.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/storage/oblivion.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/storage/skyrim.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/storage/teso.dart';

class DataResource {
  static Map<String, dynamic> getMap() {
    return _globalMap;
  }

  static Map<String, Map<String, Map<String, Map<String, String>>>> getLocalizedMap() {
    return _localizedMap;
  }

  static const gameNames = [
    Constant.gameNameTeso,
    Constant.gameNameSkyrim,
    Constant.gameNameOblivion,
    Constant.gameNameMorrowind,
  ];
  static const Map<String, dynamic> _globalMap = {
    "_meta": {},
    Constant.gameNameTeso: TesoData.tesoData,
    Constant.gameNameSkyrim: SkyrimData.skyrimData,
    Constant.gameNameOblivion: OblivionData.oblivionData,
    Constant.gameNameMorrowind: MorrowindData.morrowindData,
  };

  static const Map<String, Map<String, Map<String, Map<String, String>>>> _localizedMap = {
    Constant.gameNameTeso: {},
    Constant.gameNameSkyrim: SkyrimL10nData.skyrimL10nData,
    Constant.gameNameOblivion: OblivionL10nData.oblivionL10nData,
    Constant.gameNameMorrowind: MorrowindL10nData.morrowindL10nData,
  };

  static void checkGameName(String gameName) {
    if (!gameNames.contains(gameName)) {
      throw Exception('Unknown game name: $gameName');
    }
  }
}
