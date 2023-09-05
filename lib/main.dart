import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/app.dart';
import 'package:the_elder_scrolls_alchemy_client/di_container.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dependencyInjectionContainer = DependencyInjectionContainer().initialise(Injector());
  final app = dependencyInjectionContainer.get<TheElderScrollsAlchemyClientApp>();

  runApp(
    app,
  );
}
