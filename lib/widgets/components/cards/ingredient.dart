import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';

class IngredientCardMicro extends StatelessWidget {
  const IngredientCardMicro({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return Text('${this.ingredient.name} (${this.ingredient.id})');
  }
}

class IngredientCardSmall extends StatefulWidget {
  const IngredientCardSmall({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  @override
  State<StatefulWidget> createState() => _IngredientCardSmallState();
}

class _IngredientCardSmallState extends State<IngredientCardSmall> {
  void onTap() {
    context.go('/ingredient/${widget.ingredient.name}');
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
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            nameText,
            const Spacer(),
            idText,
          ]),
        ),
      ),
    );
  }
}

class IngredientCard extends StatefulWidget {
  const IngredientCard({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  @override
  State<StatefulWidget> createState() => _IngredientCardState();
}

class _IngredientCardState extends State<IngredientCard> {
  void onTap() {
    context.go('/ingredient/${widget.ingredient.name}');
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
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          nameText,
          const Spacer(),
          idText,
        ]),
      ),
    );
  }
}
