import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/custom_localization.dart';

class EffectNameText extends StatelessWidget {
  const EffectNameText({Key? key, required this.gameName, required this.effect}) : super(key: key);
  final Effect effect;
  final String gameName;

  @override
  Widget build(BuildContext context) {
    final nameText = SelectableText(
      CustomLocalization.getEffectName(gameName: gameName, englishEffectName: effect.name, context: context),
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );

    return nameText;
  }
}
