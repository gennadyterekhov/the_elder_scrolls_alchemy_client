import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/pages/effects.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/screens/custom_screen.dart';

class EffectsScreen extends StatelessWidget {
  const EffectsScreen({Key? key, required this.gameName}) : super(key: key);
  final String gameName;

  @override
  Widget build(BuildContext context) {
    return CustomScreen(gameName: this.gameName, pageWidget: EffectsPage(gameName: gameName));
  }
}
