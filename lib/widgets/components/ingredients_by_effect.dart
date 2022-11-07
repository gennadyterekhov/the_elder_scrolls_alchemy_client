import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/ingredient_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/ingredient_micro.dart';

class IngredientsByEffect extends StatefulWidget {
  const IngredientsByEffect({Key? key, required this.effect}) : super(key: key);
  final Effect effect;
  final bool showLabel = false;

  @override
  State<StatefulWidget> createState() => _IngredientsByEffectState();
}

class _IngredientsByEffectState extends State<IngredientsByEffect> {
  List<Ingredient> _getIngredientsByIndex(int index) {
    final List names = widget.effect.ingredientsNamesByPosition![index];

    final List<Ingredient> ingredients = names.map((name) => IngredientResource.getIngredientByName(name)).toList();
    return ingredients;
  }

  List<Widget> _getCards(List<Ingredient> ingredients) {
    final List<Widget> widgets = ingredients.map((e) => IngredientCardMicro(ingredient: e)).toList();
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    int columnsInARow = 1;

    if (width > 550) {
      columnsInARow = 2;
    }
    if (width > 800) {
      columnsInARow = 4;
    }

    final labelRow = widget.showLabel
        ? Row(
            children: [
              Column(children: [Text('In position 1:')]),
              const Spacer(),
              Column(children: [Text('In position 2:')]),
              const Spacer(),
              Column(children: [Text('In position 3:')]),
              const Spacer(),
              Column(children: [Text('In position 4:')]),
            ],
          )
        : const SizedBox.shrink();

    List<Widget> columns = List.filled(4, Column());

    for (int i = 0; i < 4; i += 1) {
      final cards = _getCards(_getIngredientsByIndex(i));
      final children = cards.isEmpty
          ? [Text('In position ${i + 1}:'), const Text('no ingredients')]
          : [Text('In position ${i + 1}:'), ...cards];
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

    if (columnsInARow == 1) {
      return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: columns);
    }
    if (columnsInARow == 2) {
      return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        labelRow,
        Row(
          children: [
            columns[0],
            const Spacer(),
            columns[1],
          ],
        ),
        Row(
          children: [
            columns[2],
            const Spacer(),
            columns[3],
          ],
        ),
      ]);
    }
    if (columnsInARow == 4) {
      return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        labelRow,
        Row(
          children: [
            columns[0],
            const Spacer(),
            columns[1],
            const Spacer(),
            columns[2],
            const Spacer(),
            columns[3],
          ],
        ),
      ]);
    }

    return Column(children: columns);
  }
}
