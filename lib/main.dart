import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_elder_scrolls_alchemy_client/data/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';
import 'package:the_elder_scrolls_alchemy_client/state/search_field_toggle.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/error_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String languageCodeFromPreferences = await MyApp.getSafeLanguageCode();

  runApp(
    MyApp(languageCode: languageCodeFromPreferences),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key, this.languageCode = Constant.fallbackLanguage}) : super(key: key);

  String languageCode;

  static String getLocaleLanguageCode(BuildContext context) {
    return Localizations.localeOf(context).languageCode;
  }

  static Future<String> getSafeLanguageCode() async {
    String? languageCodeFromPreferences = await getLanguageCodeFromPreferences();
    if (languageCodeFromPreferences == null) {
      return Constant.fallbackLanguage;
    }
    return languageCodeFromPreferences;
  }

  static Future<String?> getLanguageCodeFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final String? languageCode = prefs.getString('languageCode');

    return languageCode;
  }

  static void setLocaleLanguageCode(BuildContext context, String languageCode) async {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocaleLanguageCode(languageCode);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', languageCode);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  setLocaleLanguageCode(String languageCode) {
    setState(() {
      widget.languageCode = languageCode;
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
    try {
      final router = MaterialApp.router(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale(Constant.lcEnglish, ''),
          Locale(Constant.lcSpanish, ''),
          Locale(Constant.lcFrench, ''),
          Locale(Constant.lcGerman, ''),
          Locale(Constant.lcRussian, ''),
          Locale(Constant.lcItalian, ''),
          Locale(Constant.lcJapanese, ''),
          Locale(Constant.lcPolish, ''),
          Locale.fromSubtags(languageCode: Constant.lcChinese), // generic Chinese
          Locale.fromSubtags(languageCode: Constant.lcChinese, scriptCode: 'Hans'), // generic simplified Chinese
          Locale.fromSubtags(languageCode: Constant.lcChinese, scriptCode: 'Hant'), // generic traditional Chinese
          Locale.fromSubtags(languageCode: Constant.lcChinese, scriptCode: 'Hans', countryCode: 'CN'),
          Locale.fromSubtags(languageCode: Constant.lcChinese, scriptCode: 'Hant', countryCode: 'TW'),
          Locale.fromSubtags(languageCode: Constant.lcChinese, scriptCode: 'Hant', countryCode: 'HK'),
        ],
        title: 'TES Alchemy',
        routerConfig: AlchemyRouter.getRouter(),
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
    } catch (exception) {
      return ErrorScreen(
        error: exception,
      );
    }
  }
}
