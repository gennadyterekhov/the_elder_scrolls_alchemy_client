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

class AlchemyRouter {
  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return HomeScreen();
        },
      ),
      GoRoute(
        path: '/effects',
        builder: (BuildContext context, GoRouterState state) {
          return EffectsScreen();
        },
      ),
      GoRoute(
        path: '/effect/:effectName',
        builder: (BuildContext context, GoRouterState state) {
          final String effectName = state.params['effectName'] ?? 'Cure Disease'; // TODO remove hardcode

          Effect effect = DataProvider.getSkyrimEffectByName(effectName);
          return EffectScreen(effect: effect);
        },
      ),
      GoRoute(
        path: '/ingredients',
        builder: (BuildContext context, GoRouterState state) {
          return IngredientsScreen();
        },
      ),
      GoRoute(
        path: '/ingredient/:ingredientName',
        builder: (BuildContext context, GoRouterState state) {
          final String ingredientName = state.params['ingredientName'] ?? 'Abecean Longfin'; // TODO remove hardcode

          Ingredient ingredient = DataProvider.getSkyrimIngredientByName(ingredientName);
          return IngredientScreen(ingredient: ingredient);
        },
      ),
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
      return '/';
    }
    if (index == 4) {
      return '/';
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
      return const PotionsPage();
    }
    if (index == 4) {
      return const SearchPage();
    }

    return const HomePage();
  }
}
