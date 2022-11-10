import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';

class IngredientCardSmall extends ConsumerStatefulWidget {
  const IngredientCardSmall({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  @override
  ConsumerState<IngredientCardSmall> createState() => _IngredientCardSmallState();
}

class _IngredientCardSmallState extends ConsumerState<IngredientCardSmall> {
  void onTap() {
    var gameName = ref.watch(globalGameNameStateProvider);

    context.push('/${gameName}/ingredient/${widget.ingredient.name}');
  }

  @override
  Widget build(BuildContext context) {
    Text nameText = Text(
      widget.ingredient.name,
      textAlign: TextAlign.center,
      overflow: TextOverflow.visible,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );

    Text idText = Text(widget.ingredient.id ?? 'id: ' + Constant.globalUnknown);

    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            nameText,
          ]),
        ),
      ),
    );
  }
}
