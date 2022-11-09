import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/web_link.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
    final welcomeText = SelectableText(
      'This app allows to expore data about alchemy in various elder scrolls games.',
      style: Theme.of(context).textTheme.headline5,
    );

    const dataRepositoryLink =
        WebLink(text: 'Data Repository', url: 'https://github.com/gennadyterekhov/skyrim_alchemy');

    const appRepositoryLink =
        WebLink(text: 'Repository', url: 'https://github.com/gennadyterekhov/the_elder_scrolls_alchemy_client');

    final linksRow = Row(
      children: const [
        appRepositoryLink,
        Spacer(),
        dataRepositoryLink,
      ],
    );

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              welcomeText,
              const Spacer(),
              linksRow,
            ],
          ),
        ),
      ),
    );
  }
}
