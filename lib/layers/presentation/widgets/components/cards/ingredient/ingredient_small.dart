import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/custom_localization.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';

import '../../../../../../app.dart';

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
            gameName: widget.gameName,
            englishIngredientName: widget.ingredient.name,
            languageCode: TheElderScrollsAlchemyClientApp.getLocaleLanguageCode(context)),
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
          context.read<AppState>().moveToIngredient(widget.ingredient.name);
          // context.push('/${gameName}/ingredient/${widget.ingredient.name}');
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
