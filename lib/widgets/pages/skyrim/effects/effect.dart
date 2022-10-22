import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect_big.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class EffectPage extends StatefulWidget {
  const EffectPage({Key? key, required this.effect}) : super(key: key);

  final Effect effect;
  @override
  State<EffectPage> createState() => _EffectPageState();
}

class _EffectPageState extends State<EffectPage> {
  @override
  Widget build(BuildContext context) {
    return EffectBigCard(effect: widget.effect);
  }
}
