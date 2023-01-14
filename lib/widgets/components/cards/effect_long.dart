import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/web_link.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EffectCardLong extends StatelessWidget {
  const EffectCardLong({Key? key, required this.effect}) : super(key: key);
  final Effect effect;

  @override
  Widget build(BuildContext context) {
    SelectableText nameText = SelectableText(
      effect.name,
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );

    Widget textText = effect.text != null
        ? SelectableText(
            effect.text!,
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
            AppLocalizations.of(context)!.effectType + ': ${effect.type}',
            textAlign: TextAlign.left,
          )
        : Container();

    Widget magnitudeText = effect.magnitude != null
        ? Text(AppLocalizations.of(context)!.effectMagnitude + ': ${effect.magnitude}')
        : Container();

    Widget valueText =
        effect.value != null ? Text(AppLocalizations.of(context)!.effectValue + ': ${effect.value}') : Container();

    Widget link = effect.uespUrl != null ? WebLink(text: '[uesp]', url: effect.uespUrl!) : Container();

    final listView = [
      nameText,
      link,
      idText,
      typeText,
      magnitudeText,
      valueText,
      textText,
    ];

    final longCard = Card(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: listView,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );

    return longCard;
  }
}
