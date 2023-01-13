import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';

void main() {
  runApp(
    const Root(),
  );
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'TES Alchemy',
      builder: (context, widget) {
        ErrorWidget.builder = (errorDetails) => Column(
              children: [
                CupertinoActivityIndicator(),
                Text(errorDetails.toString()),
              ],
            );
        if (widget != null) return widget;
        throw ('widget is null');
      },
      routerConfig: AlchemyRouter.getRouter(),
      theme: ThemeData(
        primarySwatch: getPrimarySwatch(),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      ),
    );
  }
}
