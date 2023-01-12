import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect_long.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/divider_text.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/ingredients_by_effect.dart';

class EffectCardBig extends StatelessWidget {
  const EffectCardBig({Key? key, required this.gameName, required this.effect}) : super(key: key);
  final Effect effect;
  final String gameName;

  @override
  Widget build(BuildContext context) {
    final listView = [
      EffectCardLong(effect: effect),
      const DividerText(text: 'Ingredients with this effect'),
      IngredientsByEffect(gameName: this.gameName, effect: effect),
    ];

    final cards = Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: listView);

    final height = MediaQuery.of(context).size.height;
    final box = ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: height,
      ),
      child: cards,
    );

    return SingleChildScrollView(
      child: box,
    );
  }
}
