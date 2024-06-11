import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:logging/logging.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:the_elder_scrolls_alchemy_client/app.dart';
import 'package:the_elder_scrolls_alchemy_client/di_container.dart';

void main() async {
  Logger.root.level = Level.INFO;

  Chain.capture(() async {
    WidgetsFlutterBinding.ensureInitialized();
    FlutterError.onError = (FlutterErrorDetails details) {
      print("Error :  ${details.exception}");
      // print(Trace.from(details.stack!).terse);
    };

    final dependencyInjectionContainer = DependencyInjectionContainer().initialise(Injector());
    final app = dependencyInjectionContainer.get<TheElderScrollsAlchemyClientApp>();

    runApp(
      app,
    );
  }, onError: (error, stackTrace) {
    print("Async Error :  $error");
    // print(stackTrace.terse);
  });
}
