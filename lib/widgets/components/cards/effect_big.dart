import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/ingredients_by_effect.dart';

class EffectBigCard extends StatelessWidget {
  const EffectBigCard({Key? key, required this.effect}) : super(key: key);
  final Effect effect;

  @override
  Widget build(BuildContext context) {
    SelectableText nameText = SelectableText(
      this.effect.name,
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );

    Widget textText = this.effect.text != null
        ? SelectableText(
            this.effect.text!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
            ),
          )
        : Container();

    Widget idText = effect.id != null
        ? SelectableText(
            'id: ${effect.id}',
            textAlign: TextAlign.left,
          )
        : Container();

    Widget magnitudeText = effect.magnitude != null ? Text('magnitude: ${effect.magnitude}') : Container();

    Widget valueText = effect.value != null ? Text('value: ${effect.value}') : Container();

    return Card(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(children: [
          Row(
            children: [nameText],
          ),
          Row(
            children: [idText],
          ),
          // Spacer(),
          Row(
            children: [textText],
          ),
          // Spacer(),
          Row(
            children: [magnitudeText],
          ),
          Row(
            children: [valueText],
          ),
          // Spacer(),
          Text(''),

          Row(
            children: [Text('Ingredients that have this effect:')],
          ),
          // Spacer(),
          IngredientsByEffect(effect: this.effect),
          Spacer(),
        ]),
      ),
    );
  }
}
