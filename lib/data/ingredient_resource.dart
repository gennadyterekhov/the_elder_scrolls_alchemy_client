import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/exception/wrong_game.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';

class IngredientResource {
  IngredientResource(this.gameName) {
    currentMap = DataSource.getMap()[gameName]['ingredients'];
  }

  String gameName;
  Map<String, dynamic> currentMap = {};

  List<Ingredient> searchIngredientsByName(String name) {
    final List<String> names = currentMap.keys.toList();

    final searchResultNames = names.where((element) => element.toLowerCase().contains(name)).toList();

    return getIngredientsByNames(searchResultNames);
  }

  Map<String, Ingredient> getAllIngredients() {
    Map<String, Ingredient> resultMap = {};

    currentMap.forEach((name, ingredient) => resultMap[name] = Ingredient.fromMap(ingredient));

    return resultMap;
  }

  List<Ingredient> getIngredientsByNames(List<String> names) {
    List<Ingredient> ingredients = names.map((name) => (Ingredient.fromMap(currentMap[name]))).toList();

    return ingredients;
  }

  Ingredient getIngredientByName(String name) {
    if (!currentMap.containsKey(name)) {
      throw WrongGameException(
        message: 'ingredient from another game',
        correctGame: getGameOfIngredient(name),
        wrongGame: gameName,
        subject: name,
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
