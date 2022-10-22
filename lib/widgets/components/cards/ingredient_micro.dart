import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';

class IngredientCardMicro extends StatefulWidget {
  const IngredientCardMicro({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  @override
  State<StatefulWidget> createState() => _IngredientCardMicroState();
}

class _IngredientCardMicroState extends State<IngredientCardMicro> {
  void _onTap() {
    context.go('/ingredient/${widget.ingredient.name}');
  }

  @override
  Widget build(BuildContext context) {
    final label = globalShowInlineId ? '${widget.ingredient.name} (${widget.ingredient.id})' : widget.ingredient.name;
    final fontSize = globalShowInlineId ? 15.0 : 20.0;

    final text = Text(
      label,
      style: TextStyle(fontSize: fontSize),
    );

    return InkWell(
      onTap: _onTap,
      child: text,
    );
  }
}
