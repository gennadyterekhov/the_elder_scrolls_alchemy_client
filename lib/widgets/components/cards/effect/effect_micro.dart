import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/data/l10n/custom_localization.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class EffectCardMicro extends StatefulWidget {
  const EffectCardMicro({Key? key, required this.gameName, required this.effect, this.fontSize = 30.0})
      : super(key: key);
  final Effect effect;
  final String gameName;
  final double fontSize;

  @override
  State<EffectCardMicro> createState() => _EffectCardMicroState();
}

class _EffectCardMicroState extends State<EffectCardMicro> {
  void _onTap() {
    context.push('/${widget.gameName}/effect/${widget.effect.name}');
  }

  @override
  Widget build(BuildContext context) {
    final label = CustomLocalization.getEffectName(
        gameName: widget.gameName, englishEffectName: widget.effect.name, context: context);

    final effectColor = widget.effect.type == 'positive'
        ? Constant.positiveEffectBackgroundColor
        : Constant.negativeEffectBackgroundColor;

    final text = Text(
      label,
      style: TextStyle(
        fontSize: widget.fontSize,
      ),
    );

    final wrappedCard = Wrap(
      children: [
        Card(
          color: Color(effectColor),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: InkWell(
              splashColor: Color(effectColor),
              focusColor: Color(effectColor),
              highlightColor: Color(effectColor),
              onTap: _onTap,
              child: text,
            ),
          ),
        ),
      ],
    );
    return wrappedCard;
  }
}
