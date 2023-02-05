import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_elder_scrolls_alchemy_client/data/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/links/image_link.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/links/web_link.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:yandex_mobileads/mobile_ads.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.gameName}) : super(key: key);
  final String gameName;
  final bool isSticky = false;

  @override
  State<HomePage> createState() => _HomePageState();
}

List<DropdownMenuItem<String>> getLocaleButtonsDropdown(context) {
  List<DropdownMenuItem<String>> popupMenuItems = [];
  Constant.supportedLanguageCodesToLanguageNamesMap.forEach((langCode, langName) {
    popupMenuItems.add(
      DropdownMenuItem(
        value: langCode,
        child: Text(
          langName,
        ),
      ),
    );
  });

  return popupMenuItems;
}

List<DropdownMenuItem<String>> getGameButtonsDropdown(context) {
  List<DropdownMenuItem<String>> popupMenuItems = [];
  for (var gameName in DataSource.gameNames) {
    popupMenuItems.add(
      DropdownMenuItem(
        value: gameName,
        child: Text(Constant.getGameNameForPresentation(gameName)),
      ),
    );
  }

  return popupMenuItems;
}

class _HomePageState extends State<HomePage> with RestorationMixin {
  final RestorableInt _selectedIndex = RestorableInt(0);
  var adRequest = const AdRequest();
  var isLoading = false;
  var isBannerAlreadyCreated = false;

  late BannerAd banner;
  @override
  String get restorationId => 'nav_rail_demo';

  Future<void> _loadBanner() async {
    final windowSize = MediaQuery.of(context).size;
    setState(() => isLoading = true);

    if (isBannerAlreadyCreated) {
      banner.load(adRequest: adRequest);
    } else {
      final adSize = widget.isSticky
          ? AdSize.sticky(width: windowSize.width.toInt())
          : AdSize.flexible(
              width: windowSize.width.toInt(),
              // height: windowSize.height ~/ 3,
              height: Constant.adBannerHeight,
            );
      banner = _createBanner(adSize);
      setState(() {
        isBannerAlreadyCreated = true;
      });
    }
  }

  BannerAd _createBanner(AdSize adSize) {
    return BannerAd(
      adUnitId: Constant.demoAdUnitId,
      adSize: adSize,
      adRequest: adRequest,
      onAdLoaded: () {
        setState(() => isLoading = false);

        debugPrint('===================== callback: banner ad loaded');
      },
      onAdFailedToLoad: (error) {
        setState(() => isLoading = false);
        debugPrint('===================== callback: banner ad failed to load, '
            'code: ${error.code}, description: ${error.description}');
      },
      onAdClicked: () => debugPrint('===================== callback: banner ad clicked'),
      onLeftApplication: () => debugPrint('===================== callback: left app'),
      onReturnedToApplication: () => debugPrint('===================== callback: returned to app'),
      onImpression: (data) => debugPrint('===================== callback: impression: $data'),
    );
  }

  @deprecated
  BannerAd _getBanner() {
    final int width = MediaQuery.of(context).size.width.toInt();
    final int height = MediaQuery.of(context).size.height.toInt();
    final BannerAd banner = BannerAd(
      adUnitId: 'demo-banner-yandex',
      // adSize: AdSize.flexible(width: width, height: height),
      adSize: AdSize.flexible(width: width, height: Constant.adBannerHeight),

      // adSize: AdSize.sticky(width: width),
      // adSize: AdSize.sticky(width: 600),

      adRequest: AdRequest(),
      onAdLoaded: () {
        debugPrint('ad did  load OK!');
      },
      onAdFailedToLoad: (error) {
        debugPrint('ad did not load');
      },
    );
    return banner;
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedIndex, 'selected_index');
  }

  // @override
  // void initState() {
  //   super.initState();
  //   if (!kIsWeb) {
  //     if (Platform.isIOS || Platform.isAndroid) {
  //       MobileAds.initialize();
  //     }
  //   }
  // }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }

  Widget getLanguagePicker(context) {
    final currentLanguageCode = MyApp.getLocaleLanguageCode(context);

    final languagePicker = DropdownButtonFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.translate),
        labelText: AppLocalizations.of(context)!.homePageChangeLanguage,
      ),
      value: currentLanguageCode,
      icon: const Icon(Icons.expand_more),
      items: getLocaleButtonsDropdown(context),
      onChanged: (String? value) {
        if (value is String) {
          MyApp.setLocaleLanguageCode(context, value);
        }
      },
    );

    return languagePicker;
  }

  Widget getGamePicker(context) {
    final gamePicker = DropdownButtonFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.videogame_asset),
        labelText: AppLocalizations.of(context)!.homePageChangeGame,
      ),
      value: widget.gameName,
      icon: const Icon(Icons.expand_more),
      items: getGameButtonsDropdown(context),
      onChanged: (String? gameName) {
        if (gameName is String) {
          MyApp.setGameName(context, gameName);
        }
      },
    );

    return gamePicker;
  }

  @override
  Widget build(BuildContext context) {
    if (!isBannerAlreadyCreated) {
      _loadBanner();
    }
    final languagePicker = getLanguagePicker(context);

    final gamePicker = getGamePicker(context);
    final pickers = Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 40.0),
      child: Column(
        children: [gamePicker, languagePicker],
      ),
    );

    final welcomeText = SelectableText(
      AppLocalizations.of(context)!.homePageDescription,
      style: Theme.of(context).textTheme.headline5,
    );

    final dataOriginDescriptionText = SelectableText(
      AppLocalizations.of(context)!.homePageDataOriginDescription,
      style: Theme.of(context).textTheme.headline6,
    );

    const dataRepositoryLink =
        WebLink(text: 'Data Repository', url: 'https://github.com/gennadyterekhov/skyrim_alchemy');

    const licenseLink = WebLink(text: 'License', url: 'https://creativecommons.org/licenses/by-sa/2.5');

    final Widget svg = SvgPicture.asset(
      'assets/img/play_stores/rustore/black.svg',
      semanticsLabel: 'Download from RuStore',
      width: 32,
      height: 32,
    );

    final ruStoreLink = ImageWebLink(
      image: svg,
      url: 'https://apps.rustore.ru/app/com.gennadyterekhov.the_elder_scrolls_alchemy_client',
    );

    final linksRow = Wrap(
      alignment: WrapAlignment.center,
      spacing: 32,
      runSpacing: 32,
      children: [
        kIsWeb ? ruStoreLink : Container(),
        dataRepositoryLink,
        licenseLink,
      ],
    );

    Widget adBanner = Container();
    if (!kIsWeb && isBannerAlreadyCreated) {
      debugPrint('===================== constructing ad banner =====================');
      adBanner = AdWidget(
        bannerAd: banner,
        // bannerAd: getBanner(),
      );
    }

    final mainCard = Card(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              welcomeText,
              pickers,
              dataOriginDescriptionText,
              const Image(image: AssetImage('assets/img/play_stores/logo.png')),
              linksRow,
              adBanner,
            ],
          ),
        ),
      ),
    );

    // final height = MediaQuery.of(context).size.height;
    final box = ConstrainedBox(
      constraints: BoxConstraints(),
      child: mainCard,
    );

    return SingleChildScrollView(
      child: box,
    );
  }
}
