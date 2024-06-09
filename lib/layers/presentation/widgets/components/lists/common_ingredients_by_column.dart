import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/custom_localization.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/effect_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/ingredient_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/ingredient/ingredient_micro.dart';

import '../../../../../app.dart';

class CommonIngredientsByColumn extends StatefulWidget {
  const CommonIngredientsByColumn({Key? key, required this.gameName, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;
  final String gameName;

  @override
  State<CommonIngredientsByColumn> createState() => _CommonIngredientsByColumnState();
}

class _CommonIngredientsByColumnState extends State<CommonIngredientsByColumn> {
  List<dynamic> _getIngredientsNamesByIndex(Effect effect, int index) {
    if (index < effect.ingredientsNamesByPosition.length) {
      return effect.ingredientsNamesByPosition[index];
    }
    return [];
  }

  List<Ingredient> _getIngredientsByNames(List<String> names) {
    final List<Ingredient> ingredients = names
        .where((ingredientName) => ingredientName != widget.ingredient.name)
        .map((name) => IngredientResource(gameName: widget.gameName).getIngredientByName(name))
        .toList();

    return ingredients;
  }

  List<Widget> _getIngredientsCardsByEffect(BuildContext context, Effect effect, Ingredient currentIngredient) {
    List<String> names = [];
    List<dynamic> tempDynamicNames = [];

    for (var i = 0; i < effect.ingredientsNamesByPosition.length; i += 1) {
      tempDynamicNames = _getIngredientsNamesByIndex(effect, i);
      for (var j = 0; j < tempDynamicNames.length; j += 1) {
        if (tempDynamicNames[j] is String && !names.contains(tempDynamicNames[j])) {
          names.add(tempDynamicNames[j]);
        }
      }
    }

    names.sort((dynamic a, dynamic b) {
      final aLocalized = CustomLocalization.getIngredientName(
        gameName: widget.gameName,
        englishIngredientName: a,
        languageCode: TheElderScrollsAlchemyClientApp.getLocaleLanguageCode(context),
      );
      final bLocalized = CustomLocalization.getIngredientName(
        gameName: widget.gameName,
        englishIngredientName: b,
        languageCode: TheElderScrollsAlchemyClientApp.getLocaleLanguageCode(context),
      );
      return aLocalized.compareTo(bLocalized);
    });

    List<Widget> ingredients = [];
    ingredients.addAll(_getCards(_getIngredientsByNames(names)));

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
          context,
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
                        languageCode: TheElderScrollsAlchemyClientApp.getLocaleLanguageCode(context),
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
