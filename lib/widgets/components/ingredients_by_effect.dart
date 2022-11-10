import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_elder_scrolls_alchemy_client/data/ingredient_resource_dynamic.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/ingredient_micro.dart';

class IngredientsByEffect extends ConsumerStatefulWidget {
  const IngredientsByEffect({Key? key, required this.effect}) : super(key: key);
  final Effect effect;
  final bool showLabel = false;

  @override
  ConsumerState<IngredientsByEffect> createState() => _IngredientsByEffectState();
}

class _IngredientsByEffectState extends ConsumerState<IngredientsByEffect> {
  List<Ingredient> _getIngredientsByIndex(int index) {
    if (index < widget.effect.ingredientsNamesByPosition.length) {
      final List names = widget.effect.ingredientsNamesByPosition[index];
      final List<Ingredient> ingredients = names
          .map((name) => IngredientResourceDynamic(ref.watch(globalGameNameStateProvider)).getIngredientByName(name))
          .toList();

      return ingredients;
    }
    return [];
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
    if (width > 700) {
      columnsInARow = 2;
    }
    if (width > 900) {
      columnsInARow = 4;
    }

    List<Widget> columns = List.filled(4, Column());

    for (int i = 0; i < 4; i += 1) {
      final cards = _getCards(_getIngredientsByIndex(i));

      final text = Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Text(
          'In position ${i + 1}:',
          style: const TextStyle(color: Colors.grey),
        ),
      );

      final children = cards.isEmpty ? [text, const Text('no ingredients')] : [text, ...cards];
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

    final wrap = Wrap(
      alignment: WrapAlignment.spaceEvenly,
      runAlignment: WrapAlignment.spaceBetween,
      children: columns,
    );

    return wrap;
  }
}
