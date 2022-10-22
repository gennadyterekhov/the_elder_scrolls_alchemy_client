import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/skyrim/effects/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/skyrim/effects/effects.dart';

class EffectScreen extends StatelessWidget {
  const EffectScreen({Key? key, required this.effect}) : super(key: key);
  final Effect effect;

  @override
  Widget build(BuildContext context) {
    return CustomScreen(pageWidget: EffectPage(effect: this.effect));
  }
}
