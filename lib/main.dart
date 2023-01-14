import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';
import 'package:the_elder_scrolls_alchemy_client/state/search_field_toggle.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/error_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  static String getLocaleLanguageCode(BuildContext context) {
    return Localizations.localeOf(context).languageCode;
  }

  static void setLocaleLanguageCode(BuildContext context, String languageCode) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocaleLanguageCode(languageCode);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _languageCode = 'en';

  setLocaleLanguageCode(String languageCode) {
    setState(() {
      _languageCode = languageCode;
    });
  }

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
    final router = MaterialApp.router(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
        Locale('fr', ''),
        Locale('de', ''),
        Locale('ru', ''),
        Locale('it', ''),
        Locale('jp', ''),
        Locale('pl', ''),
        Locale.fromSubtags(languageCode: 'zh'), // generic Chinese
        Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'), // generic simplified Chinese
        Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'), // generic traditional Chinese
        Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN'),
        Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW'),
        Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'HK'),
      ],
      title: 'TES Alchemy',
      builder: (context, widget) {
        ErrorWidget.builder = (errorDetails) => ErrorScreen(
              error: errorDetails.exception,
            );
        if (widget != null) return widget;
        throw ('widget is null');
      },
      routerConfig: AlchemyRouter.getRouter(),
      locale: Locale(_languageCode),
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

    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return SearchFieldToggle();
      },
      child: router,
    );
  }
}
