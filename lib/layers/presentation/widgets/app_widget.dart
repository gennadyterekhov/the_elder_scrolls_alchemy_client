import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/material_app_with_locale.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/screens/effect_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/screens/effects_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/screens/home_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/screens/ingredient_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/screens/ingredients_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/screens/error_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  Widget getScreenByState(Map<String, dynamic> state) {
    final chosenTab = state['chosenTab'];

    if (chosenTab == Constant.tabHome) {
      return HomeScreen(gameName: state['gameName']);
    }

    if (chosenTab == Constant.tabEffects) {
      if (state['chosenEffectName'] != '') {
        return EffectScreen(gameName: state['gameName'], effectName: state['chosenEffectName']);
      }
      return EffectsScreen(gameName: state['gameName']);
    }

    if (chosenTab == Constant.tabIngredients) {
      if (state['chosenIngredientName'] != '') {
        return IngredientScreen(gameName: state['gameName'], ingredientName: state['chosenIngredientName']);
      }
      return IngredientsScreen(gameName: state['gameName']);
    }

    return const ErrorScreen(error: {'error': 'Route not found'});
  }

  Widget buildWidgetBasedOnState(BuildContext context) {
    final blocBuilder = BlocBuilder<AppState, Map<String, dynamic>>(
      builder: (context, state) {
        return getScreenByState(state);
      },
    );

    return blocBuilder;
  }

  @override
  Widget build(BuildContext context) {
    final widgetBasedOnState = buildWidgetBasedOnState(context);
    final materialApp = MaterialAppWithLocale(widgetBasedOnState);

    return materialApp;
  }
}
