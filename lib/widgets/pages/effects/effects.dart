import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_elder_scrolls_alchemy_client/data/effect_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/data/provider.dart';
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

  List<Effect> searchEffectsByName(currentMap, String name) {
    final List<String> names = currentMap.keys.toList();

    final searchResultNames = names.where((element) => element.toLowerCase().contains(name.toLowerCase())).toList();

    return getEffectsByNames(currentMap, searchResultNames);
  }

  List<Effect> getEffectsByNames(currentMap, List<String> names) {
    List<Effect> effects = names.map((name) => (Effect.fromMap(currentMap[name]))).toList();

    return effects;
  }

  @override
  Widget build(BuildContext context) {
    // var currentName = ref.watch(globalGameNameStateProvider);
    final isSearchShown = ref.watch(globalIsSearchShownStateProvider);
    Map<String, dynamic> currentMap = ref.watch(globalCurrentGameMapProvider)['effects'];

    final List<Effect> effects = searchEffectsByName(currentMap, _searchQuery);

    final List<Widget> effectsCards = _getEffectsGridItems(effects);

    return Column(
      children: [
        isSearchShown ? SearchField(controller: searchFieldController) : Container(),
        Expanded(
          child: CardsGrid(
            cards: effectsCards,
          ),
        ),
      ],
    );
  }
}
