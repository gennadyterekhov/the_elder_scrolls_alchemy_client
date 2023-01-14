import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:the_elder_scrolls_alchemy_client/data/ingredient_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/ingredient_micro.dart';

class IngredientsByEffect extends StatefulWidget {
  const IngredientsByEffect({Key? key, required this.gameName, required this.effect}) : super(key: key);
  final Effect effect;
  final bool showLabel = false;
  final String gameName;
  @override
  State<IngredientsByEffect> createState() => _IngredientsByEffectState();
}

class _IngredientsByEffectState extends State<IngredientsByEffect> {
  List<Ingredient> _getIngredientsByIndex(int index) {
    if (index < widget.effect.ingredientsNamesByPosition.length) {
      final List names = widget.effect.ingredientsNamesByPosition[index];
      final List<Ingredient> ingredients =
          names.map((name) => IngredientResource(gameName: widget.gameName).getIngredientByName(name)).toList();

      return ingredients;
    }
    return [];
  }

  List<Widget> _getCards(List<Ingredient> ingredients) {
    final List<Widget> widgets =
        ingredients.map((e) => IngredientCardMicro(gameName: widget.gameName, ingredient: e)).toList();
    return widgets;
  }

  List<Widget> _getColumns() {
    List<Widget> columns = List.filled(4, Column());

    for (int i = 0; i < 4; i += 1) {
      final cards = _getCards(_getIngredientsByIndex(i));

      final text = Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Text(
          AppLocalizations.of(context)!.ingredientsByEffectInPosition + ' ${i + 1}:',
          style: const TextStyle(color: Colors.grey),
        ),
      );

      final children = cards.isEmpty
          ? [text, Text(AppLocalizations.of(context)!.ingredientsByEffectNoIngredients)]
          : [text, ...cards];
      columns[i] = Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      );
    }
    return columns;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    int columnsInARow = 1;

    if (width > 550) {
      columnsInARow = 2;
    }
    if (width > 700) {
      columnsInARow = 2;
    }
    if (width > 900) {
      columnsInARow = 4;
    }
    var columns;
    try {
      columns = _getColumns();
    } catch (exception) {
      return Column(children: [CupertinoActivityIndicator(), Text(exception.toString())]);
    }

    if (columnsInARow == 1) {
      return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: columns);
    }

    final wrap = Wrap(
      alignment: WrapAlignment.spaceEvenly,
      runAlignment: WrapAlignment.spaceBetween,
      children: columns,
    );

    return wrap;
  }
}
