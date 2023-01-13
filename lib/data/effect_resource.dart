import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/exception/not_found.dart';
import 'package:the_elder_scrolls_alchemy_client/exception/wrong_game.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class EffectResource {
  late String gameName;
  Map<String, dynamic> currentMap = {};

  EffectResource({this.gameName = 'skyrim'}) {
    currentMap = DataSource.getMap()[gameName]['effects'];
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

  List<Effect> searchEffectsByName(String name) {
    final List<String> names = currentMap.keys.toList();

    final searchResultNames = names.where((element) => element.toLowerCase().contains(name.toLowerCase())).toList();

    return getEffectsByNames(searchResultNames);
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
    for (int i = 0; i < DataSource.gameNames.length; i += 1) {
      Map<String, dynamic> map = DataSource.getMap()[DataSource.gameNames[i]]['effects'];
      if (map.containsKey(effectName)) {
        // may return wrong game if effect has same name....
        return DataSource.gameNames[i]; // on burden, will return oblivion even if morrowind also has burden
      }
    }
    throw Exception('Effect $effectName not found across all these games: ${DataSource.gameNames}');
  }
}
