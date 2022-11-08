import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
    final link = InkWell(
      child: SelectableText(
        'Data Repository',
        style: const TextStyle(color: Colors.blue),
        onTap: () {
          launch('https://github.com/gennadyterekhov/skyrim_alchemy');
        },
      ),
    );
    final repoLink = InkWell(
      child: SelectableText(
        'Repository',
        style: const TextStyle(color: Colors.blue),
        onTap: () {
          launch('https://github.com/gennadyterekhov/the_elder_scrolls_alchemy_client');
        },
      ),
    );
    return Card(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                'This app allows to expore data about alchemy in various elder scrolls games.',
                style: Theme.of(context).textTheme.headline5,
              ),
              Spacer(),
              Row(
                children: [
                  repoLink,
                  Spacer(),
                  link,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
