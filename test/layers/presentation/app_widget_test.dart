import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_elder_scrolls_alchemy_client/app.dart';
import 'package:the_elder_scrolls_alchemy_client/di_container.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/presentation/widgets/components/cards/effect/effect_small.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _languageCode = Constant.fallbackLanguage;



void main() {
  Map<String, Object> values = <String, Object>{'languageCode': _languageCode};
  SharedPreferences.setMockInitialValues(values);
}
