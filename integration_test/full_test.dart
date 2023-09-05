import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:the_elder_scrolls_alchemy_client/app.dart';
import 'package:the_elder_scrolls_alchemy_client/di_container.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect/effect_big.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect/effect_small.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/ingredient/ingredient_big.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/search_field.dart';

void main() {
  final dependencyInjectionContainer = DependencyInjectionContainer().initialise(Injector());
  final app = dependencyInjectionContainer.get<TheElderScrollsAlchemyClientApp>();
  group('general', () {
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized() as IntegrationTestWidgetsFlutterBinding;

    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

    testWidgets('Scrolling test', (tester) async {
      await tester.pumpWidget(app);

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

    testWidgets('Test inkwell works as a link', (tester) async {
      await tester.pumpWidget(app);

      await tester.tap(find.text('Effects'));
      await tester.pump();

      expect(find.text('Cure Disease'), findsOneWidget);

      await tester.tap(find.text('Cure Disease'));
      await tester.pump();

      expect(find.byType(EffectCardBig), findsOneWidget);

      await tester.tap(find.text('Hawk Feathers'));
      await tester.pump();

      expect(find.byType(IngredientCardBig), findsOneWidget);
    });
  });

  group('home page', () {
    testWidgets('Change game', (tester) async {
      await tester.pumpWidget(app);
      expect(find.text('Skyrim Alchemy'), findsOneWidget);

      await tester.tap(find.text('Effects'));
      await tester.pump();

      expect(find.text('Cure Disease'), findsOneWidget);

      await tester.tap(find.byType(PopupMenuButton));
      await tester.pump();
      await tester.tap(find.text(Constant.gameNameMorrowind));
      await tester.pump();

      await tester.tap(find.text('Effects'));
      await tester.pump();

      expect(find.text('Cure Blight Disease'), findsOneWidget);
    });
  });

  group('search', () {
    testWidgets('search', (tester) async {
      await tester.pumpWidget(app);
      await tester.tap(find.text('Effects'));
      await tester.pump();

      expect(find.text('Cure Disease'), findsOneWidget);

      expect(find.byType(SearchField), findsOneWidget);

      /// 2 chars dont start search
      await tester.tap(find.byType(SearchField));
      await tester.enterText(find.byType(SearchField), 'hi');
      await tester.pump();

      expect(find.text('Cure Disease'), findsOneWidget);

      await tester.enterText(find.byType(SearchField), 'Restore Health');
      expect(find.text('Restore Health'), findsOneWidget);
      expect(find.text('Cure Disease'), findsNothing);
      expect(find.byType(EffectCardSmall), findsOneWidget);
    });
  });
}
