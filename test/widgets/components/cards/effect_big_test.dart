import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect_big.dart';

Widget createWidget() => MaterialApp(
      home: EffectCardBig(
        gameName: DataSource.gameNameSkyrim,
        effect: Effect.fromMap(DataSource.getMap()[DataSource.gameNameSkyrim]['effects']['Cure Disease']),
      ),
    );

void main() {
  group("Test big effect card group", () {
    // TODO impl
  });
}
