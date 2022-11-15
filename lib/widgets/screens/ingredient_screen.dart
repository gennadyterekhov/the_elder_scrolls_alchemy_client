import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_elder_scrolls_alchemy_client/data/ingredient_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/data/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/pages/ingredients/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/screens/custom_screen.dart';

class IngredientScreen extends ConsumerWidget {
  const IngredientScreen({Key? key, required this.ingredientName, required this.gameName}) : super(key: key);

  final String ingredientName;
  final String gameName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var widget;
    try {
      final currentMap = ref.watch(globalCurrentGameMapProvider)['ingredients'];
      final ingredient = Ingredient.fromMap(currentMap[ingredientName]);
      widget = CustomScreen(pageWidget: IngredientPage(ingredient: ingredient));
    } catch (err) {
      widget = Column(children: [CupertinoActivityIndicator(), Text(err.toString())]);
    }

    return widget;
  }
}
