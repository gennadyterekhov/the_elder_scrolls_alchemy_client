import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/data/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';

class IngredientCardSmall extends ConsumerStatefulWidget {
  const IngredientCardSmall({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  @override
  ConsumerState<IngredientCardSmall> createState() => _IngredientCardSmallState();
}

class _IngredientCardSmallState extends ConsumerState<IngredientCardSmall> {
  @override
  Widget build(BuildContext context) {
    var gameName = ref.watch(globalGameNameStateProvider);

    final nameText = Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: Text(
        widget.ingredient.name,
        textAlign: TextAlign.center,
        overflow: TextOverflow.visible,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ),
    );

    Text idText = Text(widget.ingredient.id ?? 'id: ' + Constant.globalUnknown);

    return Card(
      child: InkWell(
        onTap: () {
          context.go('/${gameName}/ingredient/${widget.ingredient.name}');
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Image(
              width: 64,
              height: 64,
              image: AssetImage('assets/img/${gameName}/ingredients/${widget.ingredient.name}.png'),
            ),
            nameText,
          ]),
        ),
      ),
    );
  }
}
