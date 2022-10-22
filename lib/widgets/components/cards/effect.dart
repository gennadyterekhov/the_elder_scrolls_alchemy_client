import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/ingredients_by_effect.dart';

class EffectCardMicro extends StatelessWidget {
  const EffectCardMicro({Key? key, required this.effect}) : super(key: key);
  final Effect effect;

  @override
  Widget build(BuildContext context) {
    return Text('${this.effect.name} (${this.effect.id})');
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
      widget.effect.text ?? Constant.globalUnknown,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 15,
      ),
    );

    Text idText = Text(widget.effect.id ?? 'id: ' + Constant.globalUnknown);

    Text magnitudeText =
        Text(widget.effect.magnitude != null ? 'magnitude: ${widget.effect.magnitude}' : Constant.globalUnknown);

    Text valueText = Text(widget.effect.value != null ? 'value: ${widget.effect.value}' : Constant.globalUnknown);

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

class EffectCard extends StatelessWidget {
  const EffectCard({Key? key, required this.effect}) : super(key: key);
  final Effect effect;

  @override
  Widget build(BuildContext context) {
    Text nameText = Text(
      this.effect.name,
      textAlign: TextAlign.left,
      overflow: TextOverflow.visible,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );

    Text textText = Text(
      this.effect.text ?? Constant.globalUnknown,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 15,
      ),
    );

    Text idText = Text(this.effect.id ?? 'id: ' + Constant.globalUnknown);

    Text magnitudeText =
        Text(this.effect.magnitude != null ? 'magnitude: ${this.effect.magnitude}' : Constant.globalUnknown);

    Text valueText = Text(this.effect.value != null ? 'value: ${this.effect.value}' : Constant.globalUnknown);

    return Card(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(children: [
          Row(
            children: [nameText],
          ),
          Row(
            children: [idText],
          ),
          Spacer(),
          Row(
            children: [textText],
          ),
          Spacer(),
          Row(
            children: [magnitudeText],
          ),
          Row(
            children: [valueText],
          ),
          Spacer(),
          Row(
            children: [Text('Ingredients that have this effect:')],
          ),
          Spacer(),
          IngredientsByEffect(effect: this.effect)
        ]),
      ),
    );
  }
}
