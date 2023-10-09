import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/custom_navigator.dart';

class AlchemyRouter {
  AlchemyRouter();

  static void pushStateToNavigator(Map<String, dynamic> updatedState) {
    CustomNavigator.push(updatedState);
  }

  static void pushToNavigator(context) {
    final updatedState = context.read<AppState>().get();
    pushStateToNavigator(updatedState);
  }

  static popFromNavigator() {
    return CustomNavigator.pop();
  }

  static Map<String, dynamic> getCurrent() {
    return CustomNavigator.getCurrent();
  }

  static void moveToHome(context) {
    context.read<AppState>().moveToHome();
    pushToNavigator(context);
  }

  static void moveToEffects(context) {
    context.read<AppState>().moveToEffects();
    pushToNavigator(context);
  }

  static void moveToIngredients(context) {
    context.read<AppState>().moveToIngredients();
    pushToNavigator(context);
  }

  static void moveToEffect(context, String effectName) {
    context.read<AppState>().moveToEffect(effectName);
    pushToNavigator(context);
  }

  static void moveToIngredient(context, String ingredientName) {
    context.read<AppState>().moveToIngredient(ingredientName);
    pushToNavigator(context);
  }
}
