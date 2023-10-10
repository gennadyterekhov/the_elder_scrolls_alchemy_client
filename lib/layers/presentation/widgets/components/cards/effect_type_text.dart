import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';

class EffectTypeText extends StatelessWidget {
  const EffectTypeText({
    super.key,
    required this.effect,
    required this.context,
  });

  final Effect effect;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    Widget typeText = effect.type != null
        ? SelectableText(
            '${AppLocalizations.of(context)!.effectType}: ${effect.type}',
            textAlign: TextAlign.left,
          )
        : const SizedBox.shrink();
    return typeText;
  }
}
