import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
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

class EffectCardSmall extends StatefulWidget {
  const EffectCardSmall({Key? key, required this.effect}) : super(key: key);
  final Effect effect;

  @override
  State<StatefulWidget> createState() => _EffectCardSmallState();
}

class _EffectCardSmallState extends State<EffectCardSmall> {
  void onTap() {
    setState(() {
      globalPage = EffectPage(effect: widget.effect);
    });
    // debugPrint('EffectCardSmall onTap');
    // Navigator.push();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(children: [
          Text(widget.effect.name),
          Text(widget.effect.id ?? '[test] no id'),
          Text(widget.effect.text ?? '[test] no text'),
          Text(widget.effect.magnitude != null
              ? '${widget.effect.magnitude}'
              : ''),
          Text(widget.effect.value != null ? '${widget.effect.value}' : ''),
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
    return RichText(
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
    );
  }
}
