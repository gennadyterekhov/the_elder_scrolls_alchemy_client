import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class EffectResource {
  static Map<String, Effect> getAllEffects() {
    // TODO this will not work if games have different models. Find out how to make better
    Map<String, Effect> resultMap = {};
    DataSource.getMap()[globalChosenGame]['effects']
        .forEach((name, effect) => resultMap[name] = Effect.fromMap(effect));

    return resultMap;
  }

  static List<Effect> searchSkyrimEffectsByName(String name) {
    final Map<String, dynamic> effectsMap = DataSource.getMap()[DataSource.gameNameSkyrim]['effects'];
    final List<String> names = effectsMap.keys.toList();

    final searchResultNames = names.where((element) => element.toLowerCase().contains(name)).toList();

    return getSkyrimEffectsByNames(searchResultNames);
  }

  static List<Effect> searchEffectsByName(String name) {
    final Map<String, dynamic> effectsMap = DataSource.getMap()[globalChosenGame]['effects'];
    final List<String> names = effectsMap.keys.toList();

    final searchResultNames = names.where((element) => element.toLowerCase().contains(name)).toList();

    return getEffectsByNames(searchResultNames);
  }

  static Map<String, Effect> getAllSkyrimEffects() {
    Map<String, Effect> resultMap = {};

    DataSource.getMap()[DataSource.gameNameSkyrim]['effects']
        .forEach((name, effect) => resultMap[name] = Effect.fromMap(effect));

    return resultMap;
  }

  static Effect getSkyrimEffectByName(String name) {
    Effect effect = Effect.fromMap(DataSource.getMap()[DataSource.gameNameSkyrim]['effects'][name]);

    return effect;
  }

  static Effect getEffectByName(String name) {
    Effect effect = Effect.fromMap(DataSource.getMap()[globalChosenGame]['effects'][name]);

    return effect;
  }

  static List<Effect> getSkyrimEffectsByNames(List<String> names) {
    List<Effect> effects =
        names.map((name) => (Effect.fromMap(DataSource.getMap()[DataSource.gameNameSkyrim]['effects'][name]))).toList();

    return effects;
  }

  static List<Effect> getEffectsByNames(List<String> names) {
    List<Effect> effects =
        names.map((name) => (Effect.fromMap(DataSource.getMap()[globalChosenGame]['effects'][name]))).toList();

    return effects;
  }
}
