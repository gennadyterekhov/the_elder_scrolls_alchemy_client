import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/custom_localization.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class EffectCardMicro extends StatefulWidget {
  const EffectCardMicro({Key? key, required this.gameName, required this.effect}) : super(key: key);
  final Effect effect;
  final String gameName;

  @override
  State<EffectCardMicro> createState() => _EffectCardMicroState();
}

class _EffectCardMicroState extends State<EffectCardMicro> {
  void _onTap() {
    context.go('/${widget.gameName}/effect/${widget.effect.name}');
  }

  @override
  Widget build(BuildContext context) {
    final label = CustomLocalization.getEffectName(
        gameName: widget.gameName, englishEffectName: widget.effect.name, context: context);
    final fontSize = 30.0;

    final text = Text(
      label,
      style: TextStyle(fontSize: fontSize),
    );

    final ret = InkWell(
      onTap: _onTap,
      child: text,
    );
    final ret2 = Wrap(
      children: [
        InkWell(
          onTap: _onTap,
          child: text,
        ),
      ],
    );
    return ret2;
  }
}
