import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/ingredients/ingredients.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';

class IngredientsScreen extends StatelessWidget {
  const IngredientsScreen({Key? key, required this.gameName}) : super(key: key);
  final String gameName;

  @override
  Widget build(BuildContext context) {
    return CustomScreen(pageWidget: IngredientsPage(gameName: gameName));
  }
}
