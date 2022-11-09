import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/data/effect_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/data/ingredient_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/navigation/navigation.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/effect_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/effects_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/home_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/ingredient_screen.dart';
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
      makeRouteWithPageBuilder(
        path: '/:gameName/effects',
        pageBuilder: (context, state) {
          final gameName = state.params['gameName'] as String;
          DataSource.checkGameName(gameName);
          globalChosenGame = gameName;
          return buildPageWithoutTransition<void>(context: context, state: state, child: const EffectsScreen());
        },
      ),
      makeRouteWithPageBuilder(
        path: '/:gameName/ingredients',
        pageBuilder: (context, state) {
          final gameName = state.params['gameName'] as String;
          DataSource.checkGameName(gameName);
          globalChosenGame = gameName;
          return buildPageWithoutTransition<void>(context: context, state: state, child: const IngredientsScreen());
        },
      ),
      makeRouteWithPageBuilder(
        path: '/:gameName/effect/:effectName',
        pageBuilder: (context, state) {
          final String effectName = state.params['effectName'] as String;
          final gameName = state.params['gameName'] as String;
          DataSource.checkGameName(gameName);
          globalChosenGame = gameName;
          Effect effect = EffectResource.getEffectByName(effectName);
          final page = EffectScreen(effect: effect);
          return buildPageWithoutTransition<void>(context: context, state: state, child: page);
        },
      ),
      makeRouteWithPageBuilder(
        path: '/:gameName/ingredient/:ingredientName',
        pageBuilder: (BuildContext context, GoRouterState state) {
          final String ingredientName = state.params['ingredientName'] as String;
          final gameName = state.params['gameName'] as String;
          DataSource.checkGameName(gameName);
          globalChosenGame = gameName;
          Ingredient ingredient = IngredientResource.getIngredientByName(ingredientName);
          final page = IngredientScreen(ingredient: ingredient);
          return buildPageWithoutTransition<void>(context: context, state: state, child: page);
        },
      ),
      makeRoute(path: '/:gameName/search', page: const SearchScreen()),
    ],
  );

  static String getRouteByIndex({int index = 0, bool withHome = true}) {
    final items = Navigation.getItems();
    if (index > items.length) {
      return '/';
    }

    return '/$globalChosenGame${items[index].path}';
  }
}
