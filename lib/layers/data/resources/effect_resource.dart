import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/storage/l10n/search_indices.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/exception/not_found.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/exception/wrong_game.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';

class EffectResource {
  late String gameName;
  static const int _searchQueryLengthThreshold = 2;

  Map<String, dynamic> currentMap = {};

  EffectResource({this.gameName = 'skyrim'}) {
    currentMap = DataResource.getMap()[gameName]['effects'];
  }

  factory EffectResource.fromGameName(name) {
    return EffectResource(gameName: name);
  }

  factory EffectResource.fromMap(gameMap) {
    var e = EffectResource();
    e.currentMap = gameMap;
    return e;
  }

  Map<String, Effect> getAllEffects() {
    Map<String, Effect> resultMap = {};
    currentMap.forEach((name, effect) => resultMap[name] = Effect.fromMap(effect));

    return resultMap;
  }

  Effect getEffectByName(String name) {
    if (!currentMap.containsKey(name)) {
      throw NotFoundException(
        message: 'effect',
        subject: name,
        probableCorrectGame: getGameOfEffect(name),
      );
    }
    Effect effect = Effect.fromMap(currentMap[name]);

    return effect;
  }

  List<Effect> getEffectsByNames(List<String> names) {
    List<Effect> effects = names.map((name) => getEffectByName(name)).toList();

    return effects;
  }

  static String getGameOfEffect(String effectName) {
    for (int i = 0; i < DataResource.gameNames.length; i += 1) {
      Map<String, dynamic> map = DataResource.getMap()[DataResource.gameNames[i]]['effects'];
      if (map.containsKey(effectName)) {
        // may return wrong game if effect has same name....
        return DataResource.gameNames[i]; // on burden, will return oblivion even if morrowind also has burden
      }
    }
    throw Exception('Effect $effectName not found across all these games: ${DataResource.gameNames}');
  }

  List<Effect> searchEffectsByName(String nameFromQuery, String languageCode) {
    final List<String> englishNames = currentMap.keys.toList();

    if (nameFromQuery.length <= _searchQueryLengthThreshold) {
      return getEffectsByNames(englishNames);
    }

    List<String> filteredNames =
        englishNames.where((element) => element.toLowerCase().contains(nameFromQuery.toLowerCase())).toList();

    if (languageCode == Constant.lcEnglish) {
      return getEffectsByNames(filteredNames);
    }

    if (languageCode == Constant.lcRussian) {
      ///now there are only russian translations for effects and ingredients
      Map localNameToEnglishNameMap = SearchLocalizedNameIndex.allIndices[this.gameName]!['effects'];
      if (localNameToEnglishNameMap is Map<String, String>) {
        List<String> localNames = localNameToEnglishNameMap.keys.toList();
        final filteredLocalNames =
            localNames.where((element) => element.toLowerCase().contains(nameFromQuery.toLowerCase())).toList();

        for (String foundLocalName in filteredLocalNames) {
          final correspondingEnglishName = localNameToEnglishNameMap[foundLocalName]!;
          filteredNames.add(correspondingEnglishName);
        }

        return getEffectsByNames(filteredNames);
      }
    }

    return getEffectsByNames(filteredNames);
  }
}