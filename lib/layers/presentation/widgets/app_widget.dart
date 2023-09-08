import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/material_app_with_locale.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/screens/effect_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/screens/effects_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/screens/home_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/screens/ingredient_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/screens/ingredients_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/state/search_field_toggle.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/screens/error_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppWidget extends StatefulWidget {
  AppWidget({Key? key, required this.languageCode, required this.gameName}) : super(key: key);

  String languageCode;
  String gameName;

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  Widget buildHomeWidget(BuildContext context) {
    return HomeScreen(gameName: widget.gameName);
  }

  Widget buildWidgetBasedOnState(BuildContext context) {
    debugPrint(' ');

    debugPrint('in buildWidgetBasedOnState');
    String chosenTab = context.read<AppState>().get()['chosenTab'];
    debugPrint('chosenTab');
    debugPrint(chosenTab);

    final blocBuilder = BlocBuilder<AppState, Map<String, dynamic>>(
      builder: (context, state) {
        debugPrint(' ');

        debugPrint('in buildWidgetBasedOnState giantbb!!');

        chosenTab = state['chosenTab'];
        debugPrint('chosenTab from state: ${chosenTab}');

        if (chosenTab == Constant.tabHome) {
          final chosenGameName = context.read<AppState>().get()['gameName'];

          debugPrint('going to render HomeScreen with gameName:');
          debugPrint(chosenGameName);
          final hs = HomeScreen(gameName: state['gameName']);
          // final bb = BlocBuilder<AppState, Map<String, dynamic>>(
          //   builder: (context, state) {
          //     return HomeScreen(gameName: state['gameName']);
          //   },
          // );
          return hs;
        }

        if (chosenTab == Constant.tabEffects) {
          final chosenEffectName = context.read<AppState>().get()['chosenEffectName'];
          if (chosenEffectName != '') {
            return EffectScreen(gameName: widget.gameName, effectName: chosenEffectName);
          }
          return EffectsScreen(gameName: state['gameName']);

          // final bb = BlocBuilder<AppState, Map<String, dynamic>>(
          //   builder: (context, state) {
          //     return EffectsScreen(gameName: state['gameName']);
          //   },
          // );
        }

        if (chosenTab == Constant.tabIngredients) {
          final chosenIngredientName = context.read<AppState>().get()['chosenIngredientName'];
          if (chosenIngredientName != '') {
            return IngredientScreen(gameName: widget.gameName, ingredientName: chosenIngredientName);
          }
          return IngredientsScreen(gameName: state['gameName']);
        }

        debugPrint('if the code is here means chosenTab is wrong');

        chosenTab = state['chosenTab'];
        debugPrint('chosenTab from state: ${chosenTab}');

        return ErrorScreen(error: {'name': 'hello'});
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
