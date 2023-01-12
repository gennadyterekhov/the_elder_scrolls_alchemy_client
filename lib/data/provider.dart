import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';

final globalGamesMapProvider = Provider((ref) {
  return DataSource.getMap();
});

final globalIsSearchShownStateProvider = StateProvider((ref) {
  return true;
});

final globalChosenTabIndexStateProvider = StateProvider((ref) {
  return 1;
});

final globalGameNameStateNotifierProvider = StateNotifierProvider<GlobalGameNameNotifier, String>((ref) {
  return GlobalGameNameNotifier();
});

class GlobalGameNameNotifier extends StateNotifier<String> {
  GlobalGameNameNotifier() : super('sdf');
}
