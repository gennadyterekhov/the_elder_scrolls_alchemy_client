import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';

class EffectIdText extends StatelessWidget {
  const EffectIdText({
    super.key,
    required this.effect,
  });

  final Effect effect;

  @override
  Widget build(BuildContext context) {
    Widget idText = effect.id != null
        ? SelectableText(
            'id: ${effect.id}',
            textAlign: TextAlign.left,
          )
        : const SizedBox.shrink();
    return idText;
  }
}
