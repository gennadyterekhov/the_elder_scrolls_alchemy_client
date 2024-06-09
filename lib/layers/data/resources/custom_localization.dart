import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';

class CustomLocalization {
  static getEffectName({
    required String gameName,
    required String englishEffectName,
    required String languageCode,
  }) {
    String? localizedEffectName =
        DataResource.getLocalizedMap()[gameName]!['effects']?[englishEffectName]?[languageCode];

    return ((localizedEffectName != null) && (localizedEffectName != '')) ? localizedEffectName : englishEffectName;
  }

  static getIngredientName({
    required String gameName,
    required String englishIngredientName,
    required String languageCode,
  }) {
    String? localizedIngredientName =
        DataResource.getLocalizedMap()[gameName]!['ingredients']?[englishIngredientName]?[languageCode];

    return ((localizedIngredientName != null) && (localizedIngredientName != ''))
        ? localizedIngredientName
        : englishIngredientName;
  }
}
