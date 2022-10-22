import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';

class IngredientResource {
  static List<Ingredient> searchSkyrimIngredientsByName(String name) {
    final Map<String, dynamic> effectsMap = DataSource.getMap()[DataSource.gameNameSkyrim]['ingredients'];
    final List<String> names = effectsMap.keys.toList();

    final searchResultNames = names.where((element) => element.toLowerCase().contains(name)).toList();

    return getSkyrimIngredientsByNames(searchResultNames);
  }

  static List<Ingredient> searchIngredientsByName(String name) {
    final Map<String, dynamic> effectsMap = DataSource.getMap()[globalChosenGame]['ingredients'];
    final List<String> names = effectsMap.keys.toList();

    final searchResultNames = names.where((element) => element.toLowerCase().contains(name)).toList();

    return getIngredientsByNames(searchResultNames);
  }

  static Map<String, Ingredient> getAllIngredients() {
    Map<String, Ingredient> resultMap = {};

    DataSource.getMap()[globalChosenGame]['ingredients']
        .forEach((name, ingredient) => resultMap[name] = Ingredient.fromMap(ingredient));

    return resultMap;
  }

  static Map<String, Ingredient> getAllSkyrimIngredients() {
    Map<String, Ingredient> resultMap = {};

    DataSource.getMap()[DataSource.gameNameSkyrim]['ingredients']
        .forEach((name, ingredient) => resultMap[name] = Ingredient.fromMap(ingredient));

    return resultMap;
  }

  static List<Ingredient> getSkyrimIngredientsByNames(List<String> names) {
    List<Ingredient> ingredients = names
        .map((name) => (Ingredient.fromMap(DataSource.getMap()[DataSource.gameNameSkyrim]['ingredients'][name])))
        .toList();

    return ingredients;
  }

  static List<Ingredient> getIngredientsByNames(List<String> names) {
    List<Ingredient> ingredients =
        names.map((name) => (Ingredient.fromMap(DataSource.getMap()[globalChosenGame]['ingredients'][name]))).toList();

    return ingredients;
  }

  static Ingredient getSkyrimIngredientByName(String name) {
    Ingredient ingredient = Ingredient.fromMap(DataSource.getMap()[DataSource.gameNameSkyrim]['ingredients'][name]);

    return ingredient;
  }

  static Ingredient getIngredientByName(String name) {
    Ingredient ingredient = Ingredient.fromMap(DataSource.getMap()[globalChosenGame]['ingredients'][name]);

    return ingredient;
  }
}
