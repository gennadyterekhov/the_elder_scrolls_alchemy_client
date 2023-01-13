import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/data/effect_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/effects/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';

class EffectScreen extends StatelessWidget {
  const EffectScreen({Key? key, required this.gameName, required this.effectName}) : super(key: key);
  final String effectName;
  final String gameName;

  @override
  Widget build(BuildContext context) {
    final effect = Effect.fromMap(DataSource.getMap()[this.gameName]['effects'][effectName]);

    return CustomScreen(gameName: this.gameName, pageWidget: EffectPage(gameName: this.gameName, effect: effect));
  }
}
