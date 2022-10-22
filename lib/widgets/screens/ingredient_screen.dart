import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/skyrim/ingredients/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';

class IngredientScreen extends StatelessWidget {
  const IngredientScreen({Key? key, required this.ingredient}) : super(key: key);

  final Ingredient ingredient;
  @override
  Widget build(BuildContext context) => CustomScreen(pageWidget: IngredientPage(ingredient: ingredient));
}
