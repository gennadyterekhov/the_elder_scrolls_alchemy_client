import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as riverpod;
import 'package:the_elder_scrolls_alchemy_client/router.dart';

final globalGameNameStateProvider = riverpod.StateProvider((ref) {
  return 'skyrim';
});
final globalIsSearchShownStateProvider = riverpod.StateProvider((ref) {
  return true;
});

final globalChosenTabIndexStateProvider = riverpod.StateProvider((ref) {
  return 1;
});

void main() {
  runApp(
    Root(),
  );
}

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return riverpod.ProviderScope(
      child: MyApp(),
    );
  }
}

class MyApp extends riverpod.ConsumerWidget {
  MyApp({Key? key}) : super(key: key);

  MaterialColor getPrimarySwatch() {
    const hash = 0xffa5d6a7;
    const greenShade200 = Color(hash);
    Map<int, Color> swatch = {
      50: greenShade200.withOpacity(.1),
      100: greenShade200.withOpacity(.2),
      200: greenShade200.withOpacity(.3),
      300: greenShade200.withOpacity(.4),
      400: greenShade200.withOpacity(.5),
      500: greenShade200.withOpacity(.6),
      600: greenShade200.withOpacity(.7),
      700: greenShade200.withOpacity(.8),
      800: greenShade200.withOpacity(.9),
      900: greenShade200.withOpacity(1),
    };
    MaterialColor colorCustom = MaterialColor(hash, swatch);
    return colorCustom;
  }

  @override
  Widget build(BuildContext context, riverpod.WidgetRef ref) {
    final String gameName = ref.watch(globalGameNameStateProvider);

    return MaterialApp.router(
      title: 'TES Alchemy',
      routerConfig: AlchemyRouter.getRouter(ref),
      theme: ThemeData(primarySwatch: getPrimarySwatch()),
    );
  }
}
