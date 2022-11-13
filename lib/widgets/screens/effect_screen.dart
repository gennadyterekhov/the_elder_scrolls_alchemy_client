import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/effect_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/effects/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';

class EffectScreen extends StatelessWidget {
  const EffectScreen({Key? key, required this.effectName, required this.gameName}) : super(key: key);
  final String effectName;
  final String gameName;

  @override
  Widget build(BuildContext context) {
    final effect = EffectResource(gameName).getEffectByName(effectName);
    return CustomScreen(pageWidget: EffectPage(effect: effect));
  }
}
