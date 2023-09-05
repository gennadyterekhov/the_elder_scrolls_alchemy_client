import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/custom_localization.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EffectCardSmall extends StatefulWidget {
  const EffectCardSmall({Key? key, required this.gameName, required this.effect}) : super(key: key);
  final Effect effect;
  final String gameName;

  @override
  State<EffectCardSmall> createState() => _EffectCardSmallState();
}

class _EffectCardSmallState extends State<EffectCardSmall> {
  Widget getEffectCard() {
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
    if (widget.gameName == Constant.gameNameSkyrim) {
      return nameText;
    }
    final extension = widget.gameName == Constant.gameNameMorrowind ? 'jpg' : 'png';

    final rowWithImage = Wrap(
      children: [
        Image(
          width: 32,
          height: 32,
          image: AssetImage('assets/img/${widget.gameName}/effects/${widget.effect.name}.$extension'),
        ),
        Container(margin: const EdgeInsets.only(left: 8.0), child: nameText),
      ],
    );
    return rowWithImage;
  }

  @override
  Widget build(BuildContext context) {
    final effectCard = getEffectCard();

    final inkWell = InkWell(
      onTap: (() {
        context.push('/${widget.gameName}/effect/${widget.effect.name}');
      }),
      child: effectCard,
    );

    final int effectColor = (widget.effect.type == 'positive')
        ? Constant.positiveEffectBackgroundColor
        : Constant.negativeEffectBackgroundColor;

    return Card(
      color: Color(effectColor),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: inkWell,
      ),
    );
  }
}
