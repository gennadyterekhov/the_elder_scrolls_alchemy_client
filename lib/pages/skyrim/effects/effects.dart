import 'package:flutter/material.dart';

class EffectsPage extends StatefulWidget {
  const EffectsPage({Key? key}) : super(key: key);

  @override
  State<EffectsPage> createState() => _EffectsPageState();
}

class _EffectsPageState extends State<EffectsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: '''Effects page''',
                    style: Theme.of(context).textTheme.headline5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
