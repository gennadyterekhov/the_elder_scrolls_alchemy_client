import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';

class IngredientCardMicro extends ConsumerStatefulWidget {
  const IngredientCardMicro({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;

  @override
  ConsumerState<IngredientCardMicro> createState() => _IngredientCardMicroState();
}

class _IngredientCardMicroState extends ConsumerState<IngredientCardMicro> {
  void _onTap() {
    var gameName = ref.watch(globalGameNameStateProvider);

    context.push('/${gameName}/ingredient/${widget.ingredient.name}');
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
