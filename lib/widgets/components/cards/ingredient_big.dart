import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/effects_by_ingredient.dart';

class IngredientBigCard extends StatefulWidget {
  const IngredientBigCard({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  @override
  State<StatefulWidget> createState() => _IngredientBigCardState();
}

class _IngredientBigCardState extends State<IngredientBigCard> {
  void onTap() {
    context.go('/ingredient/${widget.ingredient.name}');
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

    SelectableText idText = SelectableText(
      widget.ingredient.id ?? 'id: ' + Constant.globalUnknown,
      textAlign: TextAlign.left,
    );

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
          const Spacer(),
          Row(
            children: [Text('Effects:')],
          ),
          Spacer(),
          EffectsByIngredient(ingredient: widget.ingredient),
          Spacer(),
        ]),
      ),
    );
  }
}