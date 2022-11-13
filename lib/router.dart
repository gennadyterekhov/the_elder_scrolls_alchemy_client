import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/navigation/navigation.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/effect_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/effects_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/home_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/ingredient_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/ingredients_screen.dart';

class AlchemyRouter {
  static GoRoute makeSimpleRoute({required String path, required Widget page}) {
    return GoRoute(
      path: path,
      builder: (BuildContext context, GoRouterState state) => page,
    );
  }

  static GoRouter getRouter() {
    final GoRouter router = GoRouter(
      routes: <GoRoute>[
        makeSimpleRoute(path: '/home', page: const HomeScreen()),
        makeSimpleRoute(path: '/', page: const HomeScreen()),
        GoRoute(
          path: '/:gameName/effects',
          builder: (context, state) {
            final gameName = state.params['gameName'] as String;
            DataSource.checkGameName(gameName);

            return const EffectsScreen();
          },
        ),
        GoRoute(
          path: '/:gameName/ingredients',
          builder: (context, state) {
            final gameName = state.params['gameName'] as String;
            DataSource.checkGameName(gameName);

            return const IngredientsScreen();
          },
        ),
        GoRoute(
          path: '/:gameName/effect/:effectName',
          builder: (context, state) {
            final String effectName = state.params['effectName'] as String;
            final gameName = state.params['gameName'] as String;

            return EffectScreen(gameName: gameName, effectName: effectName);
          },
        ),
        GoRoute(
          path: '/:gameName/ingredient/:ingredientName',
          builder: (context, state) {
            final String ingredientName = state.params['ingredientName'] as String;
            final gameName = state.params['gameName'] as String;
            return IngredientScreen(gameName: gameName, ingredientName: ingredientName);
          },
        ),
      ],
    );

    return router;
  }

  static String getRouteByIndex({int index = 0, bool withHome = true}) {
    final items = Navigation.getItems();
    if (index > items.length) {
      return '/home';
    }

    return items[index].path;
  }
}
