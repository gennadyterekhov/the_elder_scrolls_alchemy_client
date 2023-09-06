import 'package:bloc/bloc.dart';

class AppState extends Cubit<Map<String, dynamic>> {
  AppState()
      : super({
          'settings': 0, //?
          'gameName': 'skyrim',
          'language': 'english',
          'isSearchShown': true,
          'chosenTab': 'home',
          'chosenEffectName': "",
          'chosenIngredientName': "",
        });

  Map<String, dynamic> get() {
    return state;
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
    newState['isSearchShown'] = !newState['isSearchShown'];

    emit(newState);
  }
}
