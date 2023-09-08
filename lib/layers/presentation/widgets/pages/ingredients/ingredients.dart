import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/app.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/ingredient_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/state/search_field_toggle.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/ingredient/ingredient_small.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards_grid.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/search_field.dart';

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
    // final searchFieldToggle = Provider.of<SearchFieldToggle>(context);
    final isSearchVisible = false;//searchFieldToggle.isSearchFieldShown;

    final gameName = widget.gameName;
    final String languageCode = TheElderScrollsAlchemyClientApp.getLocaleLanguageCode(context);

    final List<Ingredient> ingredients =
        IngredientResource(gameName: gameName).searchIngredientsByName(_searchQuery, languageCode);

    final List<Widget> ingredientsCards = _getIngredientsGridItems(ingredients);

    return Column(
      children: [
        isSearchVisible ? SearchField(controller: searchFieldController) : Container(),
        Expanded(
          child: CardsGrid(
            cards: ingredientsCards,
          ),
        ),
      ],
    );
  }
}
