import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/effect_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect_small.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/search_field.dart';

class EffectsPage extends StatefulWidget {
  const EffectsPage({Key? key}) : super(key: key);

  @override
  State<EffectsPage> createState() => _EffectsPageState();
}

class _EffectsPageState extends State<EffectsPage> {
  final searchFieldController = TextEditingController();
  String _searchQuery = '';
  List<Widget> _getEffectsGridItems(List<Effect> effects) {
    final gridItems = effects.map((value) => EffectCardSmall(effect: value));

    return gridItems.toList();
  }

  @override
  void dispose() {
    searchFieldController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    searchFieldController.addListener(() {
      final String text = searchFieldController.text.toLowerCase();

      startSearch(text);
    });
  }

  void startSearch(String text) {
    setState(() {
      _searchQuery = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Effect> effects = EffectResource.searchEffectsByName(_searchQuery);

    final List<Widget> effectsCards = _getEffectsGridItems(effects);

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

    final grid = GridView.count(
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      childAspectRatio: childAspectRatio,
      crossAxisCount: crossAxisCount,
      children: effectsCards,
    );

    final gridWidget = Expanded(child: grid);

    return Column(
      children: [
        const Text('Search by Effects'),
        SearchField(controller: searchFieldController),
        gridWidget,
      ],
    );
  }
}
