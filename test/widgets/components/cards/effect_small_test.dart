import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';

import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect_big.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect_small.dart';

Widget createWidget() => ProviderScope(
      child: MaterialApp(
        home: EffectCardSmall(
          effect: Effect.fromMap(DataSource.getMap()[DataSource.gameNameSkyrim]['effects']['Cure Disease']),
        ),
      ),
    );

void main() {
  group("Test small effect card group", () {
    testWidgets('Test small effect card', (WidgetTester tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text('Cure Disease'), findsOneWidget);
      expect(find.byType(Card), findsOneWidget);
    });

    testWidgets('Test inkwell works as a link', (WidgetTester tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text('Cure Disease'), findsOneWidget);
      expect(find.byType(Card), findsOneWidget);

      // TODO: implement
      // await tester.tap(find.byType(InkWell));
      // await tester.pump();
      // expect(find.byType(EffectCardBig), findsOneWidget);
    });
  });
}
