import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/state/search_field_toggle.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/screens/error_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppWidget extends StatefulWidget {
  AppWidget({Key? key, required this.languageCode, required this.gameName})
      : super(key: key);

  String languageCode;
  String gameName;

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
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

  Widget tryChangeNotifier() {
    final router = MaterialApp.router(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: Constant.supportedLanguageCodesToLanguageNamesMap.keys.map((e) => Locale(e)),
      title: 'TES Alchemy',
      routerConfig: AlchemyRouter.getRouter(gameName: widget.gameName),
      locale: Locale(widget.languageCode),
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

    final correctWidget = ChangeNotifierProvider(
      create: (BuildContext context) {
        return SearchFieldToggle();
      },
      child: router,
    );

    return correctWidget;
  }

  @override
  Widget build(BuildContext context) {
    try {
      return tryChangeNotifier();
    } catch (exception) {
      return ErrorScreen(error: exception);
    }
  }
}
