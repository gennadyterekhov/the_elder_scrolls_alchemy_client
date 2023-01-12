import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/effects/effects.dart';

class EffectsScreen extends StatelessWidget {
  const EffectsScreen({Key? key, required this.gameName}) : super(key: key);
  final String gameName;

  @override
  Widget build(BuildContext context) {
    return CustomScreen(pageWidget: EffectsPage(gameName: gameName));
  }
}
