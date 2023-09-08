import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MaterialAppWithLocale extends StatelessWidget {
  const MaterialAppWithLocale(this.home, {super.key});

  final Widget home;

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
    final blocBuilder = BlocBuilder<AppState, Map<String, dynamic>>(
      builder: (context, state) {
        final materialApp = MaterialApp(
          home: home,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: Constant.supportedLanguageCodesToLanguageNamesMap.keys.map((e) => Locale(e)),
          title: 'TES Alchemy',
          locale: Locale(state['language']),
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

        return materialApp;
      },
    );

    return blocBuilder;
  }
}
