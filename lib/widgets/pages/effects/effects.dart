import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_elder_scrolls_alchemy_client/data/effect_resource_dynamic.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect_small.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards_grid.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/search_field.dart';

class EffectsPage extends ConsumerStatefulWidget {
  const EffectsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<EffectsPage> createState() => _EffectsPageState();
}

class _EffectsPageState extends ConsumerState<EffectsPage> {
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

      if (_searchQuery != text) {
        startSearch(text);
      }
    });
  }

  void startSearch(String text) {
    setState(() {
      _searchQuery = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentName = ref.watch(globalGameNameStateProvider);

    final List<Effect> effects = EffectResourceDynamic(currentName).searchEffectsByName(_searchQuery);

    final List<Widget> effectsCards = _getEffectsGridItems(effects);

    return Column(
      children: [
        const Text('Search by Effects'),
        SearchField(controller: searchFieldController),
        Expanded(
          child: CardsGrid(
            cards: effectsCards,
          ),
        ),
      ],
    );
  }
}
