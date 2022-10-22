import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/skyrim/ingredients/ingredients.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';

class IngredientsScreen extends StatelessWidget {
  const IngredientsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => CustomScreen(pageWidget: const IngredientsPage());
}
