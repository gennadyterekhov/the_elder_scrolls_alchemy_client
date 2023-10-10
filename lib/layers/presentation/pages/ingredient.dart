import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/ingredient/ingredient_big.dart';

class IngredientPage extends StatefulWidget {
  const IngredientPage({Key? key, required this.gameName, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;
  final String gameName;

  @override
  State<IngredientPage> createState() => _IngredientPageState();
}

class _IngredientPageState extends State<IngredientPage> {
  @override
  Widget build(BuildContext context) {
    return IngredientCardBig(gameName: widget.gameName, ingredient: widget.ingredient);
  }
}
