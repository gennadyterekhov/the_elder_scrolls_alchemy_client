import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class EffectPage extends StatefulWidget {
  const EffectPage({Key? key, required this.effect}) : super(key: key);

  final Effect effect;
  @override
  State<EffectPage> createState() => _EffectPageState();
}

class _EffectPageState extends State<EffectPage> {
  @override
  Widget build(BuildContext context) {
    Effect effect = widget.effect;

    String dataFromJson = '${effect.id}  ${effect.name} ';

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Effect ${effect.name}',
                  style: Theme.of(context).textTheme.headline1,
                ),
                TextSpan(
                  text: effect.id,
                  style: Theme.of(context).textTheme.headline4,
                ),
                TextSpan(
                  text: '',
                  style: Theme.of(context).textTheme.headline4,
                ),
                TextSpan(
                  text: effect.text,
                  style: Theme.of(context).textTheme.headline3,
                ),
                TextSpan(
                  text: '${effect.magnitude}',
                  style: Theme.of(context).textTheme.headline3,
                ),
                TextSpan(
                  text: '${effect.value}',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
