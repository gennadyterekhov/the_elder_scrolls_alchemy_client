import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/pages/ingredients.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/screens/custom_screen.dart';

class IngredientsScreen extends StatelessWidget {
  const IngredientsScreen({Key? key, required this.gameName}) : super(key: key);
  final String gameName;

  @override
  Widget build(BuildContext context) {
    return CustomScreen(gameName: this.gameName, pageWidget: IngredientsPage(gameName: gameName));
  }
}
