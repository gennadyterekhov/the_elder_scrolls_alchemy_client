import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/ingredient_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/ingredients/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';

class IngredientScreen extends StatelessWidget {
  const IngredientScreen({Key? key, required this.ingredientName, required this.gameName}) : super(key: key);

  final String ingredientName;
  final String gameName;

  @override
  Widget build(BuildContext context) {
    final ingredient = IngredientResource(gameName).getIngredientByName(ingredientName);

    return CustomScreen(pageWidget: IngredientPage(ingredient: ingredient));
  }
}
