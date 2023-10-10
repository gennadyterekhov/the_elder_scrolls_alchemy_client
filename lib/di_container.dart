import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:the_elder_scrolls_alchemy_client/app.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/services/settings_manager.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/custom_navigator.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';

class DependencyInjectionContainer {
  Injector initialise(Injector injector) {
    injector.map<SettingsManager>((injector) => SettingsManager(), isSingleton: true);

    injector.map<AppState>((injector) => AppState(), isSingleton: true);

    injector.map<TheElderScrollsAlchemyClientApp>(
      (injector) => TheElderScrollsAlchemyClientApp(),
      isSingleton: true,
    );

    return injector;
  }
}
