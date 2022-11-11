import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class EffectCardSmall extends ConsumerStatefulWidget {
  const EffectCardSmall({Key? key, required this.effect}) : super(key: key);
  final Effect effect;

  @override
  ConsumerState<EffectCardSmall> createState() => _EffectCardSmallState();
}

class _EffectCardSmallState extends ConsumerState<EffectCardSmall> {
  @override
  Widget build(BuildContext context) {
    var gameName = ref.watch(globalGameNameStateProvider);
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

    final extension = gameName == DataSource.gameNameMorrowind ? 'jpg' : 'png';

    final rowWithImage = Row(mainAxisSize: MainAxisSize.min, children: [
      Image(
        width: 32,
        height: 32,
        image: AssetImage('assets/img/${gameName}/effects/${widget.effect.name}.$extension'),
      ),
      Container(margin: const EdgeInsets.only(left: 8.0), child: nameText),
    ]);

    final inkWell = InkWell(
      onTap: (() => context.push('/${gameName}/effect/${widget.effect.name}')),
      child: rowWithImage,
    );
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: inkWell,
    ));
  }
}
