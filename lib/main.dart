import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/app.dart';
import 'package:the_elder_scrolls_alchemy_client/di_container.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:stack_trace/stack_trace.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (FlutterErrorDetails details) {
    print("Error :  ${details.exception}");
    // print(Trace.from(details.stack!).terse);
  };

  final dependencyInjectionContainer = DependencyInjectionContainer().initialise(Injector());
  final app = dependencyInjectionContainer.get<TheElderScrollsAlchemyClientApp>();

  Chain.capture(() async {
    runApp(
      app,
    );
  }, onError: (error, stackTrace) {
    print("Async Error :  $error");
    // print(stackTrace.terse);
  });
}
