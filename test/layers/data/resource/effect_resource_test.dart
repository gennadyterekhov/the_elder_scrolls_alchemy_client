import 'package:flutter_test/flutter_test.dart';
import 'package:logging/logging.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/business_logic/models/effect.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/effect_resource.dart';

// not sure if it's needed or not
setUpAll() {
  print('setUpAll');
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });
}

void main() {
  group("effect resource", () {
    test("search sorts with respect to localization", () {
      List<Effect> effects = EffectResource(gameName: Constant.gameNameSkyrim).searchEffectsByName("fort", "en");

      expect(effects.length, 21);
      expect(effects[0].name, 'Fortify Alteration');
      expect(effects[20].name, 'Fortify Two Handed');

      effects = EffectResource(gameName: Constant.gameNameSkyrim).searchEffectsByName("уяз", "ru");

      expect(effects.length, 5);
      expect(effects[0].name, 'Weakness to Magic'); //Уязвимость к магии
      expect(effects[4].name, 'Weakness to Poison'); //Уязвимость к яду

      effects = EffectResource(gameName: Constant.gameNameSkyrim).searchEffectsByName("вос", "ru");

      expect(effects.length, 4);
      expect(effects[0].name, 'Restore Stamina'); //Восстановление запаса сил
      expect(effects[1].name, 'Restore Health'); //Восстановление здоровья
      expect(effects[2].name, 'Restore Magicka'); //Восстановление магии
      expect(effects[3].name, 'Fortify Restoration'); //Повышение
    });

    test("Waterbreathing is not included where it should not be", () {
      List<Effect> effects = EffectResource(gameName: Constant.gameNameSkyrim).searchEffectsByName("повышение", "ru");
      Iterable<Effect> wtb = effects.where(isWaterbreathing);
      expect(wtb.length, 0);

      effects = EffectResource(gameName: Constant.gameNameSkyrim).searchEffectsByName("маги", "ru");
      wtb = effects.where(isWaterbreathing);
      expect(wtb.length, 0);
    });

    test("can search oblivion effects in russian", () {
      List<Effect> effects = EffectResource(gameName: Constant.gameNameOblivion).searchEffectsByName("восс", "ru");
      expect(effects.length, 11);
    });

    test("oblivion Повышение магии is not sorted uppermost", () {
      List<Effect> effects = EffectResource(gameName: Constant.gameNameOblivion).searchEffectsByName("", "ru");
      expect(effects.length, 68);
      expect(effects[0].name, "Silence");
      expect(effects[1].name, "Water Breathing");
    });
  });
}

bool isWaterbreathing(Effect effect) {
  return effect.name == "Waterbreathing";
}
