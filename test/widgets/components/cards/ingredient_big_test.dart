import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_elder_scrolls_alchemy_client/data/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/ingredient/ingredient_big.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/effect_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/effects_screen.dart';

const String _languageCode = Constant.fallbackLanguage;

Widget createWidget({String languageCode = Constant.fallbackLanguage}) => Container(
      child: MaterialApp(
        locale: Locale(languageCode),
        home: IngredientCardBig(
          gameName: DataSource.gameNameSkyrim,
          ingredient:
              Ingredient.fromMap(DataSource.getMap()[DataSource.gameNameSkyrim]['ingredients']['Abecean Longfin']),
          // ingredient: Ingredient.fromMap(DataSource.getMap()[DataSource.gameNameMorrowind]['ingredients']['Bread']),
        ),
      ),
    );

void main() {
  Map<String, Object> values = <String, Object>{'languageCode': _languageCode};
  SharedPreferences.setMockInitialValues(values);
  group("Test big ingredient card group", () {
// TODO impl
// test morrowind bread (1 eff) and ghoul heart (3 eff)
  });
}
