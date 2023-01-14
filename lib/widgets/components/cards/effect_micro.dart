import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:go_router/go_router.dart';
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
    final label = widget.effect.name;
    final fontSize = 30.0;

    final text = Text(
      label,
      style: TextStyle(fontSize: fontSize),
    );

    return InkWell(
      onTap: _onTap,
      child: text,
    );
  }
}
