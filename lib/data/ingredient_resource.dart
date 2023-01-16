import 'package:the_elder_scrolls_alchemy_client/data/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/data/l10n/search_indices.dart';
import 'package:the_elder_scrolls_alchemy_client/exception/not_found.dart';
import 'package:the_elder_scrolls_alchemy_client/exception/wrong_game.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';

class IngredientResource {
  String gameName;
  Map<String, dynamic> currentMap = {};
  static const int _searchQueryLengthThreshold = 2;
  IngredientResource({this.gameName = 'skyrim'}) {
    currentMap = DataSource.getMap()[gameName]['ingredients'];
  }

  factory IngredientResource.fromGameName(name) {
    var e = IngredientResource(gameName: name);
    return e;
  }

  factory IngredientResource.fromMap(gameMap) {
    var e = IngredientResource();
    e.currentMap = gameMap;
    return e;
  }

  List<Ingredient> searchIngredientsByName(String nameFromQuery, String languageCode) {
    final List<String> englishNames = currentMap.keys.toList();

    if (nameFromQuery.length <= _searchQueryLengthThreshold) {
      return getIngredientsByNames(englishNames);
    }

    final filteredNames = englishNames.where((element) => element.toLowerCase().contains(nameFromQuery)).toList();

    if (languageCode == Constant.lcEnglish) {
      return getIngredientsByNames(filteredNames);
    }

    if (languageCode == Constant.lcRussian) {
      ///now there are only russian translations for effects and ingredients
      Map<String, String> localNameToEnglishNameMap =
          SearchLocalizedNameIndex.allIndices[this.gameName]!['ingredients']!;
      List<String> localNames = localNameToEnglishNameMap.keys.toList();

      final filteredLocalNames =
          localNames.where((element) => element.toLowerCase().contains(nameFromQuery.toLowerCase())).toList();

      for (String foundLocalName in filteredLocalNames) {
        final correspondingEnglishName = localNameToEnglishNameMap[foundLocalName]!;
        filteredNames.add(correspondingEnglishName);
      }

      return getIngredientsByNames(filteredNames);
    }

    return getIngredientsByNames(filteredNames);
  }

  Map<String, Ingredient> getAllIngredients() {
    Map<String, Ingredient> resultMap = {};

    currentMap.forEach((name, ingredient) => resultMap[name] = Ingredient.fromMap(ingredient));

    return resultMap;
  }

  List<Ingredient> getIngredientsByNames(List<String> names) {
    List<Ingredient> ingredients = names.map((name) => getIngredientByName(name)).toList();

    return ingredients;
  }

  Ingredient getIngredientByName(String name) {
    if (!currentMap.containsKey(name)) {
      throw NotFoundException(
        message: 'ingredient',
        subject: name,
        probableCorrectGame: getGameOfIngredient(name),
      );
    }
    Ingredient ingredient = Ingredient.fromMap(currentMap[name]);

    return ingredient;
  }

  static String getGameOfIngredient(String ingredientName) {
    for (int i = 0; i < DataSource.gameNames.length; i += 1) {
      Map<String, dynamic> map = DataSource.getMap()[DataSource.gameNames[i]]['ingredients'];
      if (map.containsKey(ingredientName)) {
        return DataSource.gameNames[i];
      }
    }
    throw Exception('Ingredient $ingredientName not found across all these games: ${DataSource.gameNames}');
  }
}
