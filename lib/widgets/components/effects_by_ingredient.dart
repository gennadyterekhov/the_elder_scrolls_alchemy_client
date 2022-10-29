import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data.dart';
import 'package:the_elder_scrolls_alchemy_client/data/effect_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect_micro.dart';

class EffectsByIngredient extends StatefulWidget {
  const EffectsByIngredient({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  @override
  State<StatefulWidget> createState() => _EffectsByIngredientState();
}

class _EffectsByIngredientState extends State<EffectsByIngredient> {
  Effect? _getEffectByIndex(int index) {
    final List<dynamic> effectNames = widget.ingredient.effectsNames;
    if (index < widget.ingredient.effectsNames.length) {
      final String name = widget.ingredient.effectsNames[index] as String;

      final Effect effect = EffectResource.getEffectByName(name);
      return effect;
    }
    return null;
  }

  Widget _getCard(Effect? effect) {
    return effect != null
        ? EffectCardMicro(effect: effect)
        : const Card(
            child: Text('No effect in this position'),
          );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> cards = List.filled(4, Column());
    for (int i = 0; i < 4; i += 1) {
      final card = _getCard(_getEffectByIndex(i));
      cards[i] = card;
    }

    final width = MediaQuery.of(context).size.width;
    bool isVerticalList = true;

    if (width > 800) {
      isVerticalList = false;
    }

    final verticalList = Column(
        mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch, children: cards);

    final horizontalList = Column(children: [
      Row(
        children: [
          cards[0],
          const Spacer(),
          cards[1],
        ],
      ),
      Row(
        children: [
          cards[2],
          const Spacer(),
          cards[3],
        ],
      ),
    ]);

    return isVerticalList ? verticalList : horizontalList;
  }
}
