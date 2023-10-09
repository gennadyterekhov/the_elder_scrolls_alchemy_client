import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/custom_localization.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';

class IngredientCardMicro extends StatefulWidget {
  const IngredientCardMicro({Key? key, required this.gameName, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;
  final String gameName;

  @override
  State<IngredientCardMicro> createState() => _IngredientCardMicroState();
}

class _IngredientCardMicroState extends State<IngredientCardMicro> {
  void _onTap() {
    context.read<AppState>().moveToIngredient(widget.ingredient.name);
    // context.push('/${widget.gameName}/ingredient/${widget.ingredient.name}');
  }

  @override
  Widget build(BuildContext context) {
    final label = CustomLocalization.getIngredientName(
        gameName: widget.gameName, englishIngredientName: widget.ingredient.name, context: context);
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
