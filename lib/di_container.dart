import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:the_elder_scrolls_alchemy_client/app.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/services/settings_manager.dart';

class DependencyInjectionContainer {
  Injector initialise(Injector injector) {
    injector.map<SettingsManager>((injector) => SettingsManager(), isSingleton: true);

    injector.map<TheElderScrollsAlchemyClientApp>(
      (injector) => TheElderScrollsAlchemyClientApp(
        settingsManager: injector.get<SettingsManager>(),
      ),
      isSingleton: true,
    );

    // injector.map<Logger>((i) => Logger(), isSingleton: true);
    // injector.map<String>((i) => "https://api.com/", key: "apiUrl");
    // injector.map<SomeService>(
    //     (i) => SomeService(i.get<Logger>(), i.get<String>(key: "apiUrl")));

    // // note that you can configure mapping in a fluent programming style too
    // injector.map<SomeType>((injector) => SomeType("0"))
    //         ..map<SomeType>((injector) => SomeType("1"), key: "One")
    //         ..map<SomeType>((injector) => SomeType("2"), key: "Two");

    // injector.mapWithParams<SomeOtherType>((i, p) => SomeOtherType(p["id"]));

    return injector;
  }
}
