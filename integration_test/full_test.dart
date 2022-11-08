import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';

void main() {
  group('Testing App Performance Tests', () {
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized() as IntegrationTestWidgetsFlutterBinding;

    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

    testWidgets('Scrolling test', (tester) async {
      await tester.pumpWidget(MyApp());

      await tester.tap(find.text('Effects'));
      await tester.pump();

      final listFinder = find.byType(GridView);

      await binding.watchPerformance(() async {
        await tester.fling(listFinder, Offset(0, -500), 10000);
        await tester.pumpAndSettle();

        await tester.fling(listFinder, Offset(0, 500), 10000);
        await tester.pumpAndSettle();
      }, reportKey: 'scrolling_summary');
    });

    testWidgets('Favorites operations test', (tester) async {
      // TODO implement
    });
    testWidgets('Change game', (tester) async {
      // TODO implement
    });
  });
}
