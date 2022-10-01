import 'package:flutter/material.dart';

class PotionsPage extends StatefulWidget {
  const PotionsPage({Key? key}) : super(key: key);

  @override
  State<PotionsPage> createState() => _PotionsPageState();
}

class _PotionsPageState extends State<PotionsPage> {
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
                    text: '''Potions page''',
                    style: Theme.of(context).textTheme.headline5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
