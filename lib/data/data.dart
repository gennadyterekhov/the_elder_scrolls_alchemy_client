import 'package:flutter/foundation.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';

class DataProvider {
  static Map<String, Effect> getAllEffects() {
    // TODO this will not work if games have different models. Find out how to make better
    Map<String, Effect> resultMap = {};
    debugPrint('DataProvider.getAllEffects');

    debugPrint(globalChosenGame);

    DataSource.getMap()[globalChosenGame]['effects']
        .forEach((name, effect) => resultMap[name] = Effect.fromMap(effect));

    return resultMap;
  }

  static Map<String, Effect> getAllSkyrimEffects() {
    Map<String, Effect> resultMap = {};

    DataSource.getMap()[DataSource.gameNameSkyrim]['effects']
        .forEach((name, effect) => resultMap[name] = Effect.fromMap(effect));

    return resultMap;
  }

  static Effect getSkyrimEffectByName(String name) {
    Effect effect = Effect.fromMap(
        DataSource.getMap()[DataSource.gameNameSkyrim]['effects'][name]);

    return effect;
  }
}
