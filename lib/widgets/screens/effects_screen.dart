import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/effects/effects.dart';

class EffectsScreen extends StatelessWidget {
  const EffectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widget;
    try {
      widget = CustomScreen(pageWidget: const EffectsPage());
    } catch (exception) {
      widget = Column(children: [CupertinoActivityIndicator(), Text(exception.toString())]);
    }

    return widget;
  }
}
