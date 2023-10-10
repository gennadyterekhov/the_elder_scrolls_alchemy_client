import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect_small_image.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';

class EffectCardSmall extends StatefulWidget {
  const EffectCardSmall({Key? key, required this.gameName, required this.effect}) : super(key: key);
  final Effect effect;
  final String gameName;

  @override
  State<EffectCardSmall> createState() => _EffectCardSmallState();
}

class _EffectCardSmallState extends State<EffectCardSmall> {
  Widget getEffectCard() {
    return EffectSmallImage(
      gameName: widget.gameName,
      effect: widget.effect,
    );
  }

  @override
  Widget build(BuildContext context) {
    final effectCard = getEffectCard();

    final inkWell = InkWell(
      onTap: (() {
        context.read<AppState>().moveToEffect(widget.effect.name);
      }),
      child: effectCard,
    );

    final int effectColor = (widget.effect.type == 'positive')
        ? Constant.positiveEffectBackgroundColor
        : Constant.negativeEffectBackgroundColor;

    return Card(
      color: Color(effectColor),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: inkWell,
      ),
    );
  }
}
