import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';

class IngredientCardMicro extends StatefulWidget {
  const IngredientCardMicro({Key? key, required this.gameName, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;
  final String gameName;

  @override
  State<IngredientCardMicro> createState() => _IngredientCardMicroState();
}

class _IngredientCardMicroState extends State<IngredientCardMicro> {
  void _onTap() {
    context.go('/${widget.gameName}/ingredient/${widget.ingredient.name}');
  }

  @override
  Widget build(BuildContext context) {
    final label = widget.ingredient.name;
    final fontSize = 20.0;

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
