import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_elder_scrolls_alchemy_client/app.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _languageCode = Constant.fallbackLanguage;

void main() {
  Map<String, Object> values = <String, Object>{'languageCode': _languageCode};
  SharedPreferences.setMockInitialValues(values);

  group('left panel', () {
    testWidgets('items are marked as selected', (WidgetTester tester) async {
      await tester.binding.setSurfaceSize(const Size(Constant.layoutWidthThreshold + 1, 1000));

      await tester.pumpWidget(const TheElderScrollsAlchemyClientApp());
      await tester.pump();

      var navigationRailFinder = find.byType(NavigationRail);
      expect(navigationRailFinder, findsOneWidget);

      NavigationRail navigationRail = tester.firstWidget(navigationRailFinder);
      expect(navigationRail.selectedIndex, 0);

      Finder buttonToTap = find.text('Effects');

      await tester.dragUntilVisible(
        buttonToTap, // what you want to find
        find.byType(SingleChildScrollView), // widget you want to scroll
        const Offset(0, 50), // delta to move
      );
      await tester.tap(buttonToTap);
      await tester.pump();

      navigationRailFinder = find.byType(NavigationRail);
      navigationRail = tester.firstWidget(navigationRailFinder);

      expect(navigationRail.selectedIndex, 1);

      buttonToTap = find.text('Ingredients');

      await tester.dragUntilVisible(
        buttonToTap, // what you want to find
        find.byType(SingleChildScrollView), // widget you want to scroll
        const Offset(0, 50), // delta to move
      );
      await tester.tap(buttonToTap);
      await tester.pump();

      navigationRailFinder = find.byType(NavigationRail);
      navigationRail = tester.firstWidget(navigationRailFinder);

      expect(navigationRail.selectedIndex, 2);
    });
  });
}
