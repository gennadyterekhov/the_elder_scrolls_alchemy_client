import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:the_elder_scrolls_alchemy_client/data/effect_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect/effect_micro.dart';

class EffectsByIngredient extends StatefulWidget {
  const EffectsByIngredient({Key? key, required this.gameName, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;
  final String gameName;
  @override
  State<EffectsByIngredient> createState() => _EffectsByIngredientState();
}

class _EffectsByIngredientState extends State<EffectsByIngredient> {
  Effect? _getEffectByIndex(int index) {
    if (index < widget.ingredient.effectsNames.length) {
      final String name = widget.ingredient.effectsNames[index] as String;
      final Effect effect = EffectResource(gameName: widget.gameName).getEffectByName(name);

      return effect;
    }

    return null;
  }

  Widget _getCard(Effect? effect, double fontSize) {
    return effect != null
        ? EffectCardMicro(
            gameName: widget.gameName,
            effect: effect,
            fontSize: fontSize,
          )
        : Card(
            child: Text(AppLocalizations.of(context)!.effectsByIngredientNoEffectInThisPosition),
          );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    double fontSize = 30.0;

    bool isVerticalList = true;

    if (width > 800) {
      isVerticalList = false;
    }
    if (width < 750) {
      fontSize = 25.0;
    }
    if (width < 550) {
      fontSize = 20.0;
    }

    List<Widget> cards = List.filled(4, Column());
    for (int i = 0; i < 4; i += 1) {
      final card = _getCard(_getEffectByIndex(i), fontSize);
      cards[i] = card;
    }

    final verticalList = Wrap(
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.spaceBetween,
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: 30,
      runSpacing: 10,
      children: cards,
    );

    final horizontalList = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          runAlignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 30,
          children: [cards[0], cards[1]],
        ),
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          runAlignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 30,
          children: [cards[2], cards[3]],
        ),
      ],
    );

    return isVerticalList ? verticalList : horizontalList;
  }
}
