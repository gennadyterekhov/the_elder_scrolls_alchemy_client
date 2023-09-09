import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/pages/home/game_picker.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/pages/home/language_picker.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/links/image_link.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/links/web_link.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.gameName}) : super(key: key);
  final String gameName;

  @override
  State<HomePage> createState() => _HomePageState();
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

  @override
  Widget build(BuildContext context) {
    const languagePicker = LanguagePicker();

    final gamePicker = GamePicker(gameName: context.read<AppState>().get()['gameName']);
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
            ],
          ),
        ),
      ),
    );

    final height = MediaQuery.of(context).size.height;
    final box = ConstrainedBox(
      constraints: BoxConstraints(),
      child: mainCard,
    );

    return SingleChildScrollView(
      child: box,
    );
  }
}
