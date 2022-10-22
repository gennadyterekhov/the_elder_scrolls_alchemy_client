import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/home/home.dart';

String defaultChosenGame = DataSource.gameNameSkyrim;
int defaultChosenTabIndex = 0;
String globalChosenGame = defaultChosenGame;
int globalChosenTabIndex = defaultChosenTabIndex;
Widget globalPage = HomePage();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AlchemyRouter.router,
      theme: ThemeData(primarySwatch: getPrimarySwatch()),
    );
  }
}
