import 'package:bloc/bloc.dart';

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

  @override
  void onChange(Change<Map<String, dynamic>> change) {
    super.onChange(change);
    print('in cubit onChange');

    print(change);
  }

  Map<String, dynamic> get() {
    return state;
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

  void toggleSearch() {
    final newState = {...state};
    newState['isSearchVisible'] = !newState['isSearchVisible'];

    emit(newState);
  }
}
