import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect/effect_small.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _languageCode = Constant.fallbackLanguage;

Widget createWidget({String languageCode = Constant.fallbackLanguage}) => Container(
      child: MaterialApp(
        locale: Locale(languageCode),
        home: EffectCardSmall(
          gameName: Constant.gameNameSkyrim,
          effect: Effect.fromMap(DataResource.getMap()[Constant.gameNameSkyrim]['effects']['Cure Disease']),
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
