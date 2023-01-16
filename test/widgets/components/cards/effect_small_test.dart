import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/effect_small.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _languageCode = 'en';

Widget createWidget({String languageCode = 'en'}) => Container(
      child: MaterialApp(
        locale: Locale(languageCode),
        home: EffectCardSmall(
          gameName: DataSource.gameNameSkyrim,
          effect: Effect.fromMap(DataSource.getMap()[DataSource.gameNameSkyrim]['effects']['Cure Disease']),
        ),
      ),
    );

void main() {
  Map<String, Object> values = <String, Object>{'languageCode': _languageCode};
  SharedPreferences.setMockInitialValues(values);
  group("Test small effect card group", () {
    testWidgets('Test small effect card', (WidgetTester tester) async {
      await tester.pumpWidget(createWidget());

      expect(find.text('Cure Disease'), findsOneWidget);
      expect(find.byType(Card), findsOneWidget);
    });
  });
}
