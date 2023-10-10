import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect/effect_long.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/divider_text.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/lists/ingredients_by_effect.dart';

class EffectCardBig extends StatelessWidget {
  const EffectCardBig({Key? key, required this.gameName, required this.effect}) : super(key: key);
  final Effect effect;
  final String gameName;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            EffectCardLong(gameName: gameName, effect: effect),
            DividerText(text: AppLocalizations.of(context)!.effectCardBigIngredientsWithThisEffect),
            IngredientsByEffect(gameName: gameName, effect: effect),
          ],
        ),
      ),
    );
  }
}
