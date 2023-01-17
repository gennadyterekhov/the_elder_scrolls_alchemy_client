import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/navigation/navigation.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/effect_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/effects_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/error_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/home_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/ingredient_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/ingredients_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AlchemyRouter {
  static bool isGameNameValid({required String gameName}) {
    return DataSource.gameNames.contains(gameName);
  }

  static bool isEffectValid({required String gameName, required String effectName}) {
    return isGameNameValid(gameName: gameName) && DataSource.getMap()[gameName]['effects'].containsKey(effectName);
  }

  static bool isIngredientValid({required String gameName, required String ingredientName}) {
    return isGameNameValid(gameName: gameName) &&
        DataSource.getMap()[gameName]['ingredients'].containsKey(ingredientName);
  }

  static bool isLocaleValid({
    required String locale,
  }) {
    return AppLocalizations.supportedLocales.contains(Locale(locale));
  }

  static GoRoute makeSimpleRoute({required String path, required Widget page}) {
    return GoRoute(
      path: path,
      builder: (BuildContext context, GoRouterState state) => page,
    );
  }

  static Widget Function(BuildContext) customBuilder({required Widget screen}) {
    return (BuildContext context) => screen;
  }

  static GoRouter getRouter() {
    final GoRouter router = GoRouter(
      initialLocation: Constant.skyrimHomeLink,
      errorBuilder: (context, state) => ErrorScreen(error: state.error),
      routes: <GoRoute>[
        GoRoute(
          path: '/:gameName/home',
          builder: (context, state) {
            final gameName = state.params['gameName'] as String;

            if (!isGameNameValid(gameName: gameName)) {
              return ErrorScreen(error: 'Unknown game name');
            }

            return HomeScreen(gameName: gameName);
          },
        ),
        GoRoute(
          path: '/:gameName/effects',
          builder: (context, state) {
            final gameName = state.params['gameName'] as String;
            if (!isGameNameValid(gameName: gameName)) {
              return ErrorScreen(error: 'Unknown game name');
            }
            return EffectsScreen(gameName: gameName);
          },
        ),
        GoRoute(
          path: '/:gameName/ingredients',
          builder: (context, state) {
            final gameName = state.params['gameName'] as String;
            if (!isGameNameValid(gameName: gameName)) {
              return ErrorScreen(error: 'Unknown game name');
            }

            return IngredientsScreen(gameName: gameName);
          },
        ),
        GoRoute(
          path: '/:gameName/effect/:effectName',
          builder: (context, state) {
            final String effectName = state.params['effectName'] as String;
            final gameName = state.params['gameName'] as String;

            if (!isEffectValid(gameName: gameName, effectName: effectName)) {
              return ErrorScreen(error: 'Unknown game or effect name');
            }
            return EffectScreen(gameName: gameName, effectName: effectName);
          },
        ),
        GoRoute(
          path: '/:gameName/ingredient/:ingredientName',
          builder: (context, state) {
            final String ingredientName = state.params['ingredientName'] as String;
            final gameName = state.params['gameName'] as String;

            if (!isIngredientValid(gameName: gameName, ingredientName: ingredientName)) {
              return ErrorScreen(error: 'Unknown game or ingredient name');
            }

            return IngredientScreen(gameName: gameName, ingredientName: ingredientName);
          },
        ),
      ],
    );

    return router;
  }

  static String getRouteByIndex({int index = 0}) {
    final items = Navigation.getItemsPaths();
    if (index > items.length) {
      return '/home';
    }

    return items[index]['path'] ?? '/home';
  }
}
