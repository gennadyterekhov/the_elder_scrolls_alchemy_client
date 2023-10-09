import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/app_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/state_management/custom_navigator.dart';
import 'package:the_elder_scrolls_alchemy_client/router.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final blocBuilder = BlocBuilder<AppState, Map<String, dynamic>>(
      builder: (context, state) {
        if (CustomNavigator.getLength() > 0) {
          return IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.read<AppState>().goBack();
            },
          );
        }
        return SizedBox.shrink();
      },
    );

    return blocBuilder;
  }
}
