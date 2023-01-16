import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:go_router/go_router.dart';
import 'package:the_elder_scrolls_alchemy_client/data/constants.dart';
import 'package:the_elder_scrolls_alchemy_client/data/l10n/custom_localization.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/ingredient.dart';

class IngredientCardSmall extends StatefulWidget {
  const IngredientCardSmall({Key? key, required this.gameName, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;
  final String gameName;

  @override
  State<IngredientCardSmall> createState() => _IngredientCardSmallState();
}

class _IngredientCardSmallState extends State<IngredientCardSmall> {
  @override
  Widget build(BuildContext context) {
    final gameName = widget.gameName;

    final nameText = Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: Text(
        CustomLocalization.getIngredientName(
            gameName: widget.gameName, englishIngredientName: widget.ingredient.name, context: context),
        textAlign: TextAlign.center,
        overflow: TextOverflow.visible,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ),
    );

    Text idText = Text(widget.ingredient.id ?? 'id: ' + Constant.globalUnknown);

    return Card(
      child: InkWell(
        onTap: () {
          context.go('/${gameName}/ingredient/${widget.ingredient.name}');
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Image(
              width: 64,
              height: 64,
              image: AssetImage('assets/img/${gameName}/ingredients/${widget.ingredient.name}.png'),
            ),
            nameText,
          ]),
        ),
      ),
    );
  }
}
