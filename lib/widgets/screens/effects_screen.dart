import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/skyrim/effects/effects.dart';

class EffectsScreen extends StatelessWidget {
  const EffectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      CustomScreen(pageWidget: const EffectsPage());
}
