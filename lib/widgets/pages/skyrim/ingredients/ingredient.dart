import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/ingredient.dart';

class IngredientPage extends StatefulWidget {
  const IngredientPage({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  @override
  State<IngredientPage> createState() => _IngredientPageState();
}

class _IngredientPageState extends State<IngredientPage> {
  @override
  Widget build(BuildContext context) {
    return IngredientCard(ingredient: widget.ingredient);
  }
}
