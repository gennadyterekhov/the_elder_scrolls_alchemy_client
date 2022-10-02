import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/pages/skyrim/effects/effect.dart';

class EffectCardMicro extends StatelessWidget {
  const EffectCardMicro(this.effect, {Key? key}) : super(key: key);
  final Effect effect;

  @override
  Widget build(BuildContext context) {
    return Text('${this.effect.id} ${this.effect.name}');
  }
}

class EffectCardSmall extends StatelessWidget {
  const EffectCardSmall({Key? key, required this.effect}) : super(key: key);
  final Effect effect;

  void onTap() {
    // debugPrint('EffectCardSmall onTap');
    // Navigator.push();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(children: [
          Text(effect.name),
          Text(effect.id),
          Text(effect.text),
          Text('${effect.magnitude}'),
          Text('${effect.value}'),
        ]),
      ),
    );
  }
}

class EffectCard extends StatelessWidget {
  const EffectCard({Key? key, required this.effect}) : super(key: key);
  final Effect effect;

  @override
  Widget build(BuildContext context) {
    return Text('${this.effect.id} ${this.effect.name}');
  }
}
