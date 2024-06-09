import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/custom_localization.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';

import '../../../../../../app.dart';

class EffectCardMicro extends StatefulWidget {
  const EffectCardMicro({Key? key, required this.gameName, required this.effect, this.fontSize = 30.0})
      : super(key: key);
  final Effect effect;
  final String gameName;
  final double fontSize;

  @override
  State<EffectCardMicro> createState() => _EffectCardMicroState();
}

class _EffectCardMicroState extends State<EffectCardMicro> {
  void _onTap() {
    context.read<AppState>().moveToEffect(widget.effect.name);
  }

  @override
  Widget build(BuildContext context) {
    final label = CustomLocalization.getEffectName(
        gameName: widget.gameName,
        englishEffectName: widget.effect.name,
        languageCode: TheElderScrollsAlchemyClientApp.getLocaleLanguageCode(context));

    final effectColor = widget.effect.type == 'positive'
        ? Constant.positiveEffectBackgroundColor
        : Constant.negativeEffectBackgroundColor;

    final text = Text(
      label,
      style: TextStyle(
        fontSize: widget.fontSize,
      ),
    );

    final wrappedCard = Wrap(
      children: [
        Card(
          color: Color(effectColor),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: InkWell(
              splashColor: Color(effectColor),
              focusColor: Color(effectColor),
              highlightColor: Color(effectColor),
              onTap: _onTap,
              child: text,
            ),
          ),
        ),
      ],
    );
    return wrappedCard;
  }
}
