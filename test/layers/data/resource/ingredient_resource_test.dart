import 'package:flutter_test/flutter_test.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/ingredient_resource.dart';

void main() {
  group("Test ingredient resource", () {
    test("Test search sorts with respect to localization", () {
      List<Ingredient> ingredients =
          IngredientResource(gameName: Constant.gameNameSkyrim).searchIngredientsByName("flow", "en");

      expect(ingredients.length, 4);
      expect(ingredients[0].name, 'Blue Mountain Flower');
      expect(ingredients[1].name, 'Purple Mountain Flower');
      expect(ingredients[2].name, 'Red Mountain Flower');
      expect(ingredients[3].name, 'Yellow Mountain Flower');

      ingredients = IngredientResource(gameName: Constant.gameNameSkyrim).searchIngredientsByName("цвет", "ru");

      expect(ingredients.length, 6);
      expect(ingredients[0].name, 'Blue Mountain Flower'); // Голубой
      expect(ingredients[1].name, 'Yellow Mountain Flower'); // Желтый
      expect(ingredients[2].name, 'Red Mountain Flower'); // Красный
      expect(ingredients[3].name, 'Purple Mountain Flower'); // Лиловый
      expect(ingredients[4].name, 'Gleamblossom'); // Светящийся
      expect(ingredients[5].name, 'Poison Bloom'); // Ядовитый
    });
  });
}
