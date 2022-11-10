import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class EffectCardMicro extends ConsumerStatefulWidget {
  const EffectCardMicro({Key? key, required this.effect}) : super(key: key);
  final Effect effect;

  @override
  ConsumerState<EffectCardMicro> createState() => _EffectCardMicroState();
}

class _EffectCardMicroState extends ConsumerState<EffectCardMicro> {
  void _onTap() {
    var gameName = ref.watch(globalGameNameStateProvider);

    context.push('/$gameName/effect/${widget.effect.name}');
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
