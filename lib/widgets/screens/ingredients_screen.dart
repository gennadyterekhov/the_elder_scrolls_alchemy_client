import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/ingredients/ingredients.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';

class IngredientsScreen extends StatelessWidget {
  const IngredientsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widget;
    try {
      widget = CustomScreen(pageWidget: const IngredientsPage());
    } catch (exception) {
      widget = Column(children: [CupertinoActivityIndicator(), Text(exception.toString())]);
    }

    return widget;
  }
}
