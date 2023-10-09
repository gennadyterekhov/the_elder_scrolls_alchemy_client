import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/stack.dart';

class CustomNavigator {
  CustomNavigator();

  static Stack stateStack = Stack();

  static int getLength() {
    return stateStack.length;
  }

  static Map<String, dynamic> getCurrent() {
    final latestState = stateStack.getCurrent();

    if (latestState == null) {
      return AppState.defaultState;
    }

    return latestState;
  }

  static push(Map<String, dynamic> state) {
    stateStack.push(state);
  }

  static Map<String, dynamic> pop() {
    final latestState = stateStack.pop();

    if (latestState == null) {
      return AppState.defaultState;
    }

    return latestState;
  }
}
