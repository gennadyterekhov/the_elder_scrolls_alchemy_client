import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect_micro.dart';

class EffectsByIngredient extends StatelessWidget {
  const EffectsByIngredient({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  Effect _getEffectByIndex(int index) {
    final String name = this.ingredient.effectsNames![index] ?? 'Cure Disease'; //TODO: remove hardcode

    final Effect effect = DataProvider.getSkyrimEffectByName(name);
    return effect;
  }

  Widget _getCard(Effect effect) {
    return EffectCardMicro(effect: effect);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> cards = List.filled(4, Column());
    for (int i = 0; i < 4; i += 1) {
      final card = _getCard(_getEffectByIndex(i));
      cards[i] = card;
    }

    return Column(children: [
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
  }
}
