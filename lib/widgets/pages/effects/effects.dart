import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/data/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/data/effect_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/data/l10n/search_indices.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/state/search_field_toggle.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect/effect_small.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards_grid.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/search_field.dart';

class EffectsPage extends StatefulWidget {
  const EffectsPage({Key? key, required this.gameName}) : super(key: key);
  final String gameName;

  @override
  State<EffectsPage> createState() => _EffectsPageState();
}

class _EffectsPageState extends State<EffectsPage> {
  final searchFieldController = TextEditingController();
  String _searchQuery = ''; //TODO issue-76

  List<Widget> _getEffectsGridItems(List<Effect> effects) {
    final gridItems = effects.map((value) => EffectCardSmall(gameName: widget.gameName, effect: value));

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
    final searchFieldToggle = Provider.of<SearchFieldToggle>(context);
    final bool isSearchVisible = searchFieldToggle.isSearchFieldShown;

    final String languageCode = MyApp.getLocaleLanguageCode(context);

    final List<Effect> effects =
        EffectResource(gameName: widget.gameName).searchEffectsByName(_searchQuery, languageCode);

    final List<Widget> effectsCards = _getEffectsGridItems(effects);

    return Column(
      children: [
        isSearchVisible ? SearchField(controller: searchFieldController) : Container(),
        Expanded(
          child: CardsGrid(
            cards: effectsCards,
          ),
        ),
      ],
    );
  }
}
