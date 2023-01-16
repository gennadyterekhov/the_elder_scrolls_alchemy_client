import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/l10n/custom_localization.dart';

import 'package:the_elder_scrolls_alchemy_client/data/effect_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/data/ingredient_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/ingredient/ingredient_micro.dart';

class CommonIngredientsByColumn extends StatefulWidget {
  const CommonIngredientsByColumn({Key? key, required this.gameName, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;
  final String gameName;

  @override
  State<CommonIngredientsByColumn> createState() => _CommonIngredientsByColumnState();
}

class _CommonIngredientsByColumnState extends State<CommonIngredientsByColumn> {
  List<Ingredient> _getIngredientsByIndex(Effect effect, int index) {
    if (index < effect.ingredientsNamesByPosition.length) {
      final List names = effect.ingredientsNamesByPosition[index];

      final List<Ingredient> ingredients = names
          .where((ingredientName) => ingredientName != widget.ingredient.name)
          .map((name) => IngredientResource(gameName: widget.gameName).getIngredientByName(name))
          .toList();

      return ingredients;
    }

    return [];
  }

  List<Widget> _getIngredientsCardsByEffect(Effect effect, Ingredient currentIngredient) {
    List<Widget> ingredients = [];
    for (var i = 0; i < effect.ingredientsNamesByPosition.length; i += 1) {
      ingredients.addAll(_getCards(_getIngredientsByIndex(effect, i)));
    }

    return ingredients;
  }

  List<Widget> _getCards(List<Ingredient> ingredients) {
    final List<Widget> widgets =
        ingredients.map((e) => IngredientCardMicro(gameName: widget.gameName, ingredient: e)).toList();
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> cards = [];
    for (var i = 0; i < widget.ingredient.effectsNames.length; i += 1) {
      final ingredientsCardsList = _getIngredientsCardsByEffect(
          EffectResource(gameName: widget.gameName).getEffectByName(widget.ingredient.effectsNames[i]),
          widget.ingredient);
      if (ingredientsCardsList.isNotEmpty) {
        cards.add(
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      CustomLocalization.getEffectName(
                        gameName: widget.gameName,
                        englishEffectName: widget.ingredient.effectsNames[i],
                        context: context,
                      ),
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  ...ingredientsCardsList,
                ],
              ),
            ),
          ),
        );
      }
    }

    final commonIngredientsCardsRow = Wrap(
      runAlignment: WrapAlignment.spaceEvenly,
      alignment: WrapAlignment.spaceEvenly,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: cards,
    );

    return commonIngredientsCardsRow;
  }
}
