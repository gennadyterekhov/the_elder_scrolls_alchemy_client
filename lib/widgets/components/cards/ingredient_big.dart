import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/effects_by_ingredient.dart';

class IngredientCardBig extends StatefulWidget {
  const IngredientCardBig({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  @override
  State<StatefulWidget> createState() => _IngredientCardBigState();
}

class _IngredientCardBigState extends State<IngredientCardBig> {
  void onTap() {
    context.go('/${globalChosenGame}/ingredient/${widget.ingredient.name}');
  }

  @override
  Widget build(BuildContext context) {
    SelectableText nameText = SelectableText(
      widget.ingredient.name,
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );

    Widget idText = widget.ingredient.id != null
        ? SelectableText(
            'id: ${widget.ingredient.id}',
            textAlign: TextAlign.left,
          )
        : Container();

    Widget textText = widget.ingredient.text != null
        ? SelectableText(
            widget.ingredient.text!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
            ),
          )
        : Container();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          Row(
            children: [nameText],
          ),
          Row(
            children: [idText],
          ),
          Text(''),

          Row(
            children: [textText],
          ),
          // const Spacer(),
          Text(''),

          Row(
            children: [Text('Effects:')],
          ),
          // Spacer(),
          EffectsByIngredient(ingredient: widget.ingredient),
          // Spacer(),
        ]),
      ),
    );
  }
}
