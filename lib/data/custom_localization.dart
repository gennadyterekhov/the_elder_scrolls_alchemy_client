import 'package:flutter/widgets.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';

class CustomLocalization {
  static getEffectName({
    required String gameName,
    required String englishEffectName,
    required BuildContext context,
  }) {
    return DataSource.getLocalizedMap()[gameName]['effects']?[englishEffectName]
            ?[MyApp.getLocaleLanguageCode(context)] ??
        englishEffectName;
  }

  static getIngredientName({
    required String gameName,
    required String englishIngredientName,
    required BuildContext context,
  }) {
    return DataSource.getLocalizedMap()[gameName]['ingredients']?[englishIngredientName]
            ?[MyApp.getLocaleLanguageCode(context)] ??
        englishIngredientName;
  }
}
