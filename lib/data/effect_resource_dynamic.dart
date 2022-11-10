import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source_dynamic.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class EffectResourceDynamic {
  EffectResourceDynamic(gameName) {
    currentMap = DataSourceDynamic.byGame(gameName).getMap()['effects'];
  }

  String gameName = '';
  Map<String, dynamic> currentMap = {};

  factory EffectResourceDynamic.byGame(String gameName) {
    return EffectResourceDynamic(gameName);
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
      throw Exception('effect not from this game');
    }
    Effect effect = Effect.fromMap(currentMap[name]);

    return effect;
  }

  List<Effect> getEffectsByNames(List<String> names) {
    List<Effect> effects = names.map((name) => (Effect.fromMap(currentMap[name]))).toList();

    return effects;
  }

  String getGameOfEffect(String effectName) {
    for (int i = 0; i < DataSource.gameNames.length; i += 1) {
      Map<String, dynamic> map = DataSource.getMap()[DataSource.gameNames[i]]['effects'];
      if (map.containsKey(effectName)) {
        return DataSource.gameNames[i];
      }
    }
    throw Exception('Effect not found across all these games: ${DataSource.gameNames}');
  }
}
