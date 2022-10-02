import 'package:the_elder_scrolls_alchemy_client/main.dart';
import 'package:the_elder_scrolls_alchemy_client/models/effect.dart';

class DataProvider {
  static Map<String, dynamic> _getMap() {
    return _globalMap;
  }

  static Map<String, Effect> getAllEffects() {
    // TODO this will not work if games have different models. Find out how to make better
    // also will not work if data is empty
    Map<String, Effect> resultMap = {};

    if (globalChosenGame != gameNameSkyrim) {
      // TODO remove when all data is present
      return {};
    }

    _getMap()[globalChosenGame]['effects']
        .forEach((id, effect) => resultMap[id] = Effect.fromMap(effect));

    return resultMap;
  }

  static Map<String, Effect> getAllSkyrimEffects() {
    Map<String, Effect> resultMap = {};

    _getMap()[gameNameSkyrim]['effects']
        .forEach((id, effect) => resultMap[id] = Effect.fromMap(effect));

    return resultMap;
  }

  static Effect getSkyrimEffectById(String id) {
    Effect effect = Effect.fromMap(_getMap()[gameNameSkyrim]['effects'][id]);

    return effect;
  }

  static const gameNameSkyrim = 'skyrim';
  static const gameNameOblivion = 'oblivion';
  static const gameNameMorrowind = 'morrowind';

  static const Map<String, dynamic> _globalMap = {
    "_meta": {},
    gameNameSkyrim: {
      "effects": {
        "000ae723": {
          "id": "000ae723",
          "name": "Cure Disease",
          "text": "Cures all diseases",
          "magnitude": 5,
          "value": 21,
          "ingredients": ["00052695", "000e7ed0", "0006bc00", "0003ad76"]
        },
        "0003eb42": {
          "id": "0003eb42",
          "name": "Damage Health",
          "text": "Causes poison damage",
          "magnitude": 2,
          "value": 3,
          "ingredients": [
            "000b701a",
            "000516c8",
            "0003ad63",
            "0003ad5d",
            "001016b3",
            "000b18cd",
            "0004da23",
            "0002f44c",
            "00059b86",
            "00077e1d",
            "00106e1a",
            "0003ad6f",
            "0006bc0b",
            "0003ad72",
            "0003ad60"
          ]
        },
        "0003a2b6": {
          "id": "0003a2b6",
          "name": "Damage Magicka",
          "text": "Drains the target's Magicka",
          "magnitude": 3,
          "value": 52,
          "ingredients": [
            "000727e0",
            "0003ad56",
            "0003ad5b",
            "0006bc07",
            "0003ad73",
            "0003ad66",
            "00057f91",
            "000b18cd",
            "000727df",
            "0004da24",
            "0007edf5"
          ]
        },
        "00073f2b": {
          "id": "00073f2b",
          "name": "Damage Magicka Regen",
          "text": "Decrease target's Magicka regeneration by 100%",
          "magnitude": 5,
          "value": 265,
          "ingredients": [
            "0006bc02",
            "000727de",
            "00077e1c",
            "00023d77",
            "0003ad73",
            "00057f91",
            "000b18cd",
            "0002f44c",
            "0009151b",
            "00063b5f"
          ]
        },
        "0003a2c6": {
          "id": "0003a2c6",
          "name": "Damage Stamina",
          "text": "Drain the target's Stamina",
          "magnitude": 3,
          "value": 43,
          "ingredients": [
            "0004da25",
            "000727de",
            "00034cdd",
            "0006abcb",
            "000b701a",
            "00106e19",
            "0003ad64",
            "00059b86",
            "0007e8c8",
            "0009151b"
          ]
        },
        "00073f2c": {
          "id": "00073f2c",
          "name": "Damage Stamina Regen",
          "text": "Decrease target's Stamina regeneration by 100%",
          "magnitude": 5,
          "value": 159,
          "ingredients": [
            "000b2183",
            "0003ad5b",
            "00034d32",
            "0003ad64",
            "00106e18",
            "0005076e",
            "0006bc0a",
            "00106e1c",
            "0003ad6f",
            "0004b0ba"
          ]
        },
        "00073f20": {
          "id": "00073f20",
          "name": "Fear",
          "text": "Creatures and people flee for 30 seconds",
          "magnitude": 1,
          "value": 120,
          "ingredients": [
            "000e4f0c",
            "00106e19",
            "0003ad5b",
            "0004da24",
            "0006bc10"
          ]
        },
        "0003eb24": {
          "id": "0003eb24",
          "name": "Fortify Alteration",
          "text": "Alteration spells last longer for 60 seconds",
          "magnitude": 4,
          "value": 47,
          "ingredients": ["00083e64", "00106e1a", "00063b5f"]
        },
        "0003eb23": {
          "id": "0003eb23",
          "name": "Fortify Barter",
          "text": "You haggle for better prices for 30 seconds",
          "magnitude": 1,
          "value": 48,
          "ingredients": ["000727e0", "000889a2", "0006b689", "0003f7f8"]
        },
        "0003eb1c": {
          "id": "0003eb1c",
          "name": "Fortify Block",
          "text": "Blocking absorbs more damage for 60 seconds",
          "magnitude": 4,
          "value": 118,
          "ingredients": [
            "0004da20",
            "0003ad61",
            "000b08c5",
            "000854fe",
            "0003ad70",
            "0003f7f8"
          ]
        },
        "0003eb01": {
          "id": "0003eb01",
          "name": "Fortify Carry Weight",
          "text": "Carrying capacity increases for 300 seconds",
          "magnitude": 4,
          "value": 208,
          "ingredients": [
            "000b2183",
            "0003ad64",
            "000e7ebc",
            "00106e1a",
            "0006f950",
            "0006bc0e"
          ]
        },
        "0003eb25": {
          "id": "0003eb25",
          "name": "Fortify Conjuration",
          "text": "Conjuration spells last longer for 60 seconds",
          "magnitude": 5,
          "value": 75,
          "ingredients": [
            "000727de",
            "00077e1c",
            "00034cdd",
            "0003ad5f",
            "0003ad66",
            "00045c28"
          ]
        },
        "0003eb26": {
          "id": "0003eb26",
          "name": "Fortify Destruction",
          "text": "Destruction spells deal more damage for 60 seconds",
          "magnitude": 5,
          "value": 151,
          "ingredients": [
            "000a9191",
            "0003ad63",
            "0003ad73",
            "0007ee01",
            "0002f44c",
            "0006bc0e"
          ]
        },
        "0003eb29": {
          "id": "0003eb29",
          "name": "Fortify Enchanting",
          "text": "For 30 seconds items are enchanted stronger",
          "magnitude": 1,
          "value": 14,
          "ingredients": ["000727de", "0006b689", "0001b3bd", "00063b5f"]
        },
        "0003eaf3": {
          "id": "0003eaf3",
          "name": "Fortify Health",
          "text": "Health is increased for 60(300) seconds",
          "magnitude": 4,
          "value": 82,
          "ingredients": [
            "0006bc02",
            "00077e1c",
            "0003ad64",
            "0007ee01",
            "00057f91",
            "0004b0ba"
          ]
        },
        "0003eb1e": {
          "id": "0003eb1e",
          "name": "Fortify Heavy Armor",
          "text": "Increase Heavy Armor skill for 60 seconds",
          "magnitude": 2,
          "value": 55,
          "ingredients": [
            "0003ad6a",
            "0006bc04",
            "0003ad70",
            "000134aa",
            "0004da22"
          ]
        },
        "0003eb27": {
          "id": "0003eb27",
          "name": "Fortify Illusion",
          "text": "Illusion spells are stronger for 60 seconds",
          "magnitude": 4,
          "value": 94,
          "ingredients": [
            "000889a2",
            "000f11c0",
            "000ec870",
            "0006f950",
            "0003ad71"
          ]
        },
        "0003eb1f": {
          "id": "0003eb1f",
          "name": "Fortify Light Armor",
          "text": "Increases Light Armor skill for 60 seconds",
          "magnitude": 2,
          "value": 55,
          "ingredients": [
            "000a9191",
            "000e7ed0",
            "000b08c5",
            "000727df",
            "0003ad6f"
          ]
        },
        "0003eb21": {
          "id": "0003eb21",
          "name": "Fortify Lockpicking",
          "text": "Lockpicking is easier for 30 seconds",
          "magnitude": 2,
          "value": 25,
          "ingredients": ["0003ad5d", "0004da24", "00023d6f", "0009151b"]
        },
        "0003eaf8": {
          "id": "0003eaf8",
          "name": "Fortify Magicka",
          "text": "Magicka is increased for 60 seconds",
          "magnitude": 4,
          "value": 71,
          "ingredients": [
            "0003ad61",
            "0003ad63",
            "00106e18",
            "0006ac4a",
            "00077e1d",
            "0003f7f8",
            "0003ad60"
          ]
        },
        "0003eb1b": {
          "id": "0003eb1b",
          "name": "Fortify Marksman",
          "text": "Bows do more damage for 60 seconds",
          "magnitude": 4,
          "value": 118,
          "ingredients": ["0006abcb", "00034d31", "0005076e", "0009151b"]
        },
        "0003eb19": {
          "id": "0003eb19",
          "name": "Fortify One Handed",
          "text": "One-handed weapons do more damage for 60 seconds",
          "magnitude": 4,
          "value": 118,
          "ingredients": [
            "0006bc02",
            "0006abcb",
            "00057f91",
            "000e7ed0",
            "0007e8c8",
            "00085500"
          ]
        },
        "0003eb20": {
          "id": "0003eb20",
          "name": "Fortify Pickpocket",
          "text": "Pickpocketing is easier for 60 seconds",
          "magnitude": 4,
          "value": 118,
          "ingredients": ["000e4f0c", "0007edf5", "000bb956", "0007e8c5"]
        },
        "0003eb28": {
          "id": "0003eb28",
          "name": "Fortify Restoration",
          "text": "Restoration spells are stronger for 60 seconds",
          "magnitude": 4,
          "value": 118,
          "ingredients": [
            "00106e1b",
            "00106e19",
            "00034cdf",
            "0006bc0b",
            "00085500"
          ]
        },
        "0003eb1d": {
          "id": "0003eb1d",
          "name": "Fortify Smithing",
          "text": "For 30 seconds weapon and armor improving is better",
          "magnitude": 4,
          "value": 82,
          "ingredients": ["0004da25", "0007ee01", "0006bc04", "00063b5f"]
        },
        "0003eb22": {
          "id": "0003eb22",
          "name": "Fortify Sneak",
          "text": "You are harder to detect for 60 seconds",
          "magnitude": 4,
          "value": 118,
          "ingredients": [
            "00106e1b",
            "000a9191",
            "00034d32",
            "000e7ed0",
            "001016b3",
            "0006bc10",
            "00077e1e"
          ]
        },
        "0003eaf9": {
          "id": "0003eaf9",
          "name": "Fortify Stamina",
          "text": "Stamina is increased for 60 seconds",
          "magnitude": 4,
          "value": 71,
          "ingredients": [
            "0003ad56",
            "00034d22",
            "0006bc0a",
            "00045c28",
            "0007e8c5",
            "0004da73"
          ]
        },
        "0003eb1a": {
          "id": "0003eb1a",
          "name": "Fortify Two Handed",
          "text": "Two-handed weapons do more damage for 60 seconds",
          "magnitude": 4,
          "value": 118,
          "ingredients": ["000889a2", "0004da00", "0003ad72"]
        },
        "00073f29": {
          "id": "00073f29",
          "name": "Frenzy",
          "text":
              "Creatures and people will attack anything nearby for 10 seconds",
          "magnitude": 1,
          "value": 107,
          "ingredients": [
            "0004da25",
            "0003ad5d",
            "0004da00",
            "0003ad66",
            "000b18cd",
            "0003ad72"
          ]
        },
        "0003eb3d": {
          "id": "0003eb3d",
          "name": "Invisibility",
          "text": "Invisibility",
          "magnitude": 4,
          "value": 261,
          "ingredients": [
            "0003ad56",
            "000b701a",
            "0003ad6a",
            "000727df",
            "00059b86",
            "0003ad76"
          ]
        },
        "0010aa4a": {
          "id": "0010aa4a",
          "name": "Lingering Damage Health",
          "text": "Causes poison damage for 10 seconds",
          "magnitude": 1,
          "value": 86,
          "ingredients": [
            "0004da23",
            "000ec870",
            "000bb956",
            "0007e8c5",
            "0003ad70"
          ]
        },
        "0010de5f": {
          "id": "0010de5f",
          "name": "Lingering Damage Magicka",
          "text": "Drains the target's Magicka for 10 seconds",
          "magnitude": 1,
          "value": 71,
          "ingredients": [
            "0006b689",
            "00077e1e",
            "0007e8b7",
            "0004da73",
            "0004b0ba"
          ]
        },
        "0010de5e": {
          "id": "0010de5e",
          "name": "Lingering Damage Stamina",
          "text": "Drain the target's Stamina for 10 seconds",
          "magnitude": 1,
          "value": 12,
          "ingredients": ["000727e0", "00023d77", "0002f44c", "0006bc0b"]
        },
        "00073f30": {
          "id": "00073f30",
          "name": "Paralysis",
          "text": "Target is paralyzed",
          "magnitude": 1,
          "value": 285,
          "ingredients": [
            "0003ad61",
            "0006abcb",
            "001016b3",
            "0004da23",
            "0007e8b7"
          ]
        },
        "00073f26": {
          "id": "00073f26",
          "name": "Ravage Health",
          "text": "Causes concentrated poison damage",
          "magnitude": 2,
          "value": 6,
          "ingredients": [
            "00106e19",
            "0006bc07",
            "0007e8c1",
            "0006ac4a",
            "00106e1c",
            "0003ad6f"
          ]
        },
        "00073f27": {
          "id": "00073f27",
          "name": "Ravage Magicka",
          "text": "Concentrated poison damages Magicka",
          "magnitude": 2,
          "value": 15,
          "ingredients": [
            "00034d32",
            "00083e64",
            "00045c28",
            "000bb956",
            "00077e1d",
            "0004da22"
          ]
        },
        "00073f23": {
          "id": "00073f23",
          "name": "Ravage Stamina",
          "text": "Concentrated poison damages Stamina",
          "magnitude": 2,
          "value": 24,
          "ingredients": [
            "000a9195",
            "00034cdd",
            "000516c8",
            "000b08c5",
            "000134aa"
          ]
        },
        "0003eb06": {
          "id": "0003eb06",
          "name": "Regenerate Health",
          "text": "Health regenerates faster for 300 seconds",
          "magnitude": 5,
          "value": 177,
          "ingredients": [
            "00034d22",
            "0005076e",
            "000727df",
            "0004da24",
            "0007edf5",
            "0003ad76"
          ]
        },
        "0003eb07": {
          "id": "0003eb07",
          "name": "Regenerate Magicka",
          "text": "Magicka regenerates faster for 300 seconds",
          "magnitude": 5,
          "value": 177,
          "ingredients": [
            "000f11c0",
            "0003ad5e",
            "00034d22",
            "0006ac4a",
            "000d8e3f",
            "00034cdf",
            "0003ad71"
          ]
        },
        "0003eb08": {
          "id": "0003eb08",
          "name": "Regenerate Stamina",
          "text": "Stamina regenerates faster for 300 seconds",
          "magnitude": 5,
          "value": 177,
          "ingredients": ["000a9195", "0004da00", "000ec870", "0006f950"]
        },
        "0003eaea": {
          "id": "0003eaea",
          "name": "Resist Fire",
          "text": "Resist fire damage for 60 seconds",
          "magnitude": 3,
          "value": 86,
          "ingredients": [
            "00034cdd",
            "000889a2",
            "00034d31",
            "0003ad5e",
            "0004da00",
            "0006bc00",
            "0001b3bd"
          ]
        },
        "0003eaeb": {
          "id": "0003eaeb",
          "name": "Resist Frost",
          "text": "Resist frost damage for 60 seconds",
          "magnitude": 3,
          "value": 86,
          "ingredients": [
            "00034d32",
            "0003ad5f",
            "000e7ebc",
            "000d8e3f",
            "00077e1e",
            "00106e1c",
            "0003ad70",
            "00085500",
            "0001b3bd",
            "000134aa"
          ]
        },
        "00039e51": {
          "id": "00039e51",
          "name": "Resist Magic",
          "text": "Resist magic for 60 seconds",
          "magnitude": 1,
          "value": 51,
          "ingredients": [
            "0004da20",
            "00023d77",
            "000b701a",
            "0006b689",
            "00045c28",
            "00059b86",
            "0003f7f8",
            "0003ad60",
            "0006bc0e"
          ]
        },
        "00090041": {
          "id": "00090041",
          "name": "Resist Poison",
          "text": "Resist poison for 60 seconds",
          "magnitude": 4,
          "value": 118,
          "ingredients": [
            "000a9191",
            "00052695",
            "0003ad5d",
            "00034d22",
            "00083e64",
            "0006bc00",
            "0007e8c5",
            "000134aa",
            "0003ad72"
          ]
        },
        "0003eaec": {
          "id": "0003eaec",
          "name": "Resist Shock",
          "text": "Resist shock damage for 60 seconds",
          "magnitude": 3,
          "value": 86,
          "ingredients": [
            "000e4f0c",
            "0003ad73",
            "0007ee01",
            "000e7ebc",
            "000854fe",
            "00023d6f",
            "0001b3bd",
            "0007e8b7"
          ]
        },
        "0003eb15": {
          "id": "0003eb15",
          "name": "Restore Health",
          "text": "Restore Health",
          "magnitude": 5,
          "value": 21,
          "ingredients": [
            "0004da25",
            "000e4f0c",
            "00077e1c",
            "000727e0",
            "00052695",
            "0003ad5b",
            "0006bc07",
            "0004da23",
            "0007e8c8",
            "0007e8b7",
            "0004b0ba"
          ]
        },
        "0003eb17": {
          "id": "0003eb17",
          "name": "Restore Magicka",
          "text": "Restore Magicka",
          "magnitude": 5,
          "value": 25,
          "ingredients": [
            "0003ad61",
            "000b2183",
            "000f11c0",
            "0003ad63",
            "00034d31",
            "0003ad5e",
            "0003ad5f",
            "0007e8c1",
            "00083e64",
            "001016b3",
            "000d8e3f",
            "000ec870",
            "000854fe",
            "00077e1d",
            "0003ad71",
            "0003ad76",
            "0004da22"
          ]
        },
        "0003eb16": {
          "id": "0003eb16",
          "name": "Restore Stamina",
          "text": "Restore Stamina",
          "magnitude": 5,
          "value": 25,
          "ingredients": [
            "0006bc02",
            "000a9195",
            "00052695",
            "0006bc07",
            "000e7ebc",
            "00106e18",
            "000b08c5",
            "0006bc0a",
            "0006bc00",
            "000bb956",
            "000854fe",
            "00023d6f",
            "0006bc10",
            "00077e1e",
            "0006bc04",
            "00106e1c",
            "00085500",
            "0004da73",
            "0006bc0e"
          ]
        },
        "00073f25": {
          "id": "00073f25",
          "name": "Slow",
          "text": "Target moves at 50% speed",
          "magnitude": 5,
          "value": 247,
          "ingredients": ["000516c8", "0006bc0a", "00106e1a", "00034cdf"]
        },
        "0003ac2d": {
          "id": "0003ac2d",
          "name": "Waterbreathing",
          "text": "Can breath underwater",
          "magnitude": 5,
          "value": 100,
          "ingredients": ["00023d77", "00106e18", "0007edf5"]
        },
        "00073f2d": {
          "id": "00073f2d",
          "name": "Weakness to Fire",
          "text": "Target is weaker to fire damage for 30 seconds",
          "magnitude": 3,
          "value": 48,
          "ingredients": [
            "0004da20",
            "0003ad5f",
            "0003ad6a",
            "0005076e",
            "000d8e3f",
            "0006bc10"
          ]
        },
        "00073f2e": {
          "id": "00073f2e",
          "name": "Weakness to Frost",
          "text": "Target is weaker to frost damage for 30 seconds",
          "magnitude": 3,
          "value": 40,
          "ingredients": [
            "00106e1b",
            "00034d31",
            "0003ad5e",
            "0003ad6a",
            "0004da22"
          ]
        },
        "00073f51": {
          "id": "00073f51",
          "name": "Weakness to Magic",
          "text": "Target is weaker to magic for 30 seconds",
          "magnitude": 2,
          "value": 51,
          "ingredients": [
            "000b2183",
            "000f11c0",
            "0006ac4a",
            "0007e8c8",
            "00034cdf",
            "0006f950",
            "0003ad71",
            "0004da73"
          ]
        },
        "00090042": {
          "id": "00090042",
          "name": "Weakness to Poison",
          "text": "Target is weaker to poison damage for 30 seconds",
          "magnitude": 2,
          "value": 51,
          "ingredients": [
            "00106e1b",
            "0004da20",
            "0003ad56",
            "000516c8",
            "0007e8c1",
            "00023d6f",
            "0006bc04",
            "0006bc0b"
          ]
        },
        "00073f2f": {
          "id": "00073f2f",
          "name": "Weakness to Shock",
          "text": "Target is weaker to shock damage for 30 seconds",
          "magnitude": 3,
          "value": 56,
          "ingredients": ["000a9195", "0007e8c1", "0003ad66", "0003ad60"]
        }
      },
      "ingredients": {
        "00106e1b": {
          "id": "00106e1b",
          "name": "Abecean Longfin",
          "effect_1_id": "00073f2e",
          "effect_2_id": "0003eb22",
          "effect_3_id": "00090042",
          "effect_4_id": "0003eb28",
          "weight": 0.5,
          "value": 15
        },
        "0006bc02": {
          "id": "0006bc02",
          "name": "Bear Claws",
          "effect_1_id": "0003eb16",
          "effect_2_id": "0003eaf3",
          "effect_3_id": "0003eb19",
          "effect_4_id": "00073f2b",
          "weight": 0.1,
          "value": 2
        },
        "000a9195": {
          "id": "000a9195",
          "name": "Bee",
          "effect_1_id": "0003eb16",
          "effect_2_id": "00073f23",
          "effect_3_id": "0003eb08",
          "effect_4_id": "00073f2f",
          "weight": 0.1,
          "value": 3
        },
        "000a9191": {
          "id": "000a9191",
          "name": "Beehive Husk",
          "effect_1_id": "00090041",
          "effect_2_id": "0003eb1f",
          "effect_3_id": "0003eb22",
          "effect_4_id": "0003eb26",
          "weight": 1,
          "value": 5
        },
        "0004da20": {
          "id": "0004da20",
          "name": "Bleeding Crown",
          "effect_1_id": "00073f2d",
          "effect_2_id": "0003eb1c",
          "effect_3_id": "00090042",
          "effect_4_id": "00039e51",
          "weight": 0.3,
          "value": 10
        },
        "0004da25": {
          "id": "0004da25",
          "name": "Blisterwort",
          "effect_1_id": "0003a2c6",
          "effect_2_id": "00073f29",
          "effect_3_id": "0003eb15",
          "effect_4_id": "0003eb1d",
          "weight": 0.2,
          "value": 12
        },
        "000727de": {
          "id": "000727de",
          "name": "Blue Butterfly Wing",
          "effect_1_id": "0003a2c6",
          "effect_2_id": "0003eb25",
          "effect_3_id": "00073f2b",
          "effect_4_id": "0003eb29",
          "weight": 0.1,
          "value": 2
        },
        "000e4f0c": {
          "id": "000e4f0c",
          "name": "Blue Dartwing",
          "effect_1_id": "0003eaec",
          "effect_2_id": "0003eb20",
          "effect_3_id": "0003eb15",
          "effect_4_id": "00073f20",
          "weight": 0.1,
          "value": 1
        },
        "00077e1c": {
          "id": "00077e1c",
          "name": "Blue Mountain Flower",
          "effect_1_id": "0003eb15",
          "effect_2_id": "0003eb25",
          "effect_3_id": "0003eaf3",
          "effect_4_id": "00073f2b",
          "weight": 0.1,
          "value": 2
        },
        "00034cdd": {
          "id": "00034cdd",
          "name": "Bone Meal",
          "effect_1_id": "0003a2c6",
          "effect_2_id": "0003eaea",
          "effect_3_id": "0003eb25",
          "effect_4_id": "00073f23",
          "weight": 0.5,
          "value": 5
        },
        "0003ad61": {
          "id": "0003ad61",
          "name": "Briar Heart",
          "effect_1_id": "0003eb17",
          "effect_2_id": "0003eb1c",
          "effect_3_id": "00073f30",
          "effect_4_id": "0003eaf8",
          "weight": 0.5,
          "value": 20
        },
        "000727e0": {
          "id": "000727e0",
          "name": "Butterfly Wing",
          "effect_1_id": "0003eb15",
          "effect_2_id": "0003eb23",
          "effect_3_id": "0010de5e",
          "effect_4_id": "0003a2b6",
          "weight": 0.1,
          "value": 3
        },
        "0006abcb": {
          "id": "0006abcb",
          "name": "Canis Root",
          "effect_1_id": "0003a2c6",
          "effect_2_id": "0003eb19",
          "effect_3_id": "0003eb1b",
          "effect_4_id": "00073f30",
          "weight": 0.1,
          "value": 5
        },
        "00052695": {
          "id": "00052695",
          "name": "Charred Skeever Hide",
          "effect_1_id": "0003eb16",
          "effect_2_id": "000ae723",
          "effect_3_id": "00090041",
          "effect_4_id": "0003eb15",
          "weight": 0.5,
          "value": 1
        },
        "0003ad56": {
          "id": "0003ad56",
          "name": "Chaurus Eggs",
          "effect_1_id": "00090042",
          "effect_2_id": "0003eaf9",
          "effect_3_id": "0003a2b6",
          "effect_4_id": "0003eb3d",
          "weight": 0.2,
          "value": 10
        },
        "00023d77": {
          "id": "00023d77",
          "name": "Chicken's Egg",
          "effect_1_id": "00039e51",
          "effect_2_id": "00073f2b",
          "effect_3_id": "0003ac2d",
          "effect_4_id": "0010de5e",
          "weight": 0.5,
          "value": 2
        },
        "000b2183": {
          "id": "000b2183",
          "name": "Creep Cluster",
          "effect_1_id": "0003eb17",
          "effect_2_id": "00073f2c",
          "effect_3_id": "0003eb01",
          "effect_4_id": "00073f51",
          "weight": 0.2,
          "value": 1
        },
        "000b701a": {
          "id": "000b701a",
          "name": "Crimson Nirnroot",
          "effect_1_id": "0003eb42",
          "effect_2_id": "0003a2c6",
          "effect_3_id": "0003eb3d",
          "effect_4_id": "00039e51",
          "weight": 0.2,
          "value": 10
        },
        "00106e19": {
          "id": "00106e19",
          "name": "Cyrodilic Spadetail",
          "effect_1_id": "0003a2c6",
          "effect_2_id": "0003eb28",
          "effect_3_id": "00073f20",
          "effect_4_id": "00073f26",
          "weight": 0.25,
          "value": 15
        },
        "0003ad5b": {
          "id": "0003ad5b",
          "name": "Daedra Heart",
          "effect_1_id": "0003eb15",
          "effect_2_id": "00073f2c",
          "effect_3_id": "0003a2b6",
          "effect_4_id": "00073f20",
          "weight": 0.5,
          "value": 250
        },
        "000516c8": {
          "id": "000516c8",
          "name": "Deathbell",
          "effect_1_id": "0003eb42",
          "effect_2_id": "00073f23",
          "effect_3_id": "00073f25",
          "effect_4_id": "00090042",
          "weight": 0.1,
          "value": 4
        },
        "000889a2": {
          "id": "000889a2",
          "name": "Dragon's Tongue",
          "effect_1_id": "0003eaea",
          "effect_2_id": "0003eb23",
          "effect_3_id": "0003eb27",
          "effect_4_id": "0003eb1a",
          "weight": 0.1,
          "value": 5
        },
        "000f11c0": {
          "id": "000f11c0",
          "name": "Dwarven Oil",
          "effect_1_id": "00073f51",
          "effect_2_id": "0003eb27",
          "effect_3_id": "0003eb07",
          "effect_4_id": "0003eb17",
          "weight": 0.25,
          "value": 15
        },
        "0003ad63": {
          "id": "0003ad63",
          "name": "Ectoplasm",
          "effect_1_id": "0003eb17",
          "effect_2_id": "0003eb26",
          "effect_3_id": "0003eaf8",
          "effect_4_id": "0003eb42",
          "weight": 0.1,
          "value": 25
        },
        "00034d31": {
          "id": "00034d31",
          "name": "Elves Ear",
          "effect_1_id": "0003eb17",
          "effect_2_id": "0003eb1b",
          "effect_3_id": "00073f2e",
          "effect_4_id": "0003eaea",
          "weight": 0.1,
          "value": 10
        },
        "0006bc07": {
          "id": "0006bc07",
          "name": "Eye of Sabre Cat",
          "effect_1_id": "0003eb16",
          "effect_2_id": "00073f26",
          "effect_3_id": "0003a2b6",
          "effect_4_id": "0003eb15",
          "weight": 0.1,
          "value": 2
        },
        "0003ad5d": {
          "id": "0003ad5d",
          "name": "Falmer Ear",
          "effect_1_id": "0003eb42",
          "effect_2_id": "00073f29",
          "effect_3_id": "00090041",
          "effect_4_id": "0003eb21",
          "weight": 0.2,
          "value": 10
        },
        "0003ad5e": {
          "id": "0003ad5e",
          "name": "Fire Salts",
          "effect_1_id": "00073f2e",
          "effect_2_id": "0003eaea",
          "effect_3_id": "0003eb17",
          "effect_4_id": "0003eb07",
          "weight": 0.25,
          "value": 50
        },
        "0004da00": {
          "id": "0004da00",
          "name": "Fly Amanita",
          "effect_1_id": "0003eaea",
          "effect_2_id": "0003eb1a",
          "effect_3_id": "00073f29",
          "effect_4_id": "0003eb08",
          "weight": 0.1,
          "value": 2
        },
        "00034d32": {
          "id": "00034d32",
          "name": "Frost Mirriam",
          "effect_1_id": "0003eaeb",
          "effect_2_id": "0003eb22",
          "effect_3_id": "00073f27",
          "effect_4_id": "00073f2c",
          "weight": 0.1,
          "value": 1
        },
        "0003ad5f": {
          "id": "0003ad5f",
          "name": "Frost Salts",
          "effect_1_id": "00073f2d",
          "effect_2_id": "0003eaeb",
          "effect_3_id": "0003eb17",
          "effect_4_id": "0003eb25",
          "weight": 0.25,
          "value": 100
        },
        "00034d22": {
          "id": "00034d22",
          "name": "Garlic",
          "effect_1_id": "00090041",
          "effect_2_id": "0003eaf9",
          "effect_3_id": "0003eb07",
          "effect_4_id": "0003eb06",
          "weight": 0.25,
          "value": 1
        },
        "0007e8c1": {
          "id": "0007e8c1",
          "name": "Giant Lichen",
          "effect_1_id": "00073f2f",
          "effect_2_id": "00073f26",
          "effect_3_id": "00090042",
          "effect_4_id": "0003eb17",
          "weight": 0.25,
          "value": 5
        },
        "0003ad64": {
          "id": "0003ad64",
          "name": "Giant's Toe",
          "effect_1_id": "0003a2c6",
          "effect_2_id": "0003eaf3",
          "effect_3_id": "0003eb01",
          "effect_4_id": "00073f2c",
          "weight": 1,
          "value": 20
        },
        "0003ad73": {
          "id": "0003ad73",
          "name": "Glow Dust",
          "effect_1_id": "0003a2b6",
          "effect_2_id": "00073f2b",
          "effect_3_id": "0003eb26",
          "effect_4_id": "0003eaec",
          "weight": 0.5,
          "value": 20
        },
        "0007ee01": {
          "id": "0007ee01",
          "name": "Glowing Mushroom",
          "effect_1_id": "0003eaec",
          "effect_2_id": "0003eb26",
          "effect_3_id": "0003eb1d",
          "effect_4_id": "0003eaf3",
          "weight": 0.2,
          "value": 5
        },
        "00083e64": {
          "id": "00083e64",
          "name": "Grass Pod",
          "effect_1_id": "00090041",
          "effect_2_id": "00073f27",
          "effect_3_id": "0003eb24",
          "effect_4_id": "0003eb17",
          "weight": 0.1,
          "value": 1
        },
        "0006b689": {
          "id": "0006b689",
          "name": "Hagraven Claw",
          "effect_1_id": "00039e51",
          "effect_2_id": "0010de5f",
          "effect_3_id": "0003eb29",
          "effect_4_id": "0003eb23",
          "weight": 0.25,
          "value": 20
        },
        "0003ad66": {
          "id": "0003ad66",
          "name": "Hagraven Feathers",
          "effect_1_id": "0003a2b6",
          "effect_2_id": "0003eb25",
          "effect_3_id": "00073f29",
          "effect_4_id": "00073f2f",
          "weight": 0.1,
          "value": 20
        },
        "00057f91": {
          "id": "00057f91",
          "name": "Hanging Moss",
          "effect_1_id": "0003a2b6",
          "effect_2_id": "0003eaf3",
          "effect_3_id": "00073f2b",
          "effect_4_id": "0003eb19",
          "weight": 0.25,
          "value": 1
        },
        "000e7ebc": {
          "id": "000e7ebc",
          "name": "Hawk Beak",
          "effect_1_id": "0003eb16",
          "effect_2_id": "0003eaeb",
          "effect_3_id": "0003eb01",
          "effect_4_id": "0003eaec",
          "weight": 0.25,
          "value": 15
        },
        "000e7ed0": {
          "id": "000e7ed0",
          "name": "Hawk Feathers",
          "effect_1_id": "000ae723",
          "effect_2_id": "0003eb1f",
          "effect_3_id": "0003eb19",
          "effect_4_id": "0003eb22",
          "weight": 0.1,
          "value": 15
        },
        "00106e18": {
          "id": "00106e18",
          "name": "Histcarp",
          "effect_1_id": "0003eb16",
          "effect_2_id": "0003eaf8",
          "effect_3_id": "00073f2c",
          "effect_4_id": "0003ac2d",
          "weight": 0.25,
          "value": 6
        },
        "000b08c5": {
          "id": "000b08c5",
          "name": "Honeycomb",
          "effect_1_id": "0003eb16",
          "effect_2_id": "0003eb1c",
          "effect_3_id": "0003eb1f",
          "effect_4_id": "00073f23",
          "weight": 1,
          "value": 5
        },
        "001016b3": {
          "id": "001016b3",
          "name": "Human Flesh",
          "effect_1_id": "0003eb42",
          "effect_2_id": "00073f30",
          "effect_3_id": "0003eb17",
          "effect_4_id": "0003eb22",
          "weight": 0.25,
          "value": 1
        },
        "000b18cd": {
          "id": "000b18cd",
          "name": "Human Heart",
          "effect_1_id": "0003eb42",
          "effect_2_id": "0003a2b6",
          "effect_3_id": "00073f2b",
          "effect_4_id": "00073f29",
          "weight": 1,
          "value": 0
        },
        "0003ad6a": {
          "id": "0003ad6a",
          "name": "Ice Wraith Teeth",
          "effect_1_id": "00073f2e",
          "effect_2_id": "0003eb1e",
          "effect_3_id": "0003eb3d",
          "effect_4_id": "00073f2d",
          "weight": 0.25,
          "value": 30
        },
        "0004da23": {
          "id": "0004da23",
          "name": "Imp Stool",
          "effect_1_id": "0003eb42",
          "effect_2_id": "0010aa4a",
          "effect_3_id": "00073f30",
          "effect_4_id": "0003eb15",
          "weight": 0.3,
          "value": 0
        },
        "0006ac4a": {
          "id": "0006ac4a",
          "name": "Jazbay Grapes",
          "effect_1_id": "00073f51",
          "effect_2_id": "0003eaf8",
          "effect_3_id": "0003eb07",
          "effect_4_id": "00073f26",
          "weight": 0.2,
          "value": 1
        },
        "0005076e": {
          "id": "0005076e",
          "name": "Juniper Berries",
          "effect_1_id": "00073f2d",
          "effect_2_id": "0003eb1b",
          "effect_3_id": "0003eb06",
          "effect_4_id": "00073f2c",
          "weight": 0.1,
          "value": 1
        },
        "0006bc0a": {
          "id": "0006bc0a",
          "name": "Large Antlers",
          "effect_1_id": "0003eb16",
          "effect_2_id": "0003eaf9",
          "effect_3_id": "00073f25",
          "effect_4_id": "00073f2c",
          "weight": 0.1,
          "value": 2
        },
        "00045c28": {
          "id": "00045c28",
          "name": "Lavender",
          "effect_1_id": "00039e51",
          "effect_2_id": "0003eaf9",
          "effect_3_id": "00073f27",
          "effect_4_id": "0003eb25",
          "weight": 0.1,
          "value": 1
        },
        "000727df": {
          "id": "000727df",
          "name": "Luna Moth Wing",
          "effect_1_id": "0003a2b6",
          "effect_2_id": "0003eb1f",
          "effect_3_id": "0003eb06",
          "effect_4_id": "0003eb3d",
          "weight": 0.1,
          "value": 5
        },
        "000d8e3f": {
          "id": "000d8e3f",
          "name": "Moon Sugar",
          "effect_1_id": "00073f2d",
          "effect_2_id": "0003eaeb",
          "effect_3_id": "0003eb17",
          "effect_4_id": "0003eb07",
          "weight": 0.25,
          "value": 50
        },
        "000ec870": {
          "id": "000ec870",
          "name": "Mora Tapinella",
          "effect_1_id": "0003eb17",
          "effect_2_id": "0010aa4a",
          "effect_3_id": "0003eb08",
          "effect_4_id": "0003eb27",
          "weight": 0.25,
          "value": 4
        },
        "0006bc00": {
          "id": "0006bc00",
          "name": "Mudcrab Chitin",
          "effect_1_id": "0003eb16",
          "effect_2_id": "000ae723",
          "effect_3_id": "00090041",
          "effect_4_id": "0003eaea",
          "weight": 0.25,
          "value": 2
        },
        "0004da24": {
          "id": "0004da24",
          "name": "Namira's Rot",
          "effect_1_id": "0003a2b6",
          "effect_2_id": "0003eb21",
          "effect_3_id": "00073f20",
          "effect_4_id": "0003eb06",
          "weight": 0.25,
          "value": 0
        },
        "0002f44c": {
          "id": "0002f44c",
          "name": "Nightshade",
          "effect_1_id": "0003eb42",
          "effect_2_id": "00073f2b",
          "effect_3_id": "0010de5e",
          "effect_4_id": "0003eb26",
          "weight": 0.1,
          "value": 8
        },
        "00059b86": {
          "id": "00059b86",
          "name": "Nirnroot",
          "effect_1_id": "0003eb42",
          "effect_2_id": "0003a2c6",
          "effect_3_id": "0003eb3d",
          "effect_4_id": "00039e51",
          "weight": 0.2,
          "value": 10
        },
        "0007edf5": {
          "id": "0007edf5",
          "name": "Nordic Barnacle",
          "effect_1_id": "0003a2b6",
          "effect_2_id": "0003ac2d",
          "effect_3_id": "0003eb06",
          "effect_4_id": "0003eb20",
          "weight": 0.2,
          "value": 5
        },
        "000bb956": {
          "id": "000bb956",
          "name": "Orange Dartwing",
          "effect_1_id": "0003eb16",
          "effect_2_id": "00073f27",
          "effect_3_id": "0003eb20",
          "effect_4_id": "0010aa4a",
          "weight": 0.1,
          "value": 1
        },
        "000854fe": {
          "id": "000854fe",
          "name": "Pearl",
          "effect_1_id": "0003eb16",
          "effect_2_id": "0003eb1c",
          "effect_3_id": "0003eb17",
          "effect_4_id": "0003eaec",
          "weight": 0.1,
          "value": 2
        },
        "00023d6f": {
          "id": "00023d6f",
          "name": "Pine Thrush Egg",
          "effect_1_id": "0003eb16",
          "effect_2_id": "0003eb21",
          "effect_3_id": "00090042",
          "effect_4_id": "0003eaec",
          "weight": 0.5,
          "value": 2
        },
        "0006bc10": {
          "id": "0006bc10",
          "name": "Powdered Mammoth Tusk",
          "effect_1_id": "0003eb16",
          "effect_2_id": "0003eb22",
          "effect_3_id": "00073f2d",
          "effect_4_id": "00073f20",
          "weight": 0.1,
          "value": 2
        },
        "00077e1e": {
          "id": "00077e1e",
          "name": "Purple Mountain Flower",
          "effect_1_id": "0003eb16",
          "effect_2_id": "0003eb22",
          "effect_3_id": "0010de5f",
          "effect_4_id": "0003eaeb",
          "weight": 0.1,
          "value": 2
        },
        "00077e1d": {
          "id": "00077e1d",
          "name": "Red Mountain Flower",
          "effect_1_id": "0003eb17",
          "effect_2_id": "00073f27",
          "effect_3_id": "0003eaf8",
          "effect_4_id": "0003eb42",
          "weight": 0.1,
          "value": 2
        },
        "00106e1a": {
          "id": "00106e1a",
          "name": "River Betty",
          "effect_1_id": "0003eb42",
          "effect_2_id": "0003eb24",
          "effect_3_id": "00073f25",
          "effect_4_id": "0003eb01",
          "weight": 0.25,
          "value": 15
        },
        "0007e8c8": {
          "id": "0007e8c8",
          "name": "Rock Warbler Egg",
          "effect_1_id": "0003eb15",
          "effect_2_id": "0003eb19",
          "effect_3_id": "0003a2c6",
          "effect_4_id": "00073f51",
          "weight": 0.5,
          "value": 2
        },
        "0006bc04": {
          "id": "0006bc04",
          "name": "Sabre Cat Tooth",
          "effect_1_id": "0003eb16",
          "effect_2_id": "0003eb1e",
          "effect_3_id": "0003eb1d",
          "effect_4_id": "00090042",
          "weight": 0.1,
          "value": 2
        },
        "00034cdf": {
          "id": "00034cdf",
          "name": "Salt Pile",
          "effect_1_id": "00073f51",
          "effect_2_id": "0003eb28",
          "effect_3_id": "00073f25",
          "effect_4_id": "0003eb07",
          "weight": 0.2,
          "value": 2
        },
        "0006f950": {
          "id": "0006f950",
          "name": "Scaly Pholiota",
          "effect_1_id": "00073f51",
          "effect_2_id": "0003eb27",
          "effect_3_id": "0003eb08",
          "effect_4_id": "0003eb01",
          "weight": 0.25,
          "value": 4
        },
        "00106e1c": {
          "id": "00106e1c",
          "name": "Silverside Perch",
          "effect_1_id": "0003eb16",
          "effect_2_id": "00073f2c",
          "effect_3_id": "00073f26",
          "effect_4_id": "0003eaeb",
          "weight": 0.25,
          "value": 15
        },
        "0003ad6f": {
          "id": "0003ad6f",
          "name": "Skeever Tail",
          "effect_1_id": "00073f2c",
          "effect_2_id": "00073f26",
          "effect_3_id": "0003eb42",
          "effect_4_id": "0003eb1f",
          "weight": 0.2,
          "value": 3
        },
        "0007e8c5": {
          "id": "0007e8c5",
          "name": "Slaughterfish Egg",
          "effect_1_id": "00090041",
          "effect_2_id": "0003eb20",
          "effect_3_id": "0010aa4a",
          "effect_4_id": "0003eaf9",
          "weight": 0.2,
          "value": 3
        },
        "0003ad70": {
          "id": "0003ad70",
          "name": "Slaughterfish Scales",
          "effect_1_id": "0003eaeb",
          "effect_2_id": "0010aa4a",
          "effect_3_id": "0003eb1e",
          "effect_4_id": "0003eb1c",
          "weight": 0.1,
          "value": 3
        },
        "0006bc0b": {
          "id": "0006bc0b",
          "name": "Small Antlers",
          "effect_1_id": "00090042",
          "effect_2_id": "0003eb28",
          "effect_3_id": "0010de5e",
          "effect_4_id": "0003eb42",
          "weight": 0.1,
          "value": 2
        },
        "00085500": {
          "id": "00085500",
          "name": "Small Pearl",
          "effect_1_id": "0003eb16",
          "effect_2_id": "0003eb19",
          "effect_3_id": "0003eb28",
          "effect_4_id": "0003eaeb",
          "weight": 0.1,
          "value": 2
        },
        "0001b3bd": {
          "id": "0001b3bd",
          "name": "Snowberries",
          "effect_1_id": "0003eaea",
          "effect_2_id": "0003eb29",
          "effect_3_id": "0003eaeb",
          "effect_4_id": "0003eaec",
          "weight": 0.1,
          "value": 4
        },
        "0009151b": {
          "id": "0009151b",
          "name": "Spider Egg",
          "effect_1_id": "0003a2c6",
          "effect_2_id": "00073f2b",
          "effect_3_id": "0003eb21",
          "effect_4_id": "0003eb1b",
          "weight": 0.2,
          "value": 5
        },
        "00063b5f": {
          "id": "00063b5f",
          "name": "Spriggan Sap",
          "effect_1_id": "00073f2b",
          "effect_2_id": "0003eb29",
          "effect_3_id": "0003eb1d",
          "effect_4_id": "0003eb24",
          "weight": 0.2,
          "value": 15
        },
        "0007e8b7": {
          "id": "0007e8b7",
          "name": "Swamp Fungal Pod",
          "effect_1_id": "0003eaec",
          "effect_2_id": "0010de5f",
          "effect_3_id": "00073f30",
          "effect_4_id": "0003eb15",
          "weight": 0.25,
          "value": 5
        },
        "0003ad71": {
          "id": "0003ad71",
          "name": "Taproot",
          "effect_1_id": "00073f51",
          "effect_2_id": "0003eb27",
          "effect_3_id": "0003eb07",
          "effect_4_id": "0003eb17",
          "weight": 0.5,
          "value": 15
        },
        "000134aa": {
          "id": "000134aa",
          "name": "Thistle Branch",
          "effect_1_id": "0003eaeb",
          "effect_2_id": "00073f23",
          "effect_3_id": "00090041",
          "effect_4_id": "0003eb1e",
          "weight": 0.1,
          "value": 1
        },
        "0004da73": {
          "id": "0004da73",
          "name": "Torchbug Thorax",
          "effect_1_id": "0003eb16",
          "effect_2_id": "0010de5f",
          "effect_3_id": "00073f51",
          "effect_4_id": "0003eaf9",
          "weight": 0.1,
          "value": 1
        },
        "0003ad72": {
          "id": "0003ad72",
          "name": "Troll Fat",
          "effect_1_id": "00090041",
          "effect_2_id": "0003eb1a",
          "effect_3_id": "00073f29",
          "effect_4_id": "0003eb42",
          "weight": 1,
          "value": 15
        },
        "0003f7f8": {
          "id": "0003f7f8",
          "name": "Tundra Cotton",
          "effect_1_id": "00039e51",
          "effect_2_id": "0003eaf8",
          "effect_3_id": "0003eb1c",
          "effect_4_id": "0003eb23",
          "weight": 0.1,
          "value": 1
        },
        "0003ad76": {
          "id": "0003ad76",
          "name": "Vampire Dust",
          "effect_1_id": "0003eb3d",
          "effect_2_id": "0003eb17",
          "effect_3_id": "0003eb06",
          "effect_4_id": "000ae723",
          "weight": 0.2,
          "value": 25
        },
        "0003ad60": {
          "id": "0003ad60",
          "name": "Void Salts",
          "effect_1_id": "00073f2f",
          "effect_2_id": "00039e51",
          "effect_3_id": "0003eb42",
          "effect_4_id": "0003eaf8",
          "weight": 0.2,
          "value": 125
        },
        "0004b0ba": {
          "id": "0004b0ba",
          "name": "Wheat",
          "effect_1_id": "0003eb15",
          "effect_2_id": "0003eaf3",
          "effect_3_id": "00073f2c",
          "effect_4_id": "0010de5f",
          "weight": 0.1,
          "value": 5
        },
        "0004da22": {
          "id": "0004da22",
          "name": "White Cap",
          "effect_1_id": "00073f2e",
          "effect_2_id": "0003eb1e",
          "effect_3_id": "0003eb17",
          "effect_4_id": "00073f27",
          "weight": 0.3,
          "value": 0
        },
        "0006bc0e": {
          "id": "0006bc0e",
          "name": "Wisp Wrappings",
          "effect_1_id": "0003eb16",
          "effect_2_id": "0003eb26",
          "effect_3_id": "0003eb01",
          "effect_4_id": "00039e51",
          "weight": 0.1,
          "value": 2
        }
      }
    },
    gameNameOblivion: {"effects": {}, "ingredients": {}},
    gameNameMorrowind: {"effects": {}, "ingredients": {}},
  };
}
