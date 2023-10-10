import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/ingredient/ingredient_big.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/screens/effect_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/screens/effects_screen.dart';

const String _languageCode = Constant.fallbackLanguage;

Widget createWidget({String languageCode = Constant.fallbackLanguage}) => Container(
      child: MaterialApp(
        locale: Locale(languageCode),
        home: IngredientCardBig(
          gameName: Constant.gameNameSkyrim,
          ingredient:
              Ingredient.fromMap(DataResource.getMap()[Constant.gameNameSkyrim]['ingredients']['Abecean Longfin']),
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
