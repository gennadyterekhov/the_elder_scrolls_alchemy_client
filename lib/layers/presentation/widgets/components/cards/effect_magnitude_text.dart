import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';

class EffectMagnitudeText extends StatelessWidget {
  const EffectMagnitudeText({
    super.key,
    required this.effect,
    required this.context,
  });

  final Effect effect;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    Widget magnitudeText = effect.magnitude != null
        ? Text('${AppLocalizations.of(context)!.effectMagnitude}: ${effect.magnitude}')
        : const SizedBox.shrink();
    return magnitudeText;
  }
}
