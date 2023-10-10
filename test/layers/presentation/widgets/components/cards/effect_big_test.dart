import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect/effect_big.dart';

Widget createWidget() => MaterialApp(
      locale: Locale(Constant.fallbackLanguage),
      home: EffectCardBig(
        gameName: Constant.gameNameSkyrim,
        effect: Effect.fromMap(DataResource.getMap()[Constant.gameNameSkyrim]['effects']['Cure Disease']),
      ),
    );

void main() {
  group("Test big effect card group", () {
    // TODO impl
  });
}
