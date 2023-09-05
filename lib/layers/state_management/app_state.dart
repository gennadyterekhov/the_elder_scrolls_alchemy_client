import 'package:bloc/bloc.dart';

class AppState extends Cubit<Map<String, dynamic>> {
  AppState()
      : super({
          'increment': 0,
        });

  void increment() {
    final newState = {...state};
    newState['increment'] += 1;
    emit(newState);
  }

  void decrement() {
    final newState = {...state};
    newState['increment'] -= 1;
    emit(newState);
  }
}
