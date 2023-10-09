import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/ingredient.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/links/web_link.dart';

class UespLink extends StatelessWidget {
  const UespLink({Key? key, this.effect, this.ingredient}) : super(key: key);
  final Effect? effect;
  final Ingredient? ingredient;

  @override
  Widget build(BuildContext context) {
    if (effect != null) {
      final link = effect!.uespUrl != null ? WebLink(text: '[uesp]', url: effect!.uespUrl!) : const SizedBox.shrink();

      return link;
    }
    if (ingredient != null) {
      final link =
          ingredient!.uespUrl != null ? WebLink(text: '[uesp]', url: ingredient!.uespUrl!) : const SizedBox.shrink();

      return link;
    }
    return const SizedBox.shrink();
  }
}
