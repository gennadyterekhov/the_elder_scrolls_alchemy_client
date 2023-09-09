import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';

class AppState extends Cubit<Map<String, dynamic>> {
  AppState({
    String gameName = 'skyrim',
    String language = 'english',
    bool isSearchVisible = true,
    String chosenTab = 'home',
    String chosenEffectName = '',
    String chosenIngredientName = '',
  }) : super({
          'settings': 0, //?
          'gameName': gameName,
          'language': language,
          'isSearchVisible': isSearchVisible,
          'chosenTab': chosenTab,
          'chosenEffectName': chosenEffectName,
          'chosenIngredientName': chosenIngredientName,
        });

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
    print('in cubit onChange');

    print(change);
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

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('gameName', gameName);

    emit(newState);
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

    emit(newState);
  }

  void moveToHome() {
    final newState = {...state};
    newState['chosenTab'] = 'home';
    newState['chosenEffectName'] = '';
    newState['chosenIngredientName'] = '';

    emit(newState);
  }

  void moveToEffects() {
    final newState = {...state};
    newState['chosenTab'] = 'effects';
    newState['chosenEffectName'] = '';
    newState['chosenIngredientName'] = '';

    emit(newState);
  }

  void moveToIngredients() {
    final newState = {...state};
    newState['chosenTab'] = 'ingredients';
    newState['chosenEffectName'] = '';
    newState['chosenIngredientName'] = '';

    emit(newState);
  }

  void moveToEffect(String effectName) {
    final newState = {...state};
    newState['chosenTab'] = 'effects';
    newState['chosenEffectName'] = effectName;
    newState['chosenIngredientName'] = '';

    emit(newState);
  }

  void moveToIngredient(String ingredientName) {
    final newState = {...state};
    newState['chosenTab'] = 'ingredients';
    newState['chosenEffectName'] = '';
    newState['chosenIngredientName'] = ingredientName;

    emit(newState);
  }

  void toggleSearch() async {
    final newState = {...state};
    newState['isSearchVisible'] = !newState['isSearchVisible'];
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isSearchVisible', newState['isSearchVisible']);

    emit(newState);
  }
}
