import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/l10n/custom_localization.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/divider_text.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/lists/effects_by_ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/web_link.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IngredientCardLong extends StatefulWidget {
  const IngredientCardLong({Key? key, required this.gameName, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;
  final String gameName;

  @override
  State<StatefulWidget> createState() => _IngredientCardLongState();
}

class _IngredientCardLongState extends State<IngredientCardLong> {
  @override
  Widget build(BuildContext context) {
    SelectableText nameText = SelectableText(
      CustomLocalization.getIngredientName(
          gameName: widget.gameName, englishIngredientName: widget.ingredient.name, context: context),
      textAlign: TextAlign.left,
      style: const TextStyle(
        overflow: TextOverflow.fade,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );

    Widget idText = widget.ingredient.id != null
        ? SelectableText(
            'id: ${widget.ingredient.id}',
            textAlign: TextAlign.left,
          )
        : Container();

    Widget textText = widget.ingredient.text != null
        ? SelectableText(
            widget.ingredient.text!,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 15,
            ),
          )
        : Container();

    Widget weightText = widget.ingredient.weight != null
        ? SelectableText(
            AppLocalizations.of(context)!.ingredientWeight + ': ${widget.ingredient.weight!}',
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 15,
            ),
          )
        : Container();

    Widget valueText = widget.ingredient.value != null
        ? SelectableText(
            AppLocalizations.of(context)!.ingredientValue + ': ${widget.ingredient.value!}',
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 15,
            ),
          )
        : Container();
    Widget harvestProbabilityText = widget.ingredient.harvestProbability != null
        ? SelectableText(
            AppLocalizations.of(context)!.ingredientHarvestProbability + ': ${widget.ingredient.harvestProbability!}',
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 15,
            ),
          )
        : Container();

    Widget link =
        widget.ingredient.uespUrl != null ? WebLink(text: '[uesp]', url: widget.ingredient.uespUrl!) : Container();

    final longCard = Card(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          nameText,
          link,
          idText,
          weightText,
          valueText,
          harvestProbabilityText,
          textText,
          DividerText(text: AppLocalizations.of(context)!.effectsLeftPanel),
          EffectsByIngredient(gameName: widget.gameName, ingredient: widget.ingredient),
        ]),
      ),
    );

    return longCard;
  }
}
