import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect_id_text.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect_magnitude_text.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect_name_text.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect_text_text.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect_type_text.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect_value_text.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/uesp_link.dart';

class EffectCardLong extends StatelessWidget {
  const EffectCardLong({Key? key, required this.gameName, required this.effect}) : super(key: key);
  final Effect effect;
  final String gameName;

  @override
  Widget build(BuildContext context) {
    final longCard = Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EffectNameText(gameName: gameName, effect: effect),
            UespLink(effect: effect),
            EffectIdText(effect: effect),
            EffectTypeText(effect: effect, context: context),
            EffectMagnitudeText(effect: effect, context: context),
            EffectValueText(effect: effect, context: context),
            EffectTextText(effect: effect),
          ],
        ),
      ),
    );

    return longCard;
  }
}
