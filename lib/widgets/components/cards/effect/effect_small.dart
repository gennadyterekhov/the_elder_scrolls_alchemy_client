import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/data/l10n/custom_localization.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EffectCardSmall extends StatefulWidget {
  const EffectCardSmall({Key? key, required this.gameName, required this.effect}) : super(key: key);
  final Effect effect;
  final String gameName;

  @override
  State<EffectCardSmall> createState() => _EffectCardSmallState();
}

class _EffectCardSmallState extends State<EffectCardSmall> {
  @override
  Widget build(BuildContext context) {
    final gameName = widget.gameName;
    Text nameText = Text(
      CustomLocalization.getEffectName(
          gameName: widget.gameName, englishEffectName: widget.effect.name, context: context),
      textAlign: TextAlign.center,
      overflow: TextOverflow.visible,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );

    final extension = gameName == DataSource.gameNameMorrowind ? 'jpg' : 'png';

    final rowWithImage = Wrap(
      children: [
        Image(
          width: 32,
          height: 32,
          image: AssetImage('assets/img/${gameName}/effects/${widget.effect.name}.$extension'),
        ),
        Container(margin: const EdgeInsets.only(left: 8.0), child: nameText),
      ],
    );

    final inkWell = InkWell(
      onTap: (() {
        context.push('/${gameName}/effect/${widget.effect.name}');
      }),
      child: rowWithImage,
    );
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: inkWell,
    ));
  }
}
