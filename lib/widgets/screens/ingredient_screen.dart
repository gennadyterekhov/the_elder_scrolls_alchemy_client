import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/ingredients/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';

class IngredientScreen extends StatelessWidget {
  const IngredientScreen({Key? key, required this.gameName, required this.ingredientName}) : super(key: key);

  final String ingredientName;
  final String gameName;

  @override
  Widget build(BuildContext context) {
    final currentMap = DataSource.getMap()[this.gameName]['ingredients'];
    final ingredient = Ingredient.fromMap(currentMap[ingredientName]);

    return CustomScreen(
        gameName: this.gameName, pageWidget: IngredientPage(gameName: gameName, ingredient: ingredient));
  }
}
