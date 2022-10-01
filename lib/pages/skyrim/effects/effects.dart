import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class EffectsPage extends StatefulWidget {
  const EffectsPage({Key? key}) : super(key: key);

  @override
  State<EffectsPage> createState() => _EffectsPageState();
}

class _EffectsPageState extends State<EffectsPage> {
  @override
  Widget build(BuildContext context) {
    const id = '000ae723';
    Effect effect = DataProvider.getEffectById(id);

    String dataFromJson = '${effect.id}  ${effect.name} ';

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    // text: '''Effects page''',
                    text: dataFromJson,
                    style: Theme.of(context).textTheme.headline5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
