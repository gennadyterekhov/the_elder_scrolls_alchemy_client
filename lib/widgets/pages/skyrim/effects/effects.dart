import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/effect_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect_small.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class EffectsPage extends StatefulWidget {
  const EffectsPage({Key? key}) : super(key: key);

  @override
  State<EffectsPage> createState() => _EffectsPageState();
}

class _EffectsPageState extends State<EffectsPage> {
  List<EffectCardSmall> _getGridItems(Map<String, Effect> effects) {
    final gridItems = effects.entries.map((value) => EffectCardSmall(effect: value.value));

    return gridItems.toList();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, Effect> effects = EffectResource.getAllEffects();

    final width = MediaQuery.of(context).size.width;

    int crossAxisCount = 1;
    double childAspectRatio = 3;
    if (width > 370) {
      crossAxisCount = 2;
      childAspectRatio = 2;
    }
    if (width > 550) {
      crossAxisCount = 3;
      childAspectRatio = 2;
    }
    if (width > 800) {
      crossAxisCount = 4;
      childAspectRatio = 1.6;
    }

    return GridView.count(
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      childAspectRatio: childAspectRatio,
      crossAxisCount: crossAxisCount,
      children: _getGridItems(effects),
    );
  }
}
