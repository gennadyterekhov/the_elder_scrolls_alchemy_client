import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/home/home.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/skyrim/effects/effects.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/skyrim/ingredients/ingredients.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/skyrim/potions/potions.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/skyrim/search/search.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/Ingredient_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/effect_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/effects_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/home_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/ingredients_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/search_screen.dart';

class AlchemyRouter {
  static CustomTransitionPage buildPageWithoutTransition<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    );
  }

  static GoRoute makeRoute(
      {required String path, required Widget page, Widget Function(BuildContext, GoRouterState)? builder}) {
    return GoRoute(
      path: path,
      builder: (BuildContext context, GoRouterState state) => page,
      pageBuilder: (context, state) => buildPageWithoutTransition<void>(context: context, state: state, child: page),
    );
  }

  static GoRoute makeRouteWithPageBuilder(
      {required String path, required Page<dynamic> Function(BuildContext, GoRouterState)? pageBuilder}) {
    return GoRoute(
      path: path,
      pageBuilder: pageBuilder,
    );
  }

  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      makeRoute(path: '/', page: const HomeScreen()),
      makeRoute(path: '/effects', page: const EffectsScreen()),
      makeRoute(path: '/ingredients', page: const IngredientsScreen()),
      makeRouteWithPageBuilder(
        path: '/effect/:effectName',
        pageBuilder: (context, state) {
          final String effectName = state.params['effectName'] ?? 'Cure Disease'; // TODO remove hardcode
          Effect effect = DataProvider.getSkyrimEffectByName(effectName);
          final page = EffectScreen(effect: effect);
          return buildPageWithoutTransition<void>(context: context, state: state, child: page);
        },
      ),
      makeRouteWithPageBuilder(
        path: '/ingredient/:ingredientName',
        pageBuilder: (BuildContext context, GoRouterState state) {
          final String ingredientName = state.params['ingredientName'] ?? 'Abecean Longfin'; // TODO remove hardcode
          Ingredient ingredient = DataProvider.getSkyrimIngredientByName(ingredientName);
          final page = IngredientScreen(ingredient: ingredient);
          return buildPageWithoutTransition<void>(context: context, state: state, child: page);
        },
      ),
      makeRoute(path: '/search', page: const SearchScreen()),
    ],
  );

  static String getRouteByIndex(int index) {
    if (index == 0) {
      return '/';
    }
    if (index == 1) {
      return '/effects';
    }
    if (index == 2) {
      return '/ingredients';
    }
    if (index == 3) {
      return '/search';
    }
    return '/';
  }

  static Widget getPageWidgetByIndex(index) {
    if (index == 1) {
      return const EffectsPage();
    }
    if (index == 2) {
      return const IngredientsPage();
    }
    if (index == 3) {
      return const SearchPage();
    }

    return const HomePage();
  }
}
