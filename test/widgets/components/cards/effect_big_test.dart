import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:the_elder_scrolls_alchemy_client/data/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect/effect_big.dart';

Widget createWidget() => MaterialApp(
      locale: Locale(Constant.fallbackLanguage),
      home: EffectCardBig(
        gameName: Constant.gameNameSkyrim,
        effect: Effect.fromMap(DataSource.getMap()[Constant.gameNameSkyrim]['effects']['Cure Disease']),
      ),
    );

void main() {
  group("Test big effect card group", () {
    // TODO impl
  });
}
