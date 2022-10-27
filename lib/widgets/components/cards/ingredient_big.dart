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
        overflow: TextOverflow.fade,
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
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 15,
            ),
          )
        : Container();

    Widget weightText = widget.ingredient.weight != null
        ? SelectableText(
            'weight: ${widget.ingredient.weight!}',
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 15,
            ),
          )
        : Container();

    Widget valueText = widget.ingredient.value != null
        ? SelectableText(
            'value: ${widget.ingredient.value!}',
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 15,
            ),
          )
        : Container();

    final bigCard = Card(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          nameText,
          idText,
          weightText,
          valueText,
          textText,
          Text(''),
          Row(
            children: [Text('Effects:')],
          ),
          EffectsByIngredient(ingredient: widget.ingredient),
        ]),
      ),
    );

    return bigCard;
  }
}
