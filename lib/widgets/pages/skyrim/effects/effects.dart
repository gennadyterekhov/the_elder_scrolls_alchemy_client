import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class EffectsPage extends StatefulWidget {
  const EffectsPage({Key? key}) : super(key: key);

  @override
  State<EffectsPage> createState() => _EffectsPageState();
}

class _EffectsPageState extends State<EffectsPage> {
  List<EffectCardSmall> _getGridItems(Map<String, Effect> effects) {
    final gridItems =
        effects.entries.map((value) => EffectCardSmall(effect: value.value));

    return gridItems.toList();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, Effect> effects = DataProvider.getAllEffects();
    debugPrint('_EffectsPageState.build');
    debugPrint(globalChosenGame);

    return GridView.count(
      crossAxisCount: 4,
      children: _getGridItems(effects),
    );
  }
}
