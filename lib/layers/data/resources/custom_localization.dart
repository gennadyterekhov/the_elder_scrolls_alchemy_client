import 'package:flutter/widgets.dart';
import 'package:the_elder_scrolls_alchemy_client/app.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';

class CustomLocalization {
  static getEffectName({
    required String gameName,
    required String englishEffectName,
    required BuildContext context,
  }) {
    String? localizedEffectName =
        DataResource.getLocalizedMap()[gameName]!['effects']?[englishEffectName]?[TheElderScrollsAlchemyClientApp.getLocaleLanguageCode(context)];

    return ((localizedEffectName != null) && (localizedEffectName != '')) ? localizedEffectName : englishEffectName;
  }

  static getIngredientName({
    required String gameName,
    required String englishIngredientName,
    required BuildContext context,
  }) {
    String? localizedIngredientName = DataResource.getLocalizedMap()[gameName]!['ingredients']?[englishIngredientName]
        ?[TheElderScrollsAlchemyClientApp.getLocaleLanguageCode(context)];

    return ((localizedIngredientName != null) && (localizedIngredientName != ''))
        ? localizedIngredientName
        : englishIngredientName;
  }
}
