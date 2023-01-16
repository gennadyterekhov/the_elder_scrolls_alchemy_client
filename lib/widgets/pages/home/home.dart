import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/web_link.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:the_elder_scrolls_alchemy_client/extensions/capitalize.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.gameName}) : super(key: key);
  final String gameName;

  @override
  State<HomePage> createState() => _HomePageState();
}

List<DropdownMenuItem<String>> getLocaleButtonsDropdown(context) {
  List<DropdownMenuItem<String>> popupMenuItems = [];
  Constant.supportedLanguageCodesToCountryCodesMap.forEach((langCode, countryCode) {
    popupMenuItems.add(
      DropdownMenuItem(
        value: langCode,
        child: Text(
          Constant.supportedLanguageCodesToLanguageNamesMap[langCode] ?? 'unknown',
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
        child: Text(gameName.capitalize()),
      ),
    );
  }

  return popupMenuItems;
}

String getCountryCodeByLanguageCode(String languageCode) {
  return Constant.supportedLanguageCodesToCountryCodesMap[languageCode] ?? 'un';
}

class _HomePageState extends State<HomePage> with RestorationMixin {
  final RestorableInt _selectedIndex = RestorableInt(0);

  @override
  String get restorationId => 'nav_rail_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedIndex, 'selected_index');
  }

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
          GoRouter.of(context).go('/$gameName/home');
        }
      },
    );

    return gamePicker;
  }

  @override
  Widget build(BuildContext context) {
    final languagePicker = getLanguagePicker(context);

    final gamePicker = getGamePicker(context);

    final welcomeText = SelectableText(
      AppLocalizations.of(context)!.homePageDescription,
      style: Theme.of(context).textTheme.headline5,
    );

    final dataOriginDescriptionText = SelectableText(
      AppLocalizations.of(context)!.homePageDataOriginDescription,
      style: Theme.of(context).textTheme.headline5,
    );

    const dataRepositoryLink =
        WebLink(text: 'Data Repository', url: 'https://github.com/gennadyterekhov/skyrim_alchemy');

    const appRepositoryLink =
        WebLink(text: 'Repository', url: 'https://github.com/gennadyterekhov/the_elder_scrolls_alchemy_client');

    const apkLink = WebLink(
        text: 'Android APK',
        url: 'https://github.com/gennadyterekhov/the_elder_scrolls_alchemy_client/tree/main/public/android');

    final linksRow = Wrap(
      alignment: WrapAlignment.spaceEvenly,
      spacing: 32,
      runSpacing: 32,
      children: const [
        appRepositoryLink,
        apkLink,
        dataRepositoryLink,
        //TODO add google play market and ruStore and appStore links
      ],
    );

    final mainCard = Card(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              welcomeText,
              dataOriginDescriptionText,
              gamePicker,
              languagePicker,
              const Image(image: AssetImage('assets/img/logo.png')),
              linksRow,
            ],
          ),
        ),
      ),
    );

    final height = MediaQuery.of(context).size.height;
    final box = ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: height,
      ),
      child: mainCard,
    );

    return SingleChildScrollView(
      child: box,
    );
  }
}
