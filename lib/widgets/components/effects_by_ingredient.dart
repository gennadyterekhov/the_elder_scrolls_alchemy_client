import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_elder_scrolls_alchemy_client/data/effect_resource_dynamic.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect_micro.dart';

class EffectsByIngredient extends ConsumerStatefulWidget {
  const EffectsByIngredient({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  @override
  ConsumerState<EffectsByIngredient> createState() => _EffectsByIngredientState();
}

class _EffectsByIngredientState extends ConsumerState<EffectsByIngredient> {
  Effect? _getEffectByIndex(int index) {
    if (index < widget.ingredient.effectsNames.length) {
      final String name = widget.ingredient.effectsNames[index] as String;
      final Effect effect = EffectResourceDynamic(ref.watch(globalGameNameStateProvider)).getEffectByName(name);

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [cards[0], cards[1]],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [cards[2], cards[3]],
      ),
    ]);

    return isVerticalList ? verticalList : horizontalList;
  }
}
