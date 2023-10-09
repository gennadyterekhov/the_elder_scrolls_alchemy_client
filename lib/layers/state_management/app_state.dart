import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'dart:html' as html;

import 'package:the_elder_scrolls_alchemy_client/router.dart';

class AppState extends Cubit<Map<String, dynamic>> {
  AppState({
    String gameName = 'skyrim',
    String language = 'en',
    bool isSearchVisible = true,
    String chosenTab = 'home',
    String chosenEffectName = '',
    String chosenIngredientName = '',
    String urlPath = '',
  }) : super({
          'gameName': gameName,
          'language': language,
          'isSearchVisible': isSearchVisible,
          'chosenTab': chosenTab,
          'chosenEffectName': chosenEffectName,
          'chosenIngredientName': chosenIngredientName,
          'urlPath': urlPath,
        });

  static const defaultState = {
    'gameName': 'skyrim',
    'language': 'en',
    'isSearchVisible': true,
    'chosenTab': 'home',
    'chosenEffectName': '',
    'chosenIngredientName': '',
    'urlPath': 'skyrim/home',
  };

  void setStateFromMap(Map<String, dynamic> updatedState) {
    AlchemyRouter.pushStateToNavigator(updatedState);
    emit(updatedState);
  }

  bool shouldSearchFieldBeShownOnThisPage() {
    if (state['chosenTab'] == Constant.tabEffects && state['chosenEffectName'] == '') {
      return true;
    }
    if (state['chosenTab'] == Constant.tabIngredients && state['chosenIngredientName'] == '') {
      return true;
    }
    return false;
  }

  @override
  void onChange(Change<Map<String, dynamic>> change) {
    super.onChange(change);

    if (kIsWeb) {
      html.window.history.pushState(null, change.nextState["urlPath"], '${change.nextState["urlPath"]}');
    }
  }

  Map<String, dynamic> get() {
    return state;
  }

  void changeGame(String gameName) async {
    final newState = {...state};
    newState['gameName'] = gameName;
    newState['chosenTab'] = 'home';
    newState['chosenEffectName'] = '';
    newState['chosenIngredientName'] = '';
    newState['urlPath'] = '${gameName}/home';

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('gameName', gameName);
    setStateFromMap(newState);
  }

  void changeLanguage(String language) async {
    final newState = {...state};
    newState['language'] = language;
    newState['chosenTab'] = 'home';
    newState['chosenEffectName'] = '';
    newState['chosenIngredientName'] = '';

    final prefs = await SharedPreferences.getInstance();
    // await prefs.setString('languageCode', languageCode); ??
    await prefs.setString('language', language);

    setStateFromMap(newState);
  }

  void moveToHome() {
    final newState = {...state};
    newState['chosenTab'] = 'home';
    newState['chosenEffectName'] = '';
    newState['chosenIngredientName'] = '';
    final gameName = state['gameName'];
    newState['urlPath'] = '${gameName}/home';
    setStateFromMap(newState);
  }

  void moveToEffects() {
    final newState = {...state};
    newState['chosenTab'] = 'effects';
    newState['chosenEffectName'] = '';
    newState['chosenIngredientName'] = '';
    final gameName = state['gameName'];
    newState['urlPath'] = '${gameName}/effects';

    setStateFromMap(newState);
  }

  void moveToIngredients() {
    final newState = {...state};
    newState['chosenTab'] = 'ingredients';
    newState['chosenEffectName'] = '';
    newState['chosenIngredientName'] = '';
    final gameName = state['gameName'];
    newState['urlPath'] = '${gameName}/ingredients';

    setStateFromMap(newState);
  }

  void moveToEffect(String effectName) {
    final newState = {...state};
    newState['chosenTab'] = 'effects';
    newState['chosenEffectName'] = effectName;
    newState['chosenIngredientName'] = '';
    final gameName = state['gameName'];
    newState['urlPath'] = '${gameName}/effects/$effectName';

    setStateFromMap(newState);
  }

  void moveToIngredient(String ingredientName) {
    final newState = {...state};
    newState['chosenTab'] = 'ingredients';
    newState['chosenEffectName'] = '';
    newState['chosenIngredientName'] = ingredientName;
    final gameName = state['gameName'];
    newState['urlPath'] = '${gameName}/ingredients/$ingredientName';

    setStateFromMap(newState);
  }

  void toggleSearch() async {
    final newState = {...state};
    newState['isSearchVisible'] = !newState['isSearchVisible'];
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isSearchVisible', newState['isSearchVisible']);

    setStateFromMap(newState);
  }

  void goBack() {
    AlchemyRouter.popFromNavigator();
    setStateFromMap(AlchemyRouter.getCurrent());
  }
}
