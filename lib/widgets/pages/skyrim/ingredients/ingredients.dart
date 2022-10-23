import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data.dart';
import 'package:the_elder_scrolls_alchemy_client/data/ingredient_resource.dart';
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
    Map<String, Ingredient> ingredients = IngredientResource.getAllIngredients();
    final width = MediaQuery.of(context).size.width;

    int crossAxisCount = 1;
    double childAspectRatio = 3;
    if (width > 370) {
      crossAxisCount = 2;
      childAspectRatio = 2;
    }
    if (width > 550) {
      crossAxisCount = 3;
      childAspectRatio = 2;
    }
    if (width > 800) {
      crossAxisCount = 4;
      childAspectRatio = 1.6;
    }
    return GridView.count(
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      childAspectRatio: childAspectRatio,
      crossAxisCount: crossAxisCount,
      children: _getGridItems(ingredients),
    );
  }
}
