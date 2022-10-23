import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class EffectCardMicro extends StatefulWidget {
  const EffectCardMicro({Key? key, required this.effect}) : super(key: key);
  final Effect effect;

  @override
  State<StatefulWidget> createState() => _EffectCardMicroState();
}

class _EffectCardMicroState extends State<EffectCardMicro> {
  void _onTap() {
    context.go('/${globalChosenGame}/effect/${widget.effect.name}');
  }

  @override
  Widget build(BuildContext context) {
    final label = globalShowInlineId ? '${widget.effect.name} (${widget.effect.id})' : widget.effect.name;
    final fontSize = globalShowInlineId ? 25.0 : 30.0;

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
