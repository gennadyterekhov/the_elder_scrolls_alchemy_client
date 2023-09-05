import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect/effect_big.dart';

class EffectPage extends StatefulWidget {
  const EffectPage({Key? key, required this.gameName, required this.effect}) : super(key: key);

  final Effect effect;
  final String gameName;

  @override
  State<EffectPage> createState() => _EffectPageState();
}

class _EffectPageState extends State<EffectPage> {
  @override
  Widget build(BuildContext context) {
    return EffectCardBig(gameName: widget.gameName, effect: widget.effect);
  }
}
