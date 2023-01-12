import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_elder_scrolls_alchemy_client/data/ingredient_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/data/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/ingredient_small.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards_grid.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/search_field.dart';

class IngredientsPage extends StatefulWidget {
  IngredientsPage({Key? key, required this.gameName}) : super(key: key);
  String gameName;

  @override
  State<IngredientsPage> createState() => _IngredientsPageState();
}

class _IngredientsPageState extends State<IngredientsPage> {
  List<IngredientCardSmall> _getGridItems(Map<String, Ingredient> ingredients) {
    final gridItems =
        ingredients.entries.map((value) => IngredientCardSmall(gameName: widget.gameName, ingredient: value.value));

    return gridItems.toList();
  }

  final searchFieldController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    searchFieldController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    searchFieldController.addListener(() {
      final String text = searchFieldController.text.toLowerCase();

      startSearch(text);
    });
  }

  void startSearch(String text) {
    setState(() {
      _searchQuery = text;
    });
  }

  List<Widget> _getIngredientsGridItems(List<Ingredient> ingredients) {
    final gridItems = ingredients.map((value) => IngredientCardSmall(gameName: widget.gameName, ingredient: value));

    return gridItems.toList();
  }

  @override
  Widget build(BuildContext context) {
    // final isSearchShown = ref.watch(globalIsSearchShownStateProvider);
    final isSearchShown = true;

    final gameName = widget.gameName;

    final List<Ingredient> ingredients = IngredientResource(gameName: gameName).searchIngredientsByName(_searchQuery);

    final List<Widget> ingredientsCards = _getIngredientsGridItems(ingredients);

    return Column(
      children: [
        isSearchShown ? SearchField(controller: searchFieldController) : Container(),
        Expanded(
          child: CardsGrid(
            cards: ingredientsCards,
          ),
        ),
      ],
    );
  }
}
