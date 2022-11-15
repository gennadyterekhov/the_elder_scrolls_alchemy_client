import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';

final globalGamesMapProvider = Provider((ref) {
  return DataSource.getMap();
});

final globalGameNameStateProvider = StateProvider((ref) {
  return 'skyrim';
});

final globalIsSearchShownStateProvider = StateProvider((ref) {
  return true;
});

final globalChosenTabIndexStateProvider = StateProvider((ref) {
  return 1;
});

final globalCurrentGameMapProvider = Provider((ref) {
  final gameName = ref.watch(globalGameNameStateProvider);
  final map = ref.watch(globalGamesMapProvider);

  return map[gameName];
});

final globalGameNameStateNotifierProvider = StateNotifierProvider<GlobalGameNameNotifier, String>((ref) {
  return GlobalGameNameNotifier();
});

class GlobalGameNameNotifier extends StateNotifier<String> {
  GlobalGameNameNotifier() : super('sdf');
}
