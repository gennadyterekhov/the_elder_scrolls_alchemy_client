import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/ingredient/ingredient_long.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/lists/common_ingredients_by_column.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/divider_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IngredientCardBig extends StatefulWidget {
  const IngredientCardBig({Key? key, required this.gameName, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;
  final String gameName;

  @override
  State<IngredientCardBig> createState() => _IngredientCardBigState();
}

class _IngredientCardBigState extends State<IngredientCardBig> {
  void onTap() {
    context.push('/${widget.gameName}/ingredient/${widget.ingredient.name}');
  }

  @override
  Widget build(BuildContext context) {
    final cardsList = [
      IngredientCardLong(gameName: widget.gameName, ingredient: widget.ingredient),
      DividerText(text: AppLocalizations.of(context)!.ingredientCardBigIngredientsWithAtLeastOneCommonEffect),
      CommonIngredientsByColumn(gameName: widget.gameName, ingredient: widget.ingredient),
    ];

    final cardsColumn = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cardsList,
    );

    final box = ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
        minWidth: MediaQuery.of(context).size.width,
      ),
      child: cardsColumn,
    );

    return SingleChildScrollView(
      child: box,
    );
  }
}
