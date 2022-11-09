import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/ingredient_big.dart';

Widget createWidget() => MaterialApp(
      home: IngredientCardBig(
        ingredient: Ingredient.fromMap(DataSource.getMap()[DataSource.gameNameMorrowind]['ingredients']['Bread']),
      ),
    );

void main() {
  group("Test big ingredient card group", () {
// TODO impl
// test morrowind bread (1 eff) and ghoul heart (3 eff)
  });
}
