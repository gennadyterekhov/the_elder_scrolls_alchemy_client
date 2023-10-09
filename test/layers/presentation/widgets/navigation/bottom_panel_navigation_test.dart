import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_elder_scrolls_alchemy_client/app.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _languageCode = Constant.fallbackLanguage;

void main() {
  Map<String, Object> values = <String, Object>{'languageCode': _languageCode};
  SharedPreferences.setMockInitialValues(values);
  final TestWidgetsFlutterBinding binding = TestWidgetsFlutterBinding.ensureInitialized();
  group('bottom panel', () {
    testWidgets('items are marked as selected', (tester) async {
      const correctSize = Size(Constant.layoutWidthThreshold - 10, 1000);
      await tester.binding.setSurfaceSize(correctSize);
      binding.window.physicalSizeTestValue = correctSize;
      binding.window.devicePixelRatioTestValue = 1.0;

      await tester.pumpWidget(const TheElderScrollsAlchemyClientApp());
      await tester.pump();

      var bottomNavigationBarFinder = find.byType(BottomNavigationBar);
      expect(bottomNavigationBarFinder, findsOneWidget);

      BottomNavigationBar bottomNavigationBar = tester.firstWidget(bottomNavigationBarFinder);
      expect(bottomNavigationBar.currentIndex, 0);

      await tester.tap(find.text('Effects'));
      await tester.pump();

      bottomNavigationBarFinder = find.byType(BottomNavigationBar);
      bottomNavigationBar = tester.firstWidget(bottomNavigationBarFinder);

      expect(bottomNavigationBar.currentIndex, 1);

      await tester.tap(find.text('Ingredients'));
      await tester.pump();

      bottomNavigationBarFinder = find.byType(BottomNavigationBar);
      bottomNavigationBar = tester.firstWidget(bottomNavigationBarFinder);
      expect(bottomNavigationBar.currentIndex, 2);
    });
  });
}
