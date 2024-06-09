import 'package:flutter/material.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/custom_localization.dart';

import '../../../../../app.dart';

class EffectSmallImage extends StatelessWidget {
  const EffectSmallImage({Key? key, required this.gameName, required this.effect}) : super(key: key);
  final Effect effect;
  final String gameName;

  @override
  Widget build(BuildContext context) {
    Text nameText = Text(
      CustomLocalization.getEffectName(
          gameName: this.gameName,
          englishEffectName: this.effect.name,
          languageCode: TheElderScrollsAlchemyClientApp.getLocaleLanguageCode(context)),
      textAlign: TextAlign.center,
      overflow: TextOverflow.visible,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
    if (this.gameName == Constant.gameNameSkyrim) {
      return nameText;
    }
    final extension = this.gameName == Constant.gameNameMorrowind ? 'jpg' : 'png';

    final rowWithImage = Wrap(
      children: [
        Image(
          width: 32,
          height: 32,
          image: AssetImage('assets/img/${this.gameName}/effects/${this.effect.name}.$extension'),
        ),
        Container(margin: const EdgeInsets.only(left: 8.0), child: nameText),
      ],
    );
    return rowWithImage;
  }
}
