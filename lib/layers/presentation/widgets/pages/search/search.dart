import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect/effect_small.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/ingredient/ingredient_small.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards_grid.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/search_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // List<Widget> _getEffectsGridItems(List<Effect> effects) {
  //   final gridItems = effects.map((value) => EffectCardSmall(effect: value));

  //   return gridItems.toList();
  // }

  // List<Widget> _getIngredientsGridItems(List<Ingredient> ingredients) {
  //   final gridItems = ingredients.map((value) => IngredientCardSmall(ingredient: value));

  //   return gridItems.toList();
  // }

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

      if (text.length > 2) {
        startSearch(text);
      }
    });
  }

  void startSearch(String text) {
    setState(() {
      _searchQuery = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Effect> effects = []; //EffectResource.searchEffectsByName(_searchQuery);
    final List<Ingredient> ingredients = []; //IngredientResource.searchIngredientsByName(_searchQuery);

    final List<Widget> allCards = [
      // ..._getIngredientsGridItems(ingredients),
      // ..._getEffectsGridItems(effects),
    ];

    final view = Column(
      children: [
        SearchField(controller: searchFieldController),
        Expanded(
          child: CardsGrid(
            cards: allCards,
          ),
        ),
      ],
    );

    return view;
  }
}
