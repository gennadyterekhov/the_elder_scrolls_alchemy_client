import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/ingredients_by_effect.dart';
import 'package:url_launcher/url_launcher.dart';

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
            textAlign: TextAlign.left,
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
    Widget typeText = effect.type != null
        ? SelectableText(
            'type: ${effect.type}',
            textAlign: TextAlign.left,
          )
        : Container();

    Widget magnitudeText = effect.magnitude != null ? Text('magnitude: ${effect.magnitude}') : Container();

    Widget valueText = effect.value != null ? Text('value: ${effect.value}') : Container();
    Widget link = Container();
    if (effect.uespUrl != null) {
      link = Row(
        children: [
          InkWell(
            child: Text(
              '[uesp]',
              style: TextStyle(color: Colors.blue),
            ),
            onTap: () => launch(effect.uespUrl!),
          ),
        ],
      );
    }
    final listView = [
      nameText,
      link,
      idText,
      typeText,
      magnitudeText,
      valueText,
      textText,
      Text(''),
      Text('Ingredients that have this effect:'),
      IngredientsByEffect(effect: this.effect),
    ];

    final bigCard = Card(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: listView),
      ),
    );
    final height = MediaQuery.of(context).size.height;
    final box = ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: height,
      ),
      child: bigCard,
    );

    return SingleChildScrollView(
      child: box,
    );
  }
}
