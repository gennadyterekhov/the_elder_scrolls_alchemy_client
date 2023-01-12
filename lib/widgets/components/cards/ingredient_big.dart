import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/provider.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/cards/ingredient_long.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/common_ingredients_by_column.dart';
import 'package:the_elder_scrolls_alchemy_client/widgets/components/divider_text.dart';

class IngredientCardBig extends ConsumerStatefulWidget {
  const IngredientCardBig({Key? key, required this.gameName, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;
  final String gameName;

  @override
  ConsumerState<IngredientCardBig> createState() => _IngredientCardBigState();
}

class _IngredientCardBigState extends ConsumerState<IngredientCardBig> {
  void onTap() {
    context.go('/${widget.gameName}/ingredient/${widget.ingredient.name}');
  }

  @override
  Widget build(BuildContext context) {
    final cardsList = [
      IngredientCardLong(gameName: widget.gameName, ingredient: widget.ingredient),
      const DividerText(text: 'Ingredients with at least one common effect'),
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
