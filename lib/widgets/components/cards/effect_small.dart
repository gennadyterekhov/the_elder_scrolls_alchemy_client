import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/ingredients_by_effect.dart';

class EffectCardSmall extends StatefulWidget {
  const EffectCardSmall({Key? key, required this.effect}) : super(key: key);
  final Effect effect;

  @override
  State<StatefulWidget> createState() => _EffectCardSmallState();
}

class _EffectCardSmallState extends State<EffectCardSmall> {
  void onTap() {
    context.go('/effect/${widget.effect.name}');
  }

  @override
  Widget build(BuildContext context) {
    Text nameText = Text(
      widget.effect.name,
      textAlign: TextAlign.center,
      overflow: TextOverflow.visible,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );

    Text textText = Text(
      widget.effect.text ?? 'text: ${Constant.globalUnknown}',
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 15,
      ),
    );

    Text idText = Text(widget.effect.id ?? 'id: ' + Constant.globalUnknown);

    Text magnitudeText = Text(widget.effect.magnitude != null
        ? 'magnitude: ${widget.effect.magnitude}'
        : 'magnitude: ${Constant.globalUnknown}');

    Text valueText =
        Text(widget.effect.value != null ? 'value: ${widget.effect.value}' : 'value: ${Constant.globalUnknown}');

    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            nameText,
            const Spacer(),
            textText,
          ]),
        ),
      ),
    );
  }
}
