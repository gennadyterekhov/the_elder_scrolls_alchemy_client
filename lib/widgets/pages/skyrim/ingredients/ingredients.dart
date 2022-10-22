import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/ingredient_small.dart';

class IngredientsPage extends StatefulWidget {
  const IngredientsPage({Key? key}) : super(key: key);

  @override
  State<IngredientsPage> createState() => _IngredientsPageState();
}

class _IngredientsPageState extends State<IngredientsPage> {
  List<IngredientCardSmall> _getGridItems(Map<String, Ingredient> ingredients) {
    final gridItems = ingredients.entries.map((value) => IngredientCardSmall(ingredient: value.value));

    return gridItems.toList();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, Ingredient> ingredients = DataProvider.getAllSkyrimIngredients();

    return GridView.count(
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      childAspectRatio: 1.4,
      crossAxisCount: 4,
      children: _getGridItems(ingredients),
    );
  }
}
