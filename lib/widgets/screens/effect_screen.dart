import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_elder_scrolls_alchemy_client/data/effect_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/data/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/effects/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';

class EffectScreen extends ConsumerWidget {
  const EffectScreen({Key? key, required this.effectName, required this.gameName}) : super(key: key);
  final String effectName;
  final String gameName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var widget;
    try {
      final effect = Effect.fromMap(ref.watch(globalCurrentGameMapProvider)['effects'][effectName]);
      widget = CustomScreen(pageWidget: EffectPage(effect: effect));
    } catch (exception) {
      widget = Column(children: [CupertinoActivityIndicator(), Text(exception.toString())]);
    }

    return widget;
  }
}
