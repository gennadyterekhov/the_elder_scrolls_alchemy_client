import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';

class EffectTextText extends StatelessWidget {
  const EffectTextText({
    super.key,
    required this.effect,
  });

  final Effect effect;

  @override
  Widget build(BuildContext context) {
    Widget textText = effect.text != null
        ? SelectableText(
            effect.text!,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 15,
            ),
          )
        : const SizedBox.shrink();
    return textText;
  }
}
