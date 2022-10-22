import 'package:flutter/foundation.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';

class DataProvider {
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

  static List<Ingredient> searchSkyrimIngredientsByName(String name) {
    final Map<String, dynamic> effectsMap = DataSource.getMap()[DataSource.gameNameSkyrim]['ingredients'];
    final List<String> names = effectsMap.keys.toList();

    final searchResultNames = names.where((element) => element.toLowerCase().contains(name)).toList();

    return getSkyrimIngredientsByNames(searchResultNames);
  }

  static Map<String, Effect> getAllSkyrimEffects() {
    Map<String, Effect> resultMap = {};

    DataSource.getMap()[DataSource.gameNameSkyrim]['effects']
        .forEach((name, effect) => resultMap[name] = Effect.fromMap(effect));

    return resultMap;
  }

  static Map<String, Ingredient> getAllSkyrimIngredients() {
    Map<String, Ingredient> resultMap = {};

    DataSource.getMap()[DataSource.gameNameSkyrim]['ingredients']
        .forEach((name, ingredient) => resultMap[name] = Ingredient.fromMap(ingredient));

    return resultMap;
  }

  static Effect getSkyrimEffectByName(String name) {
    Effect effect = Effect.fromMap(DataSource.getMap()[DataSource.gameNameSkyrim]['effects'][name]);

    return effect;
  }

  static List<Effect> getSkyrimEffectsByNames(List<String> names) {
    List<Effect> effects =
        names.map((name) => (Effect.fromMap(DataSource.getMap()[DataSource.gameNameSkyrim]['effects'][name]))).toList();

    return effects;
  }

  static List<Ingredient> getSkyrimIngredientsByNames(List<String> names) {
    List<Ingredient> ingredients = names
        .map((name) => (Ingredient.fromMap(DataSource.getMap()[DataSource.gameNameSkyrim]['ingredients'][name])))
        .toList();

    return ingredients;
  }

  static Ingredient getSkyrimIngredientByName(String name) {
    Ingredient ingredient = Ingredient.fromMap(DataSource.getMap()[DataSource.gameNameSkyrim]['ingredients'][name]);

    return ingredient;
  }
}
