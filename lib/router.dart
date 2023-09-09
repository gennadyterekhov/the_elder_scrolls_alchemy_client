import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/navigation/navigation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AlchemyRouter {
  static bool isGameNameValid({required String gameName}) {
    return DataResource.gameNames.contains(gameName);
  }

  static bool isEffectValid({required String gameName, required String effectName}) {
    return isGameNameValid(gameName: gameName) && DataResource.getMap()[gameName]['effects'].containsKey(effectName);
  }

  static bool isIngredientValid({required String gameName, required String ingredientName}) {
    return isGameNameValid(gameName: gameName) &&
        DataResource.getMap()[gameName]['ingredients'].containsKey(ingredientName);
  }

  static bool isLocaleValid({
    required String locale,
  }) {
    return AppLocalizations.supportedLocales.contains(Locale(locale));
  }

  static String getRouteByIndex({int index = 0}) {
    final items = Navigation.getItemsPaths();
    if (index > items.length) {
      return '/home';
    }

    return items[index]['path'] ?? '/home';
  }
}
