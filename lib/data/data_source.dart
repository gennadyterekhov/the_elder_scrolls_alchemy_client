import 'package:flutter/foundation.dart';
import 'package:the_elder_scrolls_alchemy_client/main.dart';

class DataSource {
  static Map<String, dynamic> getMap() {
    return _globalMap;
  }

  static const gameNameSkyrim = 'skyrim';
  static const gameNameOblivion = 'oblivion';
  static const gameNameMorrowind = 'morrowind';
  static const gameNames = [
    gameNameSkyrim,
    gameNameOblivion,
    gameNameMorrowind,
  ];
  static const Map<String, dynamic> _globalMap = {
    "_meta": {},
    gameNameSkyrim: _skyrimData,
    gameNameOblivion: _oblivionData,
    gameNameMorrowind: _morrowindData,
  };

  static const Map<String, dynamic> _skyrimData = {
    "effects": {
      "Cure Disease": {
        "id": "000ae723",
        "name": "Cure Disease",
        "text": "Cures all diseases",
        "magnitude": 5,
        "value": 21,
        "ingredients": [
          ["Hawk Feathers"],
          ["Charred Skeever Hide", "Mudcrab Chitin"],
          [],
          ["Vampire Dust"]
        ]
      },
      "Damage Health": {
        "id": "0003eb42",
        "name": "Damage Health",
        "text": "Causes poison damage",
        "magnitude": 2,
        "value": 3,
        "ingredients": [
          [
            "Crimson Nirnroot",
            "Deathbell",
            "Falmer Ear",
            "Human Flesh",
            "Human Heart",
            "Imp Stool",
            "Nightshade",
            "Nirnroot",
            "River Betty"
          ],
          [],
          ["Skeever Tail", "Void Salts"],
          ["Ectoplasm", "Red Mountain Flower", "Small Antlers", "Troll Fat"]
        ]
      },
      "Damage Magicka": {
        "id": "0003a2b6",
        "name": "Damage Magicka",
        "text": "Drains the target's Magicka",
        "magnitude": 3,
        "value": 52,
        "ingredients": [
          ["Glow Dust", "Hagraven Feathers", "Hanging Moss", "Luna Moth Wing", "Namira's Rot", "Nordic Barnacle"],
          ["Human Heart"],
          ["Chaurus Eggs", "Daedra Heart", "Eye of Sabre Cat"],
          ["Butterfly Wing"]
        ]
      },
      "Damage Magicka Regen": {
        "id": "00073f2b",
        "name": "Damage Magicka Regen",
        "text": "Decrease target's Magicka regeneration by 100%",
        "magnitude": 5,
        "value": 265,
        "ingredients": [
          ["Spriggan Sap"],
          ["Chicken's Egg", "Glow Dust", "Nightshade", "Spider Egg"],
          ["Blue Butterfly Wing", "Hanging Moss", "Human Heart"],
          ["Bear Claws", "Blue Mountain Flower"]
        ]
      },
      "Damage Stamina": {
        "id": "0003a2c6",
        "name": "Damage Stamina",
        "text": "Drain the target's Stamina",
        "magnitude": 3,
        "value": 43,
        "ingredients": [
          [
            "Blisterwort",
            "Blue Butterfly Wing",
            "Bone Meal",
            "Canis Root",
            "Cyrodilic Spadetail",
            "Giant's Toe",
            "Spider Egg"
          ],
          ["Crimson Nirnroot", "Nirnroot"],
          ["Rock Warbler Egg"],
          []
        ]
      },
      "Damage Stamina Regen": {
        "id": "00073f2c",
        "name": "Damage Stamina Regen",
        "text": "Decrease target's Stamina regeneration by 100%",
        "magnitude": 5,
        "value": 159,
        "ingredients": [
          ["Skeever Tail"],
          ["Creep Cluster", "Daedra Heart", "Silverside Perch"],
          ["Histcarp", "Wheat"],
          ["Frost Mirriam", "Giant's Toe", "Juniper Berries", "Large Antlers"]
        ]
      },
      "Fear": {
        "id": "00073f20",
        "name": "Fear",
        "text": "Creatures and people flee for 30 seconds",
        "magnitude": 1,
        "value": 120,
        "ingredients": [
          [],
          [],
          ["Cyrodilic Spadetail", "Namira's Rot"],
          ["Blue Dartwing", "Daedra Heart", "Powdered Mammoth Tusk"]
        ]
      },
      "Fortify Alteration": {
        "id": "0003eb24",
        "name": "Fortify Alteration",
        "text": "Alteration spells last longer for 60 seconds",
        "magnitude": 4,
        "value": 47,
        "ingredients": [
          [],
          ["River Betty"],
          ["Grass Pod"],
          ["Spriggan Sap"]
        ]
      },
      "Fortify Barter": {
        "id": "0003eb23",
        "name": "Fortify Barter",
        "text": "You haggle for better prices for 30 seconds",
        "magnitude": 1,
        "value": 48,
        "ingredients": [
          [],
          ["Butterfly Wing", "Dragon's Tongue"],
          [],
          ["Hagraven Claw", "Tundra Cotton"]
        ]
      },
      "Fortify Block": {
        "id": "0003eb1c",
        "name": "Fortify Block",
        "text": "Blocking absorbs more damage for 60 seconds",
        "magnitude": 4,
        "value": 118,
        "ingredients": [
          [],
          ["Bleeding Crown", "Briar Heart", "Honeycomb", "Pearl"],
          ["Tundra Cotton"],
          ["Slaughterfish Scales"]
        ]
      },
      "Fortify Carry Weight": {
        "id": "0003eb01",
        "name": "Fortify Carry Weight",
        "text": "Carrying capacity increases for 300 seconds",
        "magnitude": 4,
        "value": 208,
        "ingredients": [
          [],
          [],
          ["Creep Cluster", "Giant's Toe", "Hawk Beak", "Wisp Wrappings"],
          ["River Betty", "Scaly Pholiota"]
        ]
      },
      "Fortify Conjuration": {
        "id": "0003eb25",
        "name": "Fortify Conjuration",
        "text": "Conjuration spells last longer for 60 seconds",
        "magnitude": 5,
        "value": 75,
        "ingredients": [
          [],
          ["Blue Butterfly Wing", "Blue Mountain Flower", "Hagraven Feathers"],
          ["Bone Meal"],
          ["Frost Salts", "Lavender"]
        ]
      },
      "Fortify Destruction": {
        "id": "0003eb26",
        "name": "Fortify Destruction",
        "text": "Destruction spells deal more damage for 60 seconds",
        "magnitude": 5,
        "value": 151,
        "ingredients": [
          [],
          ["Ectoplasm", "Glowing Mushroom", "Wisp Wrappings"],
          ["Glow Dust"],
          ["Beehive Husk", "Nightshade"]
        ]
      },
      "Fortify Enchanting": {
        "id": "0003eb29",
        "name": "Fortify Enchanting",
        "text": "For 30 seconds items are enchanted stronger",
        "magnitude": 1,
        "value": 14,
        "ingredients": [
          [],
          ["Snowberries", "Spriggan Sap"],
          ["Hagraven Claw"],
          ["Blue Butterfly Wing"]
        ]
      },
      "Fortify Health": {
        "id": "0003eaf3",
        "name": "Fortify Health",
        "text": "Health is increased for 60(300) seconds",
        "magnitude": 4,
        "value": 82,
        "ingredients": [
          [],
          ["Bear Claws", "Giant's Toe", "Hanging Moss", "Wheat"],
          ["Blue Mountain Flower"],
          ["Glowing Mushroom"]
        ]
      },
      "Fortify Heavy Armor": {
        "id": "0003eb1e",
        "name": "Fortify Heavy Armor",
        "text": "Increase Heavy Armor skill for 60 seconds",
        "magnitude": 2,
        "value": 55,
        "ingredients": [
          [],
          ["Ice Wraith Teeth", "Sabre Cat Tooth", "White Cap"],
          ["Slaughterfish Scales"],
          ["Thistle Branch"]
        ]
      },
      "Fortify Illusion": {
        "id": "0003eb27",
        "name": "Fortify Illusion",
        "text": "Illusion spells are stronger for 60 seconds",
        "magnitude": 4,
        "value": 94,
        "ingredients": [
          [],
          ["Dwarven Oil", "Scaly Pholiota", "Taproot"],
          ["Dragon's Tongue"],
          ["Mora Tapinella"]
        ]
      },
      "Fortify Light Armor": {
        "id": "0003eb1f",
        "name": "Fortify Light Armor",
        "text": "Increases Light Armor skill for 60 seconds",
        "magnitude": 2,
        "value": 55,
        "ingredients": [
          [],
          ["Beehive Husk", "Hawk Feathers", "Luna Moth Wing"],
          ["Honeycomb"],
          ["Skeever Tail"]
        ]
      },
      "Fortify Lockpicking": {
        "id": "0003eb21",
        "name": "Fortify Lockpicking",
        "text": "Lockpicking is easier for 30 seconds",
        "magnitude": 2,
        "value": 25,
        "ingredients": [
          [],
          ["Namira's Rot", "Pine Thrush Egg"],
          ["Spider Egg"],
          ["Falmer Ear"]
        ]
      },
      "Fortify Magicka": {
        "id": "0003eaf8",
        "name": "Fortify Magicka",
        "text": "Magicka is increased for 60 seconds",
        "magnitude": 4,
        "value": 71,
        "ingredients": [
          [],
          ["Histcarp", "Jazbay Grapes", "Tundra Cotton"],
          ["Ectoplasm", "Red Mountain Flower"],
          ["Briar Heart", "Void Salts"]
        ]
      },
      "Fortify Marksman": {
        "id": "0003eb1b",
        "name": "Fortify Marksman",
        "text": "Bows do more damage for 60 seconds",
        "magnitude": 4,
        "value": 118,
        "ingredients": [
          [],
          ["Elves Ear", "Juniper Berries"],
          ["Canis Root"],
          ["Spider Egg"]
        ]
      },
      "Fortify One Handed": {
        "id": "0003eb19",
        "name": "Fortify One Handed",
        "text": "One-handed weapons do more damage for 60 seconds",
        "magnitude": 4,
        "value": 118,
        "ingredients": [
          [],
          ["Canis Root", "Rock Warbler Egg", "Small Pearl"],
          ["Bear Claws", "Hawk Feathers"],
          ["Hanging Moss"]
        ]
      },
      "Fortify Pickpocket": {
        "id": "0003eb20",
        "name": "Fortify Pickpocket",
        "text": "Pickpocketing is easier for 60 seconds",
        "magnitude": 4,
        "value": 118,
        "ingredients": [
          [],
          ["Blue Dartwing", "Slaughterfish Egg"],
          ["Orange Dartwing"],
          ["Nordic Barnacle"]
        ]
      },
      "Fortify Restoration": {
        "id": "0003eb28",
        "name": "Fortify Restoration",
        "text": "Restoration spells are stronger for 60 seconds",
        "magnitude": 4,
        "value": 118,
        "ingredients": [
          [],
          ["Cyrodilic Spadetail", "Salt Pile", "Small Antlers"],
          ["Small Pearl"],
          ["Abecean Longfin"]
        ]
      },
      "Fortify Smithing": {
        "id": "0003eb1d",
        "name": "Fortify Smithing",
        "text": "For 30 seconds weapon and armor improving is better",
        "magnitude": 4,
        "value": 82,
        "ingredients": [
          [],
          [],
          ["Glowing Mushroom", "Sabre Cat Tooth", "Spriggan Sap"],
          ["Blisterwort"]
        ]
      },
      "Fortify Sneak": {
        "id": "0003eb22",
        "name": "Fortify Sneak",
        "text": "You are harder to detect for 60 seconds",
        "magnitude": 4,
        "value": 118,
        "ingredients": [
          [],
          ["Abecean Longfin", "Frost Mirriam", "Powdered Mammoth Tusk", "Purple Mountain Flower"],
          ["Beehive Husk"],
          ["Hawk Feathers", "Human Flesh"]
        ]
      },
      "Fortify Stamina": {
        "id": "0003eaf9",
        "name": "Fortify Stamina",
        "text": "Stamina is increased for 60 seconds",
        "magnitude": 4,
        "value": 71,
        "ingredients": [
          [],
          ["Chaurus Eggs", "Garlic", "Large Antlers", "Lavender"],
          [],
          ["Slaughterfish Egg", "Torchbug Thorax"]
        ]
      },
      "Fortify Two Handed": {
        "id": "0003eb1a",
        "name": "Fortify Two Handed",
        "text": "Two-handed weapons do more damage for 60 seconds",
        "magnitude": 4,
        "value": 118,
        "ingredients": [
          [],
          ["Fly Amanita", "Troll Fat"],
          [],
          ["Dragon's Tongue"]
        ]
      },
      "Frenzy": {
        "id": "00073f29",
        "name": "Frenzy",
        "text": "Creatures and people will attack anything nearby for 10 seconds",
        "magnitude": 1,
        "value": 107,
        "ingredients": [
          [],
          ["Blisterwort", "Falmer Ear"],
          ["Fly Amanita", "Hagraven Feathers", "Troll Fat"],
          ["Human Heart"]
        ]
      },
      "Invisibility": {
        "id": "0003eb3d",
        "name": "Invisibility",
        "text": "Invisibility",
        "magnitude": 4,
        "value": 261,
        "ingredients": [
          ["Vampire Dust"],
          [],
          ["Crimson Nirnroot", "Ice Wraith Teeth", "Nirnroot"],
          ["Chaurus Eggs", "Luna Moth Wing"]
        ]
      },
      "Lingering Damage Health": {
        "id": "0010aa4a",
        "name": "Lingering Damage Health",
        "text": "Causes poison damage for 10 seconds",
        "magnitude": 1,
        "value": 86,
        "ingredients": [
          [],
          ["Imp Stool", "Mora Tapinella", "Slaughterfish Scales"],
          ["Slaughterfish Egg"],
          ["Orange Dartwing"]
        ]
      },
      "Lingering Damage Magicka": {
        "id": "0010de5f",
        "name": "Lingering Damage Magicka",
        "text": "Drains the target's Magicka for 10 seconds",
        "magnitude": 1,
        "value": 71,
        "ingredients": [
          [],
          ["Hagraven Claw", "Swamp Fungal Pod", "Torchbug Thorax"],
          ["Purple Mountain Flower"],
          ["Wheat"]
        ]
      },
      "Lingering Damage Stamina": {
        "id": "0010de5e",
        "name": "Lingering Damage Stamina",
        "text": "Drain the target's Stamina for 10 seconds",
        "magnitude": 1,
        "value": 12,
        "ingredients": [
          [],
          [],
          ["Butterfly Wing", "Nightshade", "Small Antlers"],
          ["Chicken's Egg"]
        ]
      },
      "Paralysis": {
        "id": "00073f30",
        "name": "Paralysis",
        "text": "Target is paralyzed",
        "magnitude": 1,
        "value": 285,
        "ingredients": [
          [],
          ["Human Flesh"],
          ["Briar Heart", "Imp Stool", "Swamp Fungal Pod"],
          ["Canis Root"]
        ]
      },
      "Ravage Health": {
        "id": "00073f26",
        "name": "Ravage Health",
        "text": "Causes concentrated poison damage",
        "magnitude": 2,
        "value": 6,
        "ingredients": [
          [],
          ["Eye of Sabre Cat", "Giant Lichen", "Skeever Tail"],
          ["Silverside Perch"],
          ["Cyrodilic Spadetail", "Jazbay Grapes"]
        ]
      },
      "Ravage Magicka": {
        "id": "00073f27",
        "name": "Ravage Magicka",
        "text": "Concentrated poison damages Magicka",
        "magnitude": 2,
        "value": 15,
        "ingredients": [
          [],
          ["Grass Pod", "Orange Dartwing", "Red Mountain Flower"],
          ["Frost Mirriam", "Lavender"],
          ["White Cap"]
        ]
      },
      "Ravage Stamina": {
        "id": "00073f23",
        "name": "Ravage Stamina",
        "text": "Concentrated poison damages Stamina",
        "magnitude": 2,
        "value": 24,
        "ingredients": [
          [],
          ["Bee", "Deathbell", "Thistle Branch"],
          [],
          ["Bone Meal", "Honeycomb"]
        ]
      },
      "Regenerate Health": {
        "id": "0003eb06",
        "name": "Regenerate Health",
        "text": "Health regenerates faster for 300 seconds",
        "magnitude": 5,
        "value": 177,
        "ingredients": [
          [],
          [],
          ["Juniper Berries", "Luna Moth Wing", "Nordic Barnacle", "Vampire Dust"],
          ["Garlic", "Namira's Rot"]
        ]
      },
      "Regenerate Magicka": {
        "id": "0003eb07",
        "name": "Regenerate Magicka",
        "text": "Magicka regenerates faster for 300 seconds",
        "magnitude": 5,
        "value": 177,
        "ingredients": [
          [],
          [],
          ["Dwarven Oil", "Garlic", "Jazbay Grapes", "Taproot"],
          ["Fire Salts", "Moon Sugar", "Salt Pile"]
        ]
      },
      "Regenerate Stamina": {
        "id": "0003eb08",
        "name": "Regenerate Stamina",
        "text": "Stamina regenerates faster for 300 seconds",
        "magnitude": 5,
        "value": 177,
        "ingredients": [
          [],
          [],
          ["Bee", "Mora Tapinella", "Scaly Pholiota"],
          ["Fly Amanita"]
        ]
      },
      "Resist Fire": {
        "id": "0003eaea",
        "name": "Resist Fire",
        "text": "Resist fire damage for 60 seconds",
        "magnitude": 3,
        "value": 86,
        "ingredients": [
          ["Dragon's Tongue", "Fly Amanita", "Snowberries"],
          ["Bone Meal", "Fire Salts"],
          [],
          ["Elves Ear", "Mudcrab Chitin"]
        ]
      },
      "Resist Frost": {
        "id": "0003eaeb",
        "name": "Resist Frost",
        "text": "Resist frost damage for 60 seconds",
        "magnitude": 3,
        "value": 86,
        "ingredients": [
          ["Frost Mirriam", "Slaughterfish Scales", "Thistle Branch"],
          ["Frost Salts", "Hawk Beak", "Moon Sugar"],
          ["Snowberries"],
          ["Purple Mountain Flower", "Silverside Perch", "Small Pearl"]
        ]
      },
      "Resist Magic": {
        "id": "00039e51",
        "name": "Resist Magic",
        "text": "Resist magic for 60 seconds",
        "magnitude": 1,
        "value": 51,
        "ingredients": [
          ["Chicken's Egg", "Hagraven Claw", "Lavender", "Tundra Cotton"],
          ["Void Salts"],
          [],
          ["Bleeding Crown", "Crimson Nirnroot", "Nirnroot", "Wisp Wrappings"]
        ]
      },
      "Resist Poison": {
        "id": "00090041",
        "name": "Resist Poison",
        "text": "Resist poison for 60 seconds",
        "magnitude": 4,
        "value": 118,
        "ingredients": [
          ["Beehive Husk", "Garlic", "Grass Pod", "Slaughterfish Egg", "Troll Fat"],
          [],
          ["Charred Skeever Hide", "Falmer Ear", "Mudcrab Chitin", "Thistle Branch"],
          []
        ]
      },
      "Resist Shock": {
        "id": "0003eaec",
        "name": "Resist Shock",
        "text": "Resist shock damage for 60 seconds",
        "magnitude": 3,
        "value": 86,
        "ingredients": [
          ["Blue Dartwing", "Glowing Mushroom", "Swamp Fungal Pod"],
          [],
          [],
          ["Glow Dust", "Hawk Beak", "Pearl", "Pine Thrush Egg", "Snowberries"]
        ]
      },
      "Restore Health": {
        "id": "0003eb15",
        "name": "Restore Health",
        "text": "Restore Health",
        "magnitude": 5,
        "value": 21,
        "ingredients": [
          ["Blue Mountain Flower", "Butterfly Wing", "Daedra Heart", "Rock Warbler Egg", "Wheat"],
          [],
          ["Blisterwort", "Blue Dartwing"],
          ["Charred Skeever Hide", "Eye of Sabre Cat", "Imp Stool", "Swamp Fungal Pod"]
        ]
      },
      "Restore Magicka": {
        "id": "0003eb17",
        "name": "Restore Magicka",
        "text": "Restore Magicka",
        "magnitude": 5,
        "value": 25,
        "ingredients": [
          ["Briar Heart", "Creep Cluster", "Ectoplasm", "Elves Ear", "Mora Tapinella", "Red Mountain Flower"],
          ["Vampire Dust"],
          ["Fire Salts", "Frost Salts", "Human Flesh", "Moon Sugar", "Pearl", "White Cap"],
          ["Dwarven Oil", "Giant Lichen", "Grass Pod", "Taproot"]
        ]
      },
      "Restore Stamina": {
        "id": "0003eb16",
        "name": "Restore Stamina",
        "text": "Restore Stamina",
        "magnitude": 5,
        "value": 25,
        "ingredients": [
          [
            "Bear Claws",
            "Bee",
            "Charred Skeever Hide",
            "Eye of Sabre Cat",
            "Hawk Beak",
            "Histcarp",
            "Honeycomb",
            "Large Antlers",
            "Mudcrab Chitin",
            "Orange Dartwing",
            "Pearl",
            "Pine Thrush Egg",
            "Powdered Mammoth Tusk",
            "Purple Mountain Flower",
            "Sabre Cat Tooth",
            "Silverside Perch",
            "Small Pearl",
            "Torchbug Thorax",
            "Wisp Wrappings"
          ],
          [],
          [],
          []
        ]
      },
      "Slow": {
        "id": "00073f25",
        "name": "Slow",
        "text": "Target moves at 50% speed",
        "magnitude": 5,
        "value": 247,
        "ingredients": [
          [],
          [],
          ["Deathbell", "Large Antlers", "River Betty", "Salt Pile"],
          []
        ]
      },
      "Waterbreathing": {
        "id": "0003ac2d",
        "name": "Waterbreathing",
        "text": "Can breath underwater",
        "magnitude": 5,
        "value": 100,
        "ingredients": [
          [],
          ["Nordic Barnacle"],
          ["Chicken's Egg"],
          ["Histcarp"]
        ]
      },
      "Weakness to Fire": {
        "id": "00073f2d",
        "name": "Weakness to Fire",
        "text": "Target is weaker to fire damage for 30 seconds",
        "magnitude": 3,
        "value": 48,
        "ingredients": [
          ["Bleeding Crown", "Frost Salts", "Juniper Berries", "Moon Sugar"],
          [],
          ["Powdered Mammoth Tusk"],
          ["Ice Wraith Teeth"]
        ]
      },
      "Weakness to Frost": {
        "id": "00073f2e",
        "name": "Weakness to Frost",
        "text": "Target is weaker to frost damage for 30 seconds",
        "magnitude": 3,
        "value": 40,
        "ingredients": [
          ["Abecean Longfin", "Fire Salts", "Ice Wraith Teeth", "White Cap"],
          [],
          ["Elves Ear"],
          []
        ]
      },
      "Weakness to Magic": {
        "id": "00073f51",
        "name": "Weakness to Magic",
        "text": "Target is weaker to magic for 30 seconds",
        "magnitude": 2,
        "value": 51,
        "ingredients": [
          ["Dwarven Oil", "Jazbay Grapes", "Salt Pile", "Scaly Pholiota", "Taproot"],
          [],
          ["Torchbug Thorax"],
          ["Creep Cluster", "Rock Warbler Egg"]
        ]
      },
      "Weakness to Poison": {
        "id": "00090042",
        "name": "Weakness to Poison",
        "text": "Target is weaker to poison damage for 30 seconds",
        "magnitude": 2,
        "value": 51,
        "ingredients": [
          ["Chaurus Eggs", "Small Antlers"],
          [],
          ["Abecean Longfin", "Bleeding Crown", "Giant Lichen", "Pine Thrush Egg"],
          ["Deathbell", "Sabre Cat Tooth"]
        ]
      },
      "Weakness to Shock": {
        "id": "00073f2f",
        "name": "Weakness to Shock",
        "text": "Target is weaker to shock damage for 30 seconds",
        "magnitude": 3,
        "value": 56,
        "ingredients": [
          ["Giant Lichen", "Void Salts"],
          [],
          [],
          ["Bee", "Hagraven Feathers"]
        ]
      }
    },
    "ingredients": {
      "Abecean Longfin": {
        "id": "00106e1b",
        "name": "Abecean Longfin",
        "weight": 0.5,
        "value": 15,
        "effects": ["Weakness to Frost", "Fortify Sneak", "Weakness to Poison", "Fortify Restoration"]
      },
      "Bear Claws": {
        "id": "0006bc02",
        "name": "Bear Claws",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Health", "Fortify One Handed", "Damage Magicka Regen"]
      },
      "Bee": {
        "id": "000a9195",
        "name": "Bee",
        "weight": 0.1,
        "value": 3,
        "effects": ["Restore Stamina", "Ravage Stamina", "Regenerate Stamina", "Weakness to Shock"]
      },
      "Beehive Husk": {
        "id": "000a9191",
        "name": "Beehive Husk",
        "weight": 1,
        "value": 5,
        "effects": ["Resist Poison", "Fortify Light Armor", "Fortify Sneak", "Fortify Destruction"]
      },
      "Bleeding Crown": {
        "id": "0004da20",
        "name": "Bleeding Crown",
        "weight": 0.3,
        "value": 10,
        "effects": ["Weakness to Fire", "Fortify Block", "Weakness to Poison", "Resist Magic"]
      },
      "Blisterwort": {
        "id": "0004da25",
        "name": "Blisterwort",
        "weight": 0.2,
        "value": 12,
        "effects": ["Damage Stamina", "Frenzy", "Restore Health", "Fortify Smithing"]
      },
      "Blue Butterfly Wing": {
        "id": "000727de",
        "name": "Blue Butterfly Wing",
        "weight": 0.1,
        "value": 2,
        "effects": ["Damage Stamina", "Fortify Conjuration", "Damage Magicka Regen", "Fortify Enchanting"]
      },
      "Blue Dartwing": {
        "id": "000e4f0c",
        "name": "Blue Dartwing",
        "weight": 0.1,
        "value": 1,
        "effects": ["Resist Shock", "Fortify Pickpocket", "Restore Health", "Fear"]
      },
      "Blue Mountain Flower": {
        "id": "00077e1c",
        "name": "Blue Mountain Flower",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Health", "Fortify Conjuration", "Fortify Health", "Damage Magicka Regen"]
      },
      "Bone Meal": {
        "id": "00034cdd",
        "name": "Bone Meal",
        "weight": 0.5,
        "value": 5,
        "effects": ["Damage Stamina", "Resist Fire", "Fortify Conjuration", "Ravage Stamina"]
      },
      "Briar Heart": {
        "id": "0003ad61",
        "name": "Briar Heart",
        "weight": 0.5,
        "value": 20,
        "effects": ["Restore Magicka", "Fortify Block", "Paralysis", "Fortify Magicka"]
      },
      "Butterfly Wing": {
        "id": "000727e0",
        "name": "Butterfly Wing",
        "weight": 0.1,
        "value": 3,
        "effects": ["Restore Health", "Fortify Barter", "Lingering Damage Stamina", "Damage Magicka"]
      },
      "Canis Root": {
        "id": "0006abcb",
        "name": "Canis Root",
        "weight": 0.1,
        "value": 5,
        "effects": ["Damage Stamina", "Fortify One Handed", "Fortify Marksman", "Paralysis"]
      },
      "Charred Skeever Hide": {
        "id": "00052695",
        "name": "Charred Skeever Hide",
        "weight": 0.5,
        "value": 1,
        "effects": ["Restore Stamina", "Cure Disease", "Resist Poison", "Restore Health"]
      },
      "Chaurus Eggs": {
        "id": "0003ad56",
        "name": "Chaurus Eggs",
        "weight": 0.2,
        "value": 10,
        "effects": ["Weakness to Poison", "Fortify Stamina", "Damage Magicka", "Invisibility"]
      },
      "Chicken's Egg": {
        "id": "00023d77",
        "name": "Chicken's Egg",
        "weight": 0.5,
        "value": 2,
        "effects": ["Resist Magic", "Damage Magicka Regen", "Waterbreathing", "Lingering Damage Stamina"]
      },
      "Creep Cluster": {
        "id": "000b2183",
        "name": "Creep Cluster",
        "weight": 0.2,
        "value": 1,
        "effects": ["Restore Magicka", "Damage Stamina Regen", "Fortify Carry Weight", "Weakness to Magic"]
      },
      "Crimson Nirnroot": {
        "id": "000b701a",
        "name": "Crimson Nirnroot",
        "weight": 0.2,
        "value": 10,
        "effects": ["Damage Health", "Damage Stamina", "Invisibility", "Resist Magic"]
      },
      "Cyrodilic Spadetail": {
        "id": "00106e19",
        "name": "Cyrodilic Spadetail",
        "weight": 0.25,
        "value": 15,
        "effects": ["Damage Stamina", "Fortify Restoration", "Fear", "Ravage Health"]
      },
      "Daedra Heart": {
        "id": "0003ad5b",
        "name": "Daedra Heart",
        "weight": 0.5,
        "value": 250,
        "effects": ["Restore Health", "Damage Stamina Regen", "Damage Magicka", "Fear"]
      },
      "Deathbell": {
        "id": "000516c8",
        "name": "Deathbell",
        "weight": 0.1,
        "value": 4,
        "effects": ["Damage Health", "Ravage Stamina", "Slow", "Weakness to Poison"]
      },
      "Dragon's Tongue": {
        "id": "000889a2",
        "name": "Dragon's Tongue",
        "weight": 0.1,
        "value": 5,
        "effects": ["Resist Fire", "Fortify Barter", "Fortify Illusion", "Fortify Two Handed"]
      },
      "Dwarven Oil": {
        "id": "000f11c0",
        "name": "Dwarven Oil",
        "weight": 0.25,
        "value": 15,
        "effects": ["Weakness to Magic", "Fortify Illusion", "Regenerate Magicka", "Restore Magicka"]
      },
      "Ectoplasm": {
        "id": "0003ad63",
        "name": "Ectoplasm",
        "weight": 0.1,
        "value": 25,
        "effects": ["Restore Magicka", "Fortify Destruction", "Fortify Magicka", "Damage Health"]
      },
      "Elves Ear": {
        "id": "00034d31",
        "name": "Elves Ear",
        "weight": 0.1,
        "value": 10,
        "effects": ["Restore Magicka", "Fortify Marksman", "Weakness to Frost", "Resist Fire"]
      },
      "Eye of Sabre Cat": {
        "id": "0006bc07",
        "name": "Eye of Sabre Cat",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Ravage Health", "Damage Magicka", "Restore Health"]
      },
      "Falmer Ear": {
        "id": "0003ad5d",
        "name": "Falmer Ear",
        "weight": 0.2,
        "value": 10,
        "effects": ["Damage Health", "Frenzy", "Resist Poison", "Fortify Lockpicking"]
      },
      "Fire Salts": {
        "id": "0003ad5e",
        "name": "Fire Salts",
        "weight": 0.25,
        "value": 50,
        "effects": ["Weakness to Frost", "Resist Fire", "Restore Magicka", "Regenerate Magicka"]
      },
      "Fly Amanita": {
        "id": "0004da00",
        "name": "Fly Amanita",
        "weight": 0.1,
        "value": 2,
        "effects": ["Resist Fire", "Fortify Two Handed", "Frenzy", "Regenerate Stamina"]
      },
      "Frost Mirriam": {
        "id": "00034d32",
        "name": "Frost Mirriam",
        "weight": 0.1,
        "value": 1,
        "effects": ["Resist Frost", "Fortify Sneak", "Ravage Magicka", "Damage Stamina Regen"]
      },
      "Frost Salts": {
        "id": "0003ad5f",
        "name": "Frost Salts",
        "weight": 0.25,
        "value": 100,
        "effects": ["Weakness to Fire", "Resist Frost", "Restore Magicka", "Fortify Conjuration"]
      },
      "Garlic": {
        "id": "00034d22",
        "name": "Garlic",
        "weight": 0.25,
        "value": 1,
        "effects": ["Resist Poison", "Fortify Stamina", "Regenerate Magicka", "Regenerate Health"]
      },
      "Giant Lichen": {
        "id": "0007e8c1",
        "name": "Giant Lichen",
        "weight": 0.25,
        "value": 5,
        "effects": ["Weakness to Shock", "Ravage Health", "Weakness to Poison", "Restore Magicka"]
      },
      "Giant's Toe": {
        "id": "0003ad64",
        "name": "Giant's Toe",
        "weight": 1,
        "value": 20,
        "effects": ["Damage Stamina", "Fortify Health", "Fortify Carry Weight", "Damage Stamina Regen"]
      },
      "Glow Dust": {
        "id": "0003ad73",
        "name": "Glow Dust",
        "weight": 0.5,
        "value": 20,
        "effects": ["Damage Magicka", "Damage Magicka Regen", "Fortify Destruction", "Resist Shock"]
      },
      "Glowing Mushroom": {
        "id": "0007ee01",
        "name": "Glowing Mushroom",
        "weight": 0.2,
        "value": 5,
        "effects": ["Resist Shock", "Fortify Destruction", "Fortify Smithing", "Fortify Health"]
      },
      "Grass Pod": {
        "id": "00083e64",
        "name": "Grass Pod",
        "weight": 0.1,
        "value": 1,
        "effects": ["Resist Poison", "Ravage Magicka", "Fortify Alteration", "Restore Magicka"]
      },
      "Hagraven Claw": {
        "id": "0006b689",
        "name": "Hagraven Claw",
        "weight": 0.25,
        "value": 20,
        "effects": ["Resist Magic", "Lingering Damage Magicka", "Fortify Enchanting", "Fortify Barter"]
      },
      "Hagraven Feathers": {
        "id": "0003ad66",
        "name": "Hagraven Feathers",
        "weight": 0.1,
        "value": 20,
        "effects": ["Damage Magicka", "Fortify Conjuration", "Frenzy", "Weakness to Shock"]
      },
      "Hanging Moss": {
        "id": "00057f91",
        "name": "Hanging Moss",
        "weight": 0.25,
        "value": 1,
        "effects": ["Damage Magicka", "Fortify Health", "Damage Magicka Regen", "Fortify One Handed"]
      },
      "Hawk Beak": {
        "id": "000e7ebc",
        "name": "Hawk Beak",
        "weight": 0.25,
        "value": 15,
        "effects": ["Restore Stamina", "Resist Frost", "Fortify Carry Weight", "Resist Shock"]
      },
      "Hawk Feathers": {
        "id": "000e7ed0",
        "name": "Hawk Feathers",
        "weight": 0.1,
        "value": 15,
        "effects": ["Cure Disease", "Fortify Light Armor", "Fortify One Handed", "Fortify Sneak"]
      },
      "Histcarp": {
        "id": "00106e18",
        "name": "Histcarp",
        "weight": 0.25,
        "value": 6,
        "effects": ["Restore Stamina", "Fortify Magicka", "Damage Stamina Regen", "Waterbreathing"]
      },
      "Honeycomb": {
        "id": "000b08c5",
        "name": "Honeycomb",
        "weight": 1,
        "value": 5,
        "effects": ["Restore Stamina", "Fortify Block", "Fortify Light Armor", "Ravage Stamina"]
      },
      "Human Flesh": {
        "id": "001016b3",
        "name": "Human Flesh",
        "weight": 0.25,
        "value": 1,
        "effects": ["Damage Health", "Paralysis", "Restore Magicka", "Fortify Sneak"]
      },
      "Human Heart": {
        "id": "000b18cd",
        "name": "Human Heart",
        "weight": 1,
        "value": 0,
        "effects": ["Damage Health", "Damage Magicka", "Damage Magicka Regen", "Frenzy"]
      },
      "Ice Wraith Teeth": {
        "id": "0003ad6a",
        "name": "Ice Wraith Teeth",
        "weight": 0.25,
        "value": 30,
        "effects": ["Weakness to Frost", "Fortify Heavy Armor", "Invisibility", "Weakness to Fire"]
      },
      "Imp Stool": {
        "id": "0004da23",
        "name": "Imp Stool",
        "weight": 0.3,
        "value": 0,
        "effects": ["Damage Health", "Lingering Damage Health", "Paralysis", "Restore Health"]
      },
      "Jazbay Grapes": {
        "id": "0006ac4a",
        "name": "Jazbay Grapes",
        "weight": 0.2,
        "value": 1,
        "effects": ["Weakness to Magic", "Fortify Magicka", "Regenerate Magicka", "Ravage Health"]
      },
      "Juniper Berries": {
        "id": "0005076e",
        "name": "Juniper Berries",
        "weight": 0.1,
        "value": 1,
        "effects": ["Weakness to Fire", "Fortify Marksman", "Regenerate Health", "Damage Stamina Regen"]
      },
      "Large Antlers": {
        "id": "0006bc0a",
        "name": "Large Antlers",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Stamina", "Slow", "Damage Stamina Regen"]
      },
      "Lavender": {
        "id": "00045c28",
        "name": "Lavender",
        "weight": 0.1,
        "value": 1,
        "effects": ["Resist Magic", "Fortify Stamina", "Ravage Magicka", "Fortify Conjuration"]
      },
      "Luna Moth Wing": {
        "id": "000727df",
        "name": "Luna Moth Wing",
        "weight": 0.1,
        "value": 5,
        "effects": ["Damage Magicka", "Fortify Light Armor", "Regenerate Health", "Invisibility"]
      },
      "Moon Sugar": {
        "id": "000d8e3f",
        "name": "Moon Sugar",
        "weight": 0.25,
        "value": 50,
        "effects": ["Weakness to Fire", "Resist Frost", "Restore Magicka", "Regenerate Magicka"]
      },
      "Mora Tapinella": {
        "id": "000ec870",
        "name": "Mora Tapinella",
        "weight": 0.25,
        "value": 4,
        "effects": ["Restore Magicka", "Lingering Damage Health", "Regenerate Stamina", "Fortify Illusion"]
      },
      "Mudcrab Chitin": {
        "id": "0006bc00",
        "name": "Mudcrab Chitin",
        "weight": 0.25,
        "value": 2,
        "effects": ["Restore Stamina", "Cure Disease", "Resist Poison", "Resist Fire"]
      },
      "Namira's Rot": {
        "id": "0004da24",
        "name": "Namira's Rot",
        "weight": 0.25,
        "value": 0,
        "effects": ["Damage Magicka", "Fortify Lockpicking", "Fear", "Regenerate Health"]
      },
      "Nightshade": {
        "id": "0002f44c",
        "name": "Nightshade",
        "weight": 0.1,
        "value": 8,
        "effects": ["Damage Health", "Damage Magicka Regen", "Lingering Damage Stamina", "Fortify Destruction"]
      },
      "Nirnroot": {
        "id": "00059b86",
        "name": "Nirnroot",
        "weight": 0.2,
        "value": 10,
        "effects": ["Damage Health", "Damage Stamina", "Invisibility", "Resist Magic"]
      },
      "Nordic Barnacle": {
        "id": "0007edf5",
        "name": "Nordic Barnacle",
        "weight": 0.2,
        "value": 5,
        "effects": ["Damage Magicka", "Waterbreathing", "Regenerate Health", "Fortify Pickpocket"]
      },
      "Orange Dartwing": {
        "id": "000bb956",
        "name": "Orange Dartwing",
        "weight": 0.1,
        "value": 1,
        "effects": ["Restore Stamina", "Ravage Magicka", "Fortify Pickpocket", "Lingering Damage Health"]
      },
      "Pearl": {
        "id": "000854fe",
        "name": "Pearl",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Block", "Restore Magicka", "Resist Shock"]
      },
      "Pine Thrush Egg": {
        "id": "00023d6f",
        "name": "Pine Thrush Egg",
        "weight": 0.5,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Lockpicking", "Weakness to Poison", "Resist Shock"]
      },
      "Powdered Mammoth Tusk": {
        "id": "0006bc10",
        "name": "Powdered Mammoth Tusk",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Sneak", "Weakness to Fire", "Fear"]
      },
      "Purple Mountain Flower": {
        "id": "00077e1e",
        "name": "Purple Mountain Flower",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Sneak", "Lingering Damage Magicka", "Resist Frost"]
      },
      "Red Mountain Flower": {
        "id": "00077e1d",
        "name": "Red Mountain Flower",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Magicka", "Ravage Magicka", "Fortify Magicka", "Damage Health"]
      },
      "River Betty": {
        "id": "00106e1a",
        "name": "River Betty",
        "weight": 0.25,
        "value": 15,
        "effects": ["Damage Health", "Fortify Alteration", "Slow", "Fortify Carry Weight"]
      },
      "Rock Warbler Egg": {
        "id": "0007e8c8",
        "name": "Rock Warbler Egg",
        "weight": 0.5,
        "value": 2,
        "effects": ["Restore Health", "Fortify One Handed", "Damage Stamina", "Weakness to Magic"]
      },
      "Sabre Cat Tooth": {
        "id": "0006bc04",
        "name": "Sabre Cat Tooth",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Heavy Armor", "Fortify Smithing", "Weakness to Poison"]
      },
      "Salt Pile": {
        "id": "00034cdf",
        "name": "Salt Pile",
        "weight": 0.2,
        "value": 2,
        "effects": ["Weakness to Magic", "Fortify Restoration", "Slow", "Regenerate Magicka"]
      },
      "Scaly Pholiota": {
        "id": "0006f950",
        "name": "Scaly Pholiota",
        "weight": 0.25,
        "value": 4,
        "effects": ["Weakness to Magic", "Fortify Illusion", "Regenerate Stamina", "Fortify Carry Weight"]
      },
      "Silverside Perch": {
        "id": "00106e1c",
        "name": "Silverside Perch",
        "weight": 0.25,
        "value": 15,
        "effects": ["Restore Stamina", "Damage Stamina Regen", "Ravage Health", "Resist Frost"]
      },
      "Skeever Tail": {
        "id": "0003ad6f",
        "name": "Skeever Tail",
        "weight": 0.2,
        "value": 3,
        "effects": ["Damage Stamina Regen", "Ravage Health", "Damage Health", "Fortify Light Armor"]
      },
      "Slaughterfish Egg": {
        "id": "0007e8c5",
        "name": "Slaughterfish Egg",
        "weight": 0.2,
        "value": 3,
        "effects": ["Resist Poison", "Fortify Pickpocket", "Lingering Damage Health", "Fortify Stamina"]
      },
      "Slaughterfish Scales": {
        "id": "0003ad70",
        "name": "Slaughterfish Scales",
        "weight": 0.1,
        "value": 3,
        "effects": ["Resist Frost", "Lingering Damage Health", "Fortify Heavy Armor", "Fortify Block"]
      },
      "Small Antlers": {
        "id": "0006bc0b",
        "name": "Small Antlers",
        "weight": 0.1,
        "value": 2,
        "effects": ["Weakness to Poison", "Fortify Restoration", "Lingering Damage Stamina", "Damage Health"]
      },
      "Small Pearl": {
        "id": "00085500",
        "name": "Small Pearl",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify One Handed", "Fortify Restoration", "Resist Frost"]
      },
      "Snowberries": {
        "id": "0001b3bd",
        "name": "Snowberries",
        "weight": 0.1,
        "value": 4,
        "effects": ["Resist Fire", "Fortify Enchanting", "Resist Frost", "Resist Shock"]
      },
      "Spider Egg": {
        "id": "0009151b",
        "name": "Spider Egg",
        "weight": 0.2,
        "value": 5,
        "effects": ["Damage Stamina", "Damage Magicka Regen", "Fortify Lockpicking", "Fortify Marksman"]
      },
      "Spriggan Sap": {
        "id": "00063b5f",
        "name": "Spriggan Sap",
        "weight": 0.2,
        "value": 15,
        "effects": ["Damage Magicka Regen", "Fortify Enchanting", "Fortify Smithing", "Fortify Alteration"]
      },
      "Swamp Fungal Pod": {
        "id": "0007e8b7",
        "name": "Swamp Fungal Pod",
        "weight": 0.25,
        "value": 5,
        "effects": ["Resist Shock", "Lingering Damage Magicka", "Paralysis", "Restore Health"]
      },
      "Taproot": {
        "id": "0003ad71",
        "name": "Taproot",
        "weight": 0.5,
        "value": 15,
        "effects": ["Weakness to Magic", "Fortify Illusion", "Regenerate Magicka", "Restore Magicka"]
      },
      "Thistle Branch": {
        "id": "000134aa",
        "name": "Thistle Branch",
        "weight": 0.1,
        "value": 1,
        "effects": ["Resist Frost", "Ravage Stamina", "Resist Poison", "Fortify Heavy Armor"]
      },
      "Torchbug Thorax": {
        "id": "0004da73",
        "name": "Torchbug Thorax",
        "weight": 0.1,
        "value": 1,
        "effects": ["Restore Stamina", "Lingering Damage Magicka", "Weakness to Magic", "Fortify Stamina"]
      },
      "Troll Fat": {
        "id": "0003ad72",
        "name": "Troll Fat",
        "weight": 1,
        "value": 15,
        "effects": ["Resist Poison", "Fortify Two Handed", "Frenzy", "Damage Health"]
      },
      "Tundra Cotton": {
        "id": "0003f7f8",
        "name": "Tundra Cotton",
        "weight": 0.1,
        "value": 1,
        "effects": ["Resist Magic", "Fortify Magicka", "Fortify Block", "Fortify Barter"]
      },
      "Vampire Dust": {
        "id": "0003ad76",
        "name": "Vampire Dust",
        "weight": 0.2,
        "value": 25,
        "effects": ["Invisibility", "Restore Magicka", "Regenerate Health", "Cure Disease"]
      },
      "Void Salts": {
        "id": "0003ad60",
        "name": "Void Salts",
        "weight": 0.2,
        "value": 125,
        "effects": ["Weakness to Shock", "Resist Magic", "Damage Health", "Fortify Magicka"]
      },
      "Wheat": {
        "id": "0004b0ba",
        "name": "Wheat",
        "weight": 0.1,
        "value": 5,
        "effects": ["Restore Health", "Fortify Health", "Damage Stamina Regen", "Lingering Damage Magicka"]
      },
      "White Cap": {
        "id": "0004da22",
        "name": "White Cap",
        "weight": 0.3,
        "value": 0,
        "effects": ["Weakness to Frost", "Fortify Heavy Armor", "Restore Magicka", "Ravage Magicka"]
      },
      "Wisp Wrappings": {
        "id": "0006bc0e",
        "name": "Wisp Wrappings",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Destruction", "Fortify Carry Weight", "Resist Magic"]
      }
    }
  };
  static const Map<String, dynamic> _oblivionData = {
    "ingredients": {
      "Alkanet Flower": {
        "name": "Alkanet Flower",
        "icon": "http:\/\/images.uesp.net\/7\/77\/OB-icon-ingredient-Alkanet_Flower.png",
        "note": "Harvested from Alkanet, a fairly common flower in the West Weald.",
        "effects": ["Restore Intelligence", "Resist Poison", "Light", "Damage Fatigue"]
      },
      "Aloe Vera Leaves": {
        "name": "Aloe Vera Leaves",
        "icon": "http:\/\/images.uesp.net\/8\/85\/OB-icon-ingredient-Aloe_Vera_Leaves.png",
        "note": "Harvested from Aloe Vera, a plant that grows primarily in the Gold Coast.",
        "effects": ["Restore Fatigue", "Restore Health", "Damage Magicka", "Invisibility"]
      },
      "Ambrosia": {
        "name": "Ambrosia",
        "icon": "http:\/\/images.uesp.net\/4\/44\/OB-icon-ingredient-Ambrosia.png",
        "note":
            "Harvested from reddish-purple colored Mana Bloom, a flower that is normally found only in Mankar Camoran's Paradise.",
        "effects": ["Restore Health"]
      },
      "Apple": {
        "name": "Apple",
        "icon": "http:\/\/images.uesp.net\/4\/46\/OB-icon-ingredient-Apple.png",
        "note": "Food, widely found in houses and dining halls.",
        "effects": ["Restore Fatigue", "Damage Luck", "Fortify Willpower", "Damage Health"]
      },
      "Arrowroot": {
        "name": "Arrowroot",
        "icon": "http:\/\/images.uesp.net\/f\/f6\/OB-icon-ingredient-Arrowroot.png",
        "note": "Harvested from Arrowroot Plant, a plant that is found in the Gold Coast and Nibenay Valley.",
        "effects": ["Restore Agility", "Damage Luck", "Fortify Strength", "Burden"]
      },
      "Beef": {
        "name": "Beef",
        "icon": "http:\/\/images.uesp.net\/d\/d7\/OB-icon-ingredient-Venison_Steak.png",
        "note": "Food, found in a few houses and dining halls.",
        "effects": ["Restore Fatigue", "Shield", "Fortify Agility", "Dispel"]
      },
      "Bergamot Seeds": {
        "name": "Bergamot Seeds",
        "icon": "http:\/\/images.uesp.net\/d\/d4\/OB-icon-ingredient-Seeds.png",
        "note": "Harvested from Bergamot, a flower, particularly common along the Orange Road and near Bravil.",
        "effects": ["Resist Disease", "Dispel", "Damage Magicka", "Silence"]
      },
      "Blackberry": {
        "name": "Blackberry",
        "icon": "http:\/\/images.uesp.net\/5\/57\/OB-icon-ingredient-Blackberry.png",
        "note":
            "Food, found in many houses and dining halls. It can also be harvested from Blackberry Bushes found on some farms and in the wild in the West Weald.",
        "effects": ["Restore Fatigue", "Resist Shock", "Fortify Endurance", "Restore Magicka"]
      },
      "Bloodgrass": {
        "name": "Bloodgrass",
        "icon": "http:\/\/images.uesp.net\/0\/01\/OB-icon-ingredient-Bloodgrass.png",
        "note": "Harvested from Blood Grass, a common plant in the planes of Oblivion.",
        "effects": ["Chameleon", "Resist Paralysis", "Burden", "Fortify Health"]
      },
      "Boar Meat": {
        "name": "Boar Meat",
        "icon": "http:\/\/images.uesp.net\/d\/d7\/OB-icon-ingredient-Venison_Steak.png",
        "note":
            "Food, found in several houses and dining halls. Can also be collected from dead Boars, which are randomly found in many outdoors regions.",
        "effects": ["Restore Health", "Damage Speed", "Fortify Health", "Burden"]
      },
      "Bog Beacon Asco Cap": {
        "name": "Bog Beacon Asco Cap",
        "icon": "http:\/\/images.uesp.net\/8\/8f\/OB-icon-ingredient-Bog_Beacon_Cap.png",
        "note": "Harvested from Bog Beacon, a plant found in Blackwood.",
        "effects": ["Restore Magicka", "Shield", "Damage Personality", "Damage Endurance"]
      },
      "Bonemeal": {
        "name": "Bonemeal",
        "icon": "http:\/\/images.uesp.net\/7\/70\/OB-icon-ingredient-Bonemeal.png",
        "note":
            "Collected from Bones Undead, i.e., skeletons and liches, which are commonly found in all undead dungeons. There is also a rare variant listed below.",
        "effects": ["Damage Fatigue", "Resist Fire", "Fortify Luck", "Night-Eye"]
      },
      "Bread Loaf": {
        "name": "Bread Loaf",
        "icon": "http:\/\/images.uesp.net\/c\/ce\/OB-icon-ingredient-Bread.png",
        "note": "Food, widely found in houses and dining halls.",
        "effects": ["Restore Fatigue", "Detect Life", "Damage Agility", "Damage Strength"]
      },
      "Cairn Bolete Cap": {
        "name": "Cairn Bolete Cap",
        "icon": "http:\/\/images.uesp.net\/5\/55\/OB-icon-ingredient-Cairn_Bolete_Cap.png",
        "note": "Harvested from Cairn Bolete, a mushroom found in many caves.",
        "effects": ["Restore Health", "Damage Intelligence", "Resist Paralysis", "Shock Damage"]
      },
      "Carrot": {
        "name": "Carrot",
        "icon": "http:\/\/images.uesp.net\/e\/ed\/OB-icon-ingredient-Carrot.png",
        "note":
            "Food, commonly found in houses and dining halls. Can also be harvested from Carrot Plants, which are found growing on many farms.",
        "effects": ["Restore Fatigue", "Night-Eye", "Fortify Intelligence", "Damage Endurance"]
      },
      "Cheese Wedge": {
        "name": "Cheese Wedge",
        "icon": "http:\/\/images.uesp.net\/8\/87\/OB-icon-ingredient-Cheese.png",
        "note": "Food, commonly found in houses and dining halls.",
        "effects": ["Restore Fatigue", "Resist Fire", "Fire Shield", "Damage Agility"]
      },
      "Cheese Wheel": {
        "name": "Cheese Wheel",
        "icon": "http:\/\/images.uesp.net\/f\/fa\/OB-icon-ingredient-Cheese_Wheel.png",
        "note": "Food, less commonly found in houses and dining halls than Cheese Wedges.",
        "effects": ["Restore Fatigue", "Resist Paralysis", "Damage Luck", "Fortify Willpower"]
      },
      "Cinnabar Polypore Red Cap": {
        "name": "Cinnabar Polypore Red Cap",
        "icon": "http:\/\/images.uesp.net\/2\/2d\/OB-icon-ingredient-Cinnabar_Polypore_Red_Cap.png",
        "note": "Harvested from red-colored Cinnabar Polypores, a mushroom that grows sparsely in the West Weald.",
        "effects": ["Restore Agility", "Shield", "Damage Personality", "Damage Endurance"]
      },
      "Cinnabar Polypore Yellow Cap": {
        "name": "Cinnabar Polypore Yellow Cap",
        "icon": "http:\/\/images.uesp.net\/b\/b9\/OB-icon-ingredient-Cinnabar_Polypore_Yellow_Cap.png",
        "note": "Harvested from yellow-colored Cinnabar Polypores, a mushroom that grows sparsely in the West Weald.",
        "effects": ["Restore Endurance", "Fortify Endurance", "Damage Personality", "Reflect Spell"]
      },
      "Clannfear Claws": {
        "name": "Clannfear Claws",
        "icon": "http:\/\/images.uesp.net\/3\/3b\/OB-icon-ingredient-Clannfear_Claws.png",
        "note": "Collected from dead Clannfears, a type of Daedra common in the Planes of Oblivion.",
        "effects": ["Cure Disease", "Resist Disease", "Paralyze", "Damage Health"]
      },
      "Clouded Funnel Cap": {
        "name": "Clouded Funnel Cap",
        "icon": "http:\/\/images.uesp.net\/a\/a0\/OB-icon-ingredient-Clouded_Funnel_Cap.png",
        "note":
            "Harvested from Clouded Funnel Cap, a mushroom common in mountainous regions (Jerall and Valus Mountains) and Blackwood.",
        "effects": ["Restore Intelligence", "Fortify Intelligence", "Damage Endurance", "Damage Magicka"]
      },
      "Columbine Root Pulp": {
        "name": "Columbine Root Pulp",
        "icon": "http:\/\/images.uesp.net\/7\/7a\/OB-icon-ingredient-Root_Pulp.png",
        "note": "Harvested from Columbine, a flower that is common in the West Weald.",
        "effects": ["Restore Personality", "Resist Frost", "Fortify Magicka", "Chameleon"]
      },
      "Corn": {
        "name": "Corn",
        "icon": "http:\/\/images.uesp.net\/3\/35\/OB-icon-ingredient-Corn.png",
        "note":
            "Food, commonly found in houses and dining halls. Can also be harvested from Corn Stalks, which are found growing in many farms.",
        "effects": ["Restore Fatigue", "Restore Intelligence", "Damage Agility", "Shock Shield"]
      },
      "Crab Meat": {
        "name": "Crab Meat",
        "icon": "http:\/\/images.uesp.net\/b\/b6\/OB-icon-ingredient-Crab_Meat.png",
        "note":
            "Collected from dead Mud Crabs, a common nuisance creature found along water shores and in many dungeons.",
        "effects": ["Restore Endurance", "Resist Shock", "Damage Fatigue", "Fire Shield"]
      },
      "Daedra Heart": {
        "name": "Daedra Heart",
        "icon": "http:\/\/images.uesp.net\/c\/cb\/OB-icon-ingredient-Daedra_Heart.png",
        "note": "Collected from dead Dremora and Xivilai, both of which are common enemies in the Planes of Oblivion.",
        "effects": ["Restore Health", "Shock Shield", "Damage Magicka", "Silence"]
      },
      "Daedra Silk": {
        "name": "Daedra Silk",
        "icon": "http:\/\/images.uesp.net\/f\/fd\/OB-icon-ingredient-Daedra_Silk.png",
        "note": "Collected from dead Spider Daedra, a type of Daedra common in the Planes of Oblivion.",
        "effects": ["Burden", "Night-Eye", "Chameleon", "Damage Endurance"]
      },
      "Daedra Venin": {
        "name": "Daedra Venin",
        "icon": "http:\/\/images.uesp.net\/8\/81\/OB-icon-ingredient-Daedra_Venin.png",
        "note": "Collected from dead Spider Daedra, a type of Daedra common in the Planes of Oblivion.",
        "effects": ["Paralyze", "Restore Fatigue", "Damage Health", "Reflect Damage"]
      },
      "Daedroth Teeth": {
        "name": "Daedroth Teeth",
        "icon": "http:\/\/images.uesp.net\/b\/b2\/OB-icon-ingredient-Daedroth_Teeth.png",
        "note": "Collected from dead Daedroths, a type of Daedra common in the Planes of Oblivion.",
        "effects": ["Night-Eye", "Frost Shield", "Burden", "Light"]
      },
      "Dragon's Tongue": {
        "name": "Dragon's Tongue",
        "icon": "http:\/\/images.uesp.net\/a\/aa\/OB-icon-ingredient-Dragon_Tongue.png",
        "note":
            "Harvested from Dragon's Tongue Plants, a flower found in a few clusters south of Bravil and more sparsely throughout the West Weald.",
        "effects": ["Resist Fire", "Damage Health", "Restore Health", "Fire Shield"]
      },
      "Dreugh Wax": {
        "name": "Dreugh Wax",
        "icon": "http:\/\/images.uesp.net\/c\/c0\/OB-icon-ingredient-Wax.png",
        "note":
            "Collected from dead Land Dreughs, a type of monster found outdoors and in monster dungeons at high levels.",
        "effects": ["Damage Fatigue", "Resist Poison", "Water Breathing", "Damage Health"]
      },
      "Dryad Saddle Polypore Cap": {
        "name": "Dryad Saddle Polypore Cap",
        "icon": "http:\/\/images.uesp.net\/9\/90\/OB-icon-ingredient-Dryad_Saddle_Polypore_Cap.png",
        "note":
            "Harvested from Dryad's Saddel\u00a0[sic] Polypore, a rare mushroom that only grows in a few select locations.",
        "effects": ["Restore Luck", "Resist Frost", "Damage Speed", "Frost Damage"]
      },
      "Ectoplasm": {
        "name": "Ectoplasm",
        "icon": "http:\/\/images.uesp.net\/c\/c0\/OB-icon-ingredient-Wax.png",
        "note":
            "Collected from dead Ethereal Undead, such as ghosts and wraiths, which are commonly found in all undead dungeons.",
        "effects": ["Shock Damage", "Dispel", "Fortify Magicka", "Damage Health"]
      },
      "Elf Cup Cap": {
        "name": "Elf Cup Cap",
        "icon": "http:\/\/images.uesp.net\/4\/4b\/OB-icon-ingredient-Elf_Cup.png",
        "note": "Harvested from Elf Cups, a mushroom found growing sparsely in the West Weald.",
        "effects": ["Damage Willpower", "Cure Disease", "Fortify Strength", "Damage Intelligence"]
      },
      "Emetic Russula Cap": {
        "name": "Emetic Russula Cap",
        "icon": "http:\/\/images.uesp.net\/d\/d1\/OB-icon-ingredient-Emetic_Russula_Cap.png",
        "note": "Harvested from Emetic Russula, a mushroom found growing sparsely in the West Weald.",
        "effects": ["Restore Agility", "Shield", "Damage Personality", "Damage Endurance"]
      },
      "Fennel Seeds": {
        "name": "Fennel Seeds",
        "icon": "http:\/\/images.uesp.net\/d\/d4\/OB-icon-ingredient-Seeds.png",
        "note": "Harvested from Fennel, a plant found primarily in the northern section of the Gold Coast.",
        "effects": ["Restore Fatigue", "Damage Intelligence", "Damage Magicka", "Paralyze"]
      },
      "Fire Salts": {
        "name": "Fire Salts",
        "icon": "http:\/\/images.uesp.net\/3\/3c\/OB-icon-ingredient-Fire_Salts.png",
        "note": "Collected from dead Flame Atronachs, a type of Daedra common in the Planes of Oblivion.",
        "effects": ["Fire Damage", "Resist Frost", "Restore Magicka", "Fire Shield"]
      },
      "Flax Seeds": {
        "name": "Flax Seeds",
        "icon": "http:\/\/images.uesp.net\/d\/d4\/OB-icon-ingredient-Seeds.png",
        "note": "Harvested from Flax, a common flower found in the West Weald.",
        "effects": ["Restore Magicka", "Feather", "Shield", "Damage Health"]
      },
      "Flour": {
        "name": "Flour",
        "icon": "http:\/\/images.uesp.net\/6\/6c\/OB-icon-ingredient-Flour.png",
        "note": "Commonly found in grain sacks in kitchens and pantries, but not technically classified as food).",
        "effects": ["Restore Fatigue", "Damage Personality", "Fortify Fatigue", "Reflect Damage"]
      },
      "Fly Amanita Cap": {
        "name": "Fly Amanita Cap",
        "icon": "http:\/\/images.uesp.net\/0\/06\/OB-icon-ingredient-Fly_Amanita_Cap.png",
        "note": "Harvested from Fly Amanita, a common mushroom in cities and in the Great Forest.",
        "effects": ["Restore Agility", "Burden", "Restore Health", "Shock Damage"]
      },
      "Foxglove Nectar": {
        "name": "Foxglove Nectar",
        "icon": "http:\/\/images.uesp.net\/c\/c0\/OB-icon-ingredient-Wax.png",
        "note": "Harvested from Foxglove, a common flower in certain parts of the Nibenay Valley and Nibenay Basin.",
        "effects": ["Resist Poison", "Resist Paralysis", "Restore Luck", "Resist Disease"]
      },
      "Frost Salts": {
        "name": "Frost Salts",
        "icon": "http:\/\/images.uesp.net\/a\/a9\/OB-icon-ingredient-Frost_Salts.png",
        "note": "Collected from dead Frost Atronachs, a type of Daedra common in the Planes of Oblivion.",
        "effects": ["Frost Damage", "Resist Fire", "Silence", "Frost Shield"]
      },
      "Garlic": {
        "name": "Garlic",
        "icon": "http:\/\/images.uesp.net\/8\/80\/OB-icon-ingredient-Garlic.png",
        "note":
            "Food, found in several houses and dining halls. It can also be harvested from Garlic Clusters (treated as plants), which are found in some houses' basements (especially in Skingrad).",
        "effects": ["Resist Disease", "Damage Agility", "Frost Shield", "Fortify Strength"]
      },
      "Ginkgo Leaf": {
        "name": "Ginkgo Leaf",
        "icon": "http:\/\/images.uesp.net\/c\/c3\/OB-icon-ingredient-Red_Ginkgo.png",
        "note":
            "Cannot be harvested or collected. There are a few guaranteed samples, but otherwise it is randomly found on alchemists and in some containers.",
        "effects": ["Restore Speed", "Fortify Magicka", "Damage Luck", "Shock Damage"]
      },
      "Ginseng": {
        "name": "Ginseng",
        "icon": "http:\/\/images.uesp.net\/2\/23\/OB-icon-ingredient-Ginseng.png",
        "note": "Harvested from Ginseng Plants, flowers which growly sparsely in the Gold Coast and Nibenay Valley.",
        "effects": ["Damage Luck", "Cure Poison", "Burden", "Fortify Magicka"]
      },
      "Glow Dust": {
        "name": "Glow Dust",
        "icon": "http:\/\/images.uesp.net\/c\/c0\/OB-icon-ingredient-Wax.png",
        "note": "Collected from dead Will-o-the-Wisps, a type of monster found outdoors and in monster dungeons.",
        "effects": ["Restore Speed", "Light", "Reflect Spell", "Damage Health"]
      },
      "Grapes": {
        "name": "Grapes",
        "icon": "http:\/\/images.uesp.net\/c\/ce\/OB-icon-ingredient-Grapes.png",
        "note":
            "Harvested from Grape Vines, which are abundant in several vineyards outside of Skingrad. Can also be found as food in several houses and dining halls.",
        "effects": ["Restore Fatigue", "Water Walking", "Dispel", "Damage Health"]
      },
      "Green Stain Cup Cap": {
        "name": "Green Stain Cup Cap",
        "icon": "http:\/\/images.uesp.net\/5\/55\/OB-icon-ingredient-Green_Stain_Cup_Cap.png",
        "note":
            "Harvested from Green Stain Cups, a mushroom that is common in several regions, but particularly abundant in Blackwood.",
        "effects": ["Restore Fatigue", "Damage Speed", "Reflect Damage", "Damage Health"]
      },
      "Green Stain Shelf Cap": {
        "name": "Green Stain Shelf Cap",
        "icon": "http:\/\/images.uesp.net\/a\/a1\/OB-icon-ingredient-Green_Stain_Shelf_Cap.png",
        "note":
            "Harvested from Green Stain Shelf plants, a rare mushroom that is hard to distinguish from the more common Cap variety.",
        "effects": ["Restore Luck", "Fortify Luck", "Damage Fatigue", "Restore Health"]
      },
      "Ham": {
        "name": "Ham",
        "icon": "http:\/\/images.uesp.net\/b\/b8\/OB-icon-ingredient-Ham.png",
        "note": "Food, found in several houses and dining halls.",
        "effects": ["Restore Fatigue", "Restore Health", "Damage Magicka", "Damage Luck"]
      },
      "Harrada": {
        "name": "Harrada",
        "icon": "http:\/\/images.uesp.net\/8\/89\/OB-icon-ingredient-Harrada.png",
        "note":
            "Harvested from Harrada Root plants, which are common in the Planes of Oblivion, but also possibly hostile.",
        "effects": ["Damage Health", "Damage Magicka", "Silence", "Paralyze"]
      },
      "Imp Gall": {
        "name": "Imp Gall",
        "icon": "http:\/\/images.uesp.net\/8\/81\/OB-icon-ingredient-Daedra_Venin.png",
        "note": "Collected from dead Imps, a type of monster found outdoors and in monster dungeons at low levels.",
        "effects": ["Fortify Personality", "Cure Paralysis", "Damage Health", "Fire Damage"]
      },
      "Ironwood Nut": {
        "name": "Ironwood Nut",
        "icon": "http:\/\/images.uesp.net\/2\/28\/OB-icon-ingredient-Ironwood_Nut.png",
        "note":
            "Cannot be harvested, collected, or even bought from alchemists. There are 26 guaranteed samples; otherwise they are found randomly in some containers.",
        "effects": ["Restore Intelligence", "Resist Fire", "Damage Fatigue", "Fortify Health"]
      },
      "Lady's Mantle Leaves": {
        "name": "Lady's Mantle Leaves",
        "icon": "http:\/\/images.uesp.net\/b\/b6\/OB-icon-ingredient-Ladys_Mantle_Leaves.png",
        "note": "Harvested from Lady's Mantle, a flower found near Gottlesfont Priory and in the Gold Coast.",
        "effects": ["Restore Health", "Damage Endurance", "Night-Eye", "Feather"]
      },
      "Lady's Smock Leaves": {
        "name": "Lady's Smock Leaves",
        "icon": "http:\/\/images.uesp.net\/b\/b8\/OB-icon-ingredient-Lady_Smock_Leaves.png",
        "note": "Harvested from Lady's Smock, a flower common in the West Weald.",
        "effects": ["Restore Intelligence", "Resist Fire", "Damage Fatigue", "Fortify Health"]
      },
      "Lavender Sprig": {
        "name": "Lavender Sprig",
        "icon": "http:\/\/images.uesp.net\/6\/63\/OB-icon-ingredient-Rice.png",
        "note": "Harvested from Lavender, a flower common in the Nibenay Basin.",
        "effects": ["Restore Personality", "Fortify Willpower", "Restore Health", "Damage Luck"]
      },
      "Leek": {
        "name": "Leek",
        "icon": "http:\/\/images.uesp.net\/5\/5c\/OB-icon-ingredient-Leek.png",
        "note":
            "Food, found in several houses and dining halls. It can also be harvested from Leek Plants, which are found growing in a handful of farms.",
        "effects": ["Restore Fatigue", "Fortify Agility", "Damage Personality", "Damage Strength"]
      },
      "Lettuce": {
        "name": "Lettuce",
        "icon": "http:\/\/images.uesp.net\/1\/13\/OB-icon-ingredient-Lettuce.png",
        "note":
            "Food, widely found in houses and dining halls. It can also be harvested from Lettuce Plants, which are found growing on several farms.",
        "effects": ["Restore Fatigue", "Restore Luck", "Fire Shield", "Damage Personality"]
      },
      "Lichor": {
        "name": "Lichor",
        "icon": "http:\/\/images.uesp.net\/7\/73\/OB-icon-ingredient-Lichor.png",
        "note":
            "Harvested from bluish-purple colored Mana Bloom, a flower that is normally found only in Mankar Camoran's Paradise.",
        "effects": ["Restore Magicka"]
      },
      "Mandrake Root": {
        "name": "Mandrake Root",
        "icon": "http:\/\/images.uesp.net\/2\/26\/OB-icon-ingredient-Mandrake.png",
        "note": "Harvested from Mandrake, a flower found growing in the Colovian Highlands and also near Bravil.",
        "effects": ["Cure Disease", "Resist Poison", "Damage Agility", "Fortify Willpower"]
      },
      "Milk Thistle Seeds": {
        "name": "Milk Thistle Seeds",
        "icon": "http:\/\/images.uesp.net\/d\/d4\/OB-icon-ingredient-Seeds.png",
        "note":
            "Harvested from Milk Thistle, a flower found throughout mountainous regions (Jerall and Valus Mountains) and in some clusters in the Gold Coast.",
        "effects": ["Light", "Frost Damage", "Cure Paralysis", "Paralyze"]
      },
      "Minotaur Horn": {
        "name": "Minotaur Horn",
        "icon": "http:\/\/images.uesp.net\/4\/45\/OB-icon-ingredient-Minotaur_Horn.png",
        "note":
            "Collected from dead Minotaurs and Minotaur Lords, two types of monster found outdoors and in monster dungeons.",
        "effects": ["Restore Willpower", "Burden", "Fortify Endurance", "Resist Paralysis"]
      },
      "Monkshood Root Pulp": {
        "name": "Monkshood Root Pulp",
        "icon": "http:\/\/images.uesp.net\/7\/7a\/OB-icon-ingredient-Root_Pulp.png",
        "note": "Harvested from Monkshood, a common flower in the Heartlands and Nibenay Basin.",
        "effects": ["Restore Strength", "Damage Intelligence", "Fortify Endurance", "Burden"]
      },
      "Morning Glory Root Pulp": {
        "name": "Morning Glory Root Pulp",
        "icon": "http:\/\/images.uesp.net\/7\/7a\/OB-icon-ingredient-Root_Pulp.png",
        "note":
            "Harvested from Morning Glory, a flowering vine found growing on houses and walls in the West Weald and Heartlands.",
        "effects": ["Burden", "Damage Willpower", "Frost Shield", "Damage Magicka"]
      },
      "Mort Flesh": {
        "name": "Mort Flesh",
        "icon":
            "http:\/\/images.uesp.net\/thumb\/3\/38\/OB-icon-ingredient-Mort_Flesh.png\/48px-OB-icon-ingredient-Mort_Flesh.png",
        "note": "Collected from dead zombies, which are commonly found in all undead dungeons.",
        "effects": ["Damage Fatigue", "Damage Luck", "Fortify Health", "Silence"]
      },
      "Motherwort Sprig": {
        "name": "Motherwort Sprig",
        "icon": "http:\/\/images.uesp.net\/6\/69\/OB-icon-ingredient-Motherwort_Sprig.png",
        "note": "Harvested from Motherwort, a flower common in most regions of Cyrodiil.",
        "effects": ["Resist Poison", "Damage Fatigue", "Silence", "Invisibility"]
      },
      "Mugwort Seeds": {
        "name": "Mugwort Seeds",
        "icon": "http:\/\/images.uesp.net\/d\/d4\/OB-icon-ingredient-Seeds.png",
        "note":
            "Cannot be harvested or collected. The only way to obtain them is by purchasing them from alchemy vendors, who may randomly have some in stock.",
        "effects": ["Restore Health"]
      },
      "Mutton": {
        "name": "Mutton",
        "icon": "http:\/\/images.uesp.net\/b\/b8\/OB-icon-ingredient-Ham.png",
        "note":
            "Food, found in several houses and dining halls. Can also be collected from some (but not all) dead sheep.",
        "effects": ["Fortify Health", "Damage Fatigue", "Dispel", "Damage Magicka"]
      },
      "Nightshade": {
        "name": "Nightshade",
        "icon": "http:\/\/images.uesp.net\/c\/c5\/OB-icon-ingredient-Nightshade.png",
        "note": "Harvested from Nightshade Plants, a flower found in the West Weald.",
        "effects": ["Damage Health", "Burden", "Damage Luck", "Fortify Magicka"]
      },
      "Ogre's Teeth": {
        "name": "Ogre's Teeth",
        "icon": "http:\/\/images.uesp.net\/e\/e5\/OB-icon-ingredient-Ogre_Teeth.png",
        "note": "Collected from dead Ogres, a type of monster found outdoors and in monster dungeons.",
        "effects": ["Damage Intelligence", "Resist Paralysis", "Shock Damage", "Fortify Strength"]
      },
      "Onion": {
        "name": "Onion",
        "icon": "http:\/\/images.uesp.net\/0\/03\/OB-icon-ingredient-Onion.png",
        "note": "Food, found in many houses and dining halls.",
        "effects": ["Restore Fatigue", "Water Breathing", "Detect Life", "Damage Health"]
      },
      "Orange": {
        "name": "Orange",
        "icon": "http:\/\/images.uesp.net\/1\/1e\/OB-icon-ingredient-Orange.png",
        "note": "Food, found in many houses and dining halls.",
        "effects": ["Restore Fatigue", "Detect Life", "Burden", "Shield"]
      },
      "Pear": {
        "name": "Pear",
        "icon": "http:\/\/images.uesp.net\/a\/a8\/OB-icon-ingredient-Pear.png",
        "note": "Food, found in many houses and dining halls.",
        "effects": ["Restore Fatigue", "Damage Speed", "Fortify Speed", "Damage Health"]
      },
      "Peony Seeds": {
        "name": "Peony Seeds",
        "icon": "http:\/\/images.uesp.net\/d\/d4\/OB-icon-ingredient-Seeds.png",
        "note": "Harvested from Peonies, flowers common in the West Weald.",
        "effects": ["Restore Strength", "Damage Health", "Damage Speed", "Restore Fatigue"]
      },
      "Potato": {
        "name": "Potato",
        "icon": "http:\/\/images.uesp.net\/c\/cb\/OB-icon-ingredient-Potato.png",
        "note":
            "Food, widely found in houses and dining halls. Can also be harvested from Potato Plants, which are found growing on several farms.",
        "effects": ["Restore Fatigue", "Shield", "Burden", "Frost Shield"]
      },
      "Primrose Leaves": {
        "name": "Primrose Leaves",
        "icon": "http:\/\/images.uesp.net\/a\/a3\/OB-icon-ingredient-Primrose_Leaves.png",
        "note":
            "Harvested from Primroses, which are flowers occasionally found growing outside various houses and inns.",
        "effects": ["Restore Willpower", "Restore Personality", "Fortify Luck", "Damage Strength"]
      },
      "Pumpkin": {
        "name": "Pumpkin",
        "icon": "http:\/\/images.uesp.net\/1\/1e\/OB-icon-ingredient-Pumpkin.png",
        "note":
            "Food, widely found in houses and dining halls. Can also be harvested from Pumpkin Vines, which are found growing on some farms.",
        "effects": ["Restore Fatigue", "Damage Agility", "Damage Personality", "Detect Life"]
      },
      "Purgeblood Salts": {
        "name": "Purgeblood Salts",
        "icon": "http:\/\/images.uesp.net\/0\/0e\/OB-icon-ingredient-Purgeblood_Salts.png",
        "note": "Mined from Purgeblood Crystal Formations, which are only available as part of Vile Lair.",
        "effects": ["Restore Magicka", "Damage Health", "Fortify Magicka", "Dispel"]
      },
      "Radish": {
        "name": "Radish",
        "icon": "http:\/\/images.uesp.net\/e\/e4\/OB-icon-ingredient-Radish.png",
        "note":
            "Food, found in many houses and dining halls. Can also be harvested from Radish Plants, which are found growing on several farms.",
        "effects": ["Restore Fatigue", "Damage Endurance", "Chameleon", "Burden"]
      },
      "Rat Meat": {
        "name": "Rat Meat",
        "icon": "http:\/\/images.uesp.net\/b\/b8\/OB-icon-ingredient-Ham.png",
        "note": "Collected from dead rats, a ubiquitous nuisance creature.",
        "effects": ["Damage Fatigue", "Detect Life", "Damage Magicka", "Silence"]
      },
      "Redwort Flower": {
        "name": "Redwort Flower",
        "icon": "http:\/\/images.uesp.net\/3\/3b\/OB-icon-ingredient-Redwort_Flower.png",
        "note":
            "Harvested from Domica Redwort, a flower found growing in several clusters in Blackwood and sparsely throughout the West Weald.",
        "effects": ["Resist Frost", "Cure Poison", "Damage Health", "Invisibility"]
      },
      "Rice": {
        "name": "Rice",
        "icon": "http:\/\/images.uesp.net\/6\/63\/OB-icon-ingredient-Rice.png",
        "note": "Food, generally found in grain sacks in kitchens and pantries.",
        "effects": ["Restore Fatigue", "Silence", "Shock Shield", "Damage Agility"]
      },
      "Root Pulp": {
        "name": "Root Pulp",
        "icon": "http:\/\/images.uesp.net\/7\/7a\/OB-icon-ingredient-Root_Pulp.png",
        "note":
            "Cannot be harvested or collected. Six guaranteed samples exist; otherwise found randomly in some containers.",
        "effects": ["Cure Disease", "Damage Willpower", "Fortify Strength", "Damage Intelligence"]
      },
      "Sacred Lotus Seeds": {
        "name": "Sacred Lotus Seeds",
        "icon": "http:\/\/images.uesp.net\/d\/d4\/OB-icon-ingredient-Seeds.png",
        "note": "Harvested from Sacred Lotus plants, which are flowers that grow in shallow water.",
        "effects": ["Resist Frost", "Damage Health", "Feather", "Dispel"]
      },
      "Scales": {
        "name": "Scales",
        "icon": "http:\/\/images.uesp.net\/c\/c6\/OB-icon-ingredient-Fish_Scales.png",
        "note": "Collected from dead slaughterfish, an animal found in deep water, including pools in dungeons.",
        "effects": ["Damage Willpower", "Water Breathing", "Damage Health", "Water Walking"]
      },
      "Scamp Skin": {
        "name": "Scamp Skin",
        "icon": "http:\/\/images.uesp.net\/d\/d0\/OB-icon-ingredient-Scamp_Skin.png",
        "note": "Collected from dead Scamps, a type of Daedra common in the Planes of Oblivion.",
        "effects": ["Damage Magicka", "Resist Shock", "Reflect Damage", "Damage Health"]
      },
      "Shepherd's Pie": {
        "name": "Shepherd's Pie",
        "icon": "http:\/\/images.uesp.net\/d\/dc\/OB-icon-ingredient-Servant_Pie.png",
        "note": "Food, found in a few houses and dining halls. Also available from Eyja in Rosethorn Hall.",
        "effects": ["Cure Disease", "Shield", "Fortify Agility", "Dispel"]
      },
      "S'jirra's Famous Potato Bread": {
        "name": "S'jirra's Famous Potato Bread",
        "icon": "http:\/\/images.uesp.net\/c\/ce\/OB-icon-ingredient-Bread.png",
        "note":
            "Only available from S'jirra in Faregyl Inn after you have completed The Potato Snatcher. You receive from one to five loaves (based on level) upon completing the quest. You can also return to S'jirra repeatedly to buy more bread, which can then be used for alchemy.",
        "effects": ["Detect Life", "Restore Health", "Damage Agility", "Damage Strength"]
      },
      "Somnalius Frond": {
        "name": "Somnalius Frond",
        "icon": "http:\/\/images.uesp.net\/5\/50\/OB-icon-ingredient-Somnalius_Frond.png",
        "note": "Harvested from Somnalius Plants, which are found growing in the Great Forest.",
        "effects": ["Restore Speed", "Damage Endurance", "Fortify Health", "Feather"]
      },
      "Spiddal Stick": {
        "name": "Spiddal Stick",
        "icon": "http:\/\/images.uesp.net\/1\/18\/OB-icon-ingredient-Spiddal_Stick.png",
        "note":
            "Harvested from Spiddal Stick plants, which are common in the Planes of Oblivion, but also tend to be hostile.",
        "effects": ["Damage Health", "Damage Magicka", "Fire Damage", "Restore Fatigue"]
      },
      "St. Jahn's Wort Nectar": {
        "name": "St. Jahn's Wort Nectar",
        "icon": "http:\/\/images.uesp.net\/c\/c0\/OB-icon-ingredient-Wax.png",
        "note": "Harvested from St. Jahn's Wort, a flower most commonly found in the Great Forest.",
        "effects": ["Resist Shock", "Damage Health", "Cure Poison", "Chameleon"]
      },
      "Steel-Blue Entoloma Cap": {
        "name": "Steel-Blue Entoloma Cap",
        "icon": "http:\/\/images.uesp.net\/7\/73\/OB-icon-ingredient-Steel-Blue_Entoloma_Cap.png",
        "note": "Harvested from Steel-Blue Entoloma, a mushroom that is common in the Great Forest.",
        "effects": ["Restore Magicka", "Fire Damage", "Resist Frost", "Burden"]
      },
      "Stinkhorn Cap": {
        "name": "Stinkhorn Cap",
        "icon": "http:\/\/images.uesp.net\/8\/82\/OB-icon-ingredient-Stinkhorn_Cap.png",
        "note": "Harvested from Stinkhorn, a mushroom that is found in Blackwood.",
        "effects": ["Damage Health", "Restore Magicka", "Water Walking", "Invisibility"]
      },
      "Strawberry": {
        "name": "Strawberry",
        "icon": "http:\/\/images.uesp.net\/9\/94\/OB-icon-ingredient-Strawberry.png",
        "note":
            "Food, widely found in houses and dining halls. It can also be harvested from Strawberry Bushes found on some farms and in the wild in the West Weald.",
        "effects": ["Restore Fatigue", "Cure Poison", "Damage Health", "Reflect Damage"]
      },
      "Summer Bolete Cap": {
        "name": "Summer Bolete Cap",
        "icon": "http:\/\/images.uesp.net\/7\/79\/OB-icon-ingredient-Summer_Bolete_Cap.png",
        "note": "Harvested from Summer Bolete, a mushroom found in the Great Forest and Nibenay Valley.",
        "effects": ["Restore Agility", "Shield", "Damage Personality", "Damage Endurance"]
      },
      "Sweetcake": {
        "name": "Sweetcake",
        "icon": "http:\/\/images.uesp.net\/9\/96\/OB-icon-ingredient-Sweetcake.png",
        "note": "Food, found in a few houses and dining halls. Sweetcakes are less common than Sweetrolls.",
        "effects": ["Restore Fatigue", "Feather", "Restore Health", "Burden"]
      },
      "Sweetroll": {
        "name": "Sweetroll",
        "icon": "http:\/\/images.uesp.net\/9\/94\/OB-icon-ingredient-Sweetroll.png",
        "note": "Food, found in several houses and dining halls.",
        "effects": ["Restore Fatigue", "Resist Disease", "Damage Personality", "Fortify Health"]
      },
      "Taproot": {
        "name": "Taproot",
        "icon": "http:\/\/images.uesp.net\/f\/f6\/OB-icon-ingredient-Arrowroot.png",
        "note": "Collected from dead Spriggans, a type of monster found outdoors and in monster dungeons.",
        "effects": ["Restore Luck", "Damage Endurance", "Resist Poison", "Shock Shield"]
      },
      "Tiger Lily Nectar": {
        "name": "Tiger Lily Nectar",
        "icon": "http:\/\/images.uesp.net\/c\/c0\/OB-icon-ingredient-Wax.png",
        "note":
            "Harvested from both Tiger Lilies and Lily of the Valleys, two types of flower that are most commonly found in the Great Forest.",
        "effects": ["Restore Endurance", "Damage Strength", "Water Walking", "Damage Willpower"]
      },
      "Tinder Polypore Cap": {
        "name": "Tinder Polypore Cap",
        "icon": "http:\/\/images.uesp.net\/3\/30\/OB-icon-ingredient-Tinder_Polypore_Cap.png",
        "note": "Harvested from Tinder Polypore, a mushroom common in the Valus Mountains.",
        "effects": ["Restore Willpower", "Resist Disease", "Invisibility", "Damage Magicka"]
      },
      "Tobacco": {
        "name": "Tobacco",
        "icon": "http:\/\/images.uesp.net\/b\/b2\/OB-icon-ingredient-Tobacco.png",
        "note":
            "Technically treated as a food and can be found in a few houses. It can also be harvested from Tobacco Plants, which are found on several farms.",
        "effects": ["Restore Fatigue", "Resist Paralysis", "Damage Magicka", "Dispel"]
      },
      "Tomato": {
        "name": "Tomato",
        "icon": "http:\/\/images.uesp.net\/9\/97\/OB-icon-ingredient-Tomato.png",
        "note":
            "Food, widely found in houses and dining halls. It can also be harvested from Tomato Plants, which are found growing on many farms.",
        "effects": ["Restore Fatigue", "Detect Life", "Burden", "Shield"]
      },
      "Troll Fat": {
        "name": "Troll Fat",
        "icon": "http:\/\/images.uesp.net\/c\/c3\/OB-icon-ingredient-Troll_Fat.png",
        "note": "Collected from dead Trolls, a type of monster found outdoors and in monster dungeons.",
        "effects": ["Damage Agility", "Fortify Personality", "Damage Willpower", "Damage Health"]
      },
      "Vampire Dust": {
        "name": "Vampire Dust",
        "icon": "http:\/\/images.uesp.net\/0\/0f\/OB-icon-ingredient-Vampire_Dust.png",
        "note":
            "Collected from dead Vampires, found in a range of vampire dungeons. There is also a rare variant listed below.",
        "effects": ["Silence", "Resist Disease", "Frost Damage", "Invisibility"]
      },
      "Venison": {
        "name": "Venison",
        "icon": "http:\/\/images.uesp.net\/d\/d7\/OB-icon-ingredient-Venison_Steak.png",
        "note":
            "Food, found in several houses and dining halls. It can also be collected from dead deer, which are animals found outdoors throughout Cyrodiil.",
        "effects": ["Restore Health", "Feather", "Damage Health", "Chameleon"]
      },
      "Viper's Bugloss Leaves": {
        "name": "Viper's Bugloss Leaves",
        "icon": "http:\/\/images.uesp.net\/a\/ae\/OB-icon-ingredient-Viper_Bugloss_Leaves.png",
        "note": "Harvested from Viper's Bugloss, a flower which is abundant in the Great Forest.",
        "effects": ["Resist Paralysis", "Night-Eye", "Burden", "Cure Paralysis"]
      },
      "Void Salts": {
        "name": "Void Salts",
        "icon": "http:\/\/images.uesp.net\/d\/de\/OB-icon-ingredient-Void_Salts.png",
        "note": "Collected from dead Storm Atronachs, a type of Daedra common in the Planes of Oblivion.",
        "effects": ["Restore Magicka", "Damage Health", "Fortify Magicka", "Dispel"]
      },
      "Water Hyacinth Nectar": {
        "name": "Water Hyacinth Nectar",
        "icon": "http:\/\/images.uesp.net\/c\/c0\/OB-icon-ingredient-Wax.png",
        "note": "Harvested from Water Hyacinth, a flower found growing in shallow water.",
        "effects": ["Damage Luck", "Damage Fatigue", "Restore Magicka", "Fortify Magicka"]
      },
      "Watermelon": {
        "name": "Watermelon",
        "icon": "http:\/\/images.uesp.net\/5\/5f\/OB-icon-ingredient-Watermelon.png",
        "note":
            "Food, found in several houses and dining halls. It can also be harvested from Watermelon Vines, which grow on a few farms.",
        "effects": ["Restore Fatigue", "Light", "Burden", "Damage Health"]
      },
      "Wheat Grain": {
        "name": "Wheat Grain",
        "icon": "http:\/\/images.uesp.net\/5\/50\/OB-icon-ingredient-Wheat.png",
        "note":
            "Food, found in grain sacks in kitchens and pantries. It can also be harvested from Wheat Stalks, which grow on a few farms.",
        "effects": ["Restore Fatigue", "Damage Magicka", "Fortify Health", "Damage Personality"]
      },
      "White Seed Pod": {
        "name": "White Seed Pod",
        "icon": "http:\/\/images.uesp.net\/8\/8b\/OB-icon-ingredient-Black_Seed_Pod.png",
        "note": "Harvested from Goldenrod, a flower found in the Gold Coast.",
        "effects": ["Restore Strength", "Water Breathing", "Silence", "Light"]
      },
      "Wisp Stalk Caps": {
        "name": "Wisp Stalk Caps",
        "icon": "http:\/\/images.uesp.net\/8\/86\/OB-icon-ingredient-Wisp_Stalk_Caps.png",
        "note":
            "Harvested from Wisp Stalks, a mushroom that is only found growing underground (i.e., in caves and mines).",
        "effects": ["Damage Health", "Damage Willpower", "Damage Intelligence", "Fortify Speed"]
      },
      "Wormwood Leaves": {
        "name": "Wormwood Leaves",
        "icon": "http:\/\/images.uesp.net\/b\/b7\/OB-icon-ingredient-Wormwood_Leaves.png",
        "note": "Harvested from Wormwood, a plant found growing in the Jerall Mountains.",
        "effects": ["Fortify Fatigue", "Invisibility", "Damage Health", "Damage Magicka"]
      },
      "Alocasia Fruit": {
        "name": "Alocasia Fruit",
        "icon": "http:\/\/images.uesp.net\/6\/68\/SI-icon-ingredient-Alocasia_Fruit.png",
        "note": "Harvested from Alocasia plants, found in Mania.",
        "effects": ["Restore Fatigue", "Light", "Restore Health", "Damage Magicka"]
      },
      "Ashen Remains": {
        "name": "Ashen Remains",
        "icon": "http:\/\/images.uesp.net\/7\/70\/OB-icon-ingredient-Bonemeal.png",
        "note": "Created from bones using the Crematorium in Ebrocca.",
        "effects": ["Fortify Fatigue", "Damage Luck", "Silence", "Weakness to Fire"]
      },
      "Aster Bloom Core": {
        "name": "Aster Bloom Core",
        "icon": "http:\/\/images.uesp.net\/a\/a1\/SI-icon-ingredient-Aster_Bloom_Core.png",
        "note": "Harvested from Aster Bloom plants, found in Mania.",
        "effects": ["Restore Agility", "Dispel", "Shield", "Burden"]
      },
      "Black Tar": {
        "name": "Black Tar",
        "icon": "http:\/\/images.uesp.net\/0\/02\/SI-icon-ingredient-Black_Tar.png",
        "note": "Harvested from Dementia variety Mushroom Tree Saplings and from Black Tar plants.",
        "effects": ["Damage Fatigue", "Damage Speed", "Damage Health", "Shock Damage"]
      },
      "Blister Pod Cap": {
        "name": "Blister Pod Cap",
        "icon": "http:\/\/images.uesp.net\/0\/01\/SI-icon-ingredient-Blister_Pod_Cap.png",
        "note": "Harvested from Blister Pod plants, which are found in Dementia.",
        "effects": ["Restore Magicka", "Fortify Magicka", "Night-Eye", "Invisibility"]
      },
      "Bone Marrow": {
        "name": "Bone Marrow",
        "icon": "http:\/\/images.uesp.net\/d\/dc\/SI-icon-ingredient-Bone_Marrow.png",
        "note": "Found on Shambles (50% chance they may yield Bone Shard instead). Also called 'Shambles Marrow.'",
        "effects": ["Damage Health", "Frost Damage", "Damage Magicka", "Paralyze"]
      },
      "Bone Shard": {
        "name": "Bone Shard",
        "icon": "http:\/\/images.uesp.net\/6\/69\/SI-icon-ingredient-Bone_Shard.png",
        "note": "Found on Shambles (50% chance they may yield Bone Marrow instead).",
        "effects": ["Restore Willpower", "Frost Shield", "Damage Magicka", "Damage Luck"]
      },
      "Congealed Putrescence": {
        "name": "Congealed Putrescence",
        "icon": "http:\/\/images.uesp.net\/1\/14\/SI-icon-ingredient-Putrescence.png",
        "note": "Harvested from Putrid Gigantea plants, found in Dementia.",
        "effects": ["Restore Strength", "Fire Damage", "Restore Magicka", "Damage Health"]
      },
      "Elytra Ichor": {
        "name": "Elytra Ichor",
        "icon": "http:\/\/images.uesp.net\/6\/6c\/SI-icon-ingredient-Elytra_Ichor.png",
        "note": "Found on Elytras.",
        "effects": ["Restore Magicka", "Burden", "Chameleon", "Silence"]
      },
      "Flame Stalk": {
        "name": "Flame Stalk",
        "icon": "http:\/\/images.uesp.net\/6\/68\/SI-icon-ingredient-Flame_Stalk.png",
        "note": "Harvested from Flame Stalk plants, found in Mania caves.",
        "effects": ["Restore Health", "Fire Damage", "Frost Shield", "Invisibility"]
      },
      "Fungus Stalk": {
        "name": "Fungus Stalk",
        "icon": "http:\/\/images.uesp.net\/6\/69\/SI-icon-ingredient-Fungus_Stalk.png",
        "note": "Harvested from Fungus Stalk plants, found in Dementia.",
        "effects": ["Restore Strength", "Water Walking", "Fortify Health", "Restore Magicka"]
      },
      "Gnarl Bark": {
        "name": "Gnarl Bark",
        "icon": "http:\/\/images.uesp.net\/7\/7f\/SI-icon-ingredient-Gnarl_Bark.png",
        "note": "Found on Gnarls.",
        "effects": ["Restore Endurance", "Shield", "Fire Shield", "Damage Health"]
      },
      "Grummite Eggs": {
        "name": "Grummite Eggs",
        "icon": "http:\/\/images.uesp.net\/0\/06\/SI-icon-ingredient-Grummite_Eggs.png",
        "note":
            "Harvested from Grummite Egg Mounds and Grummite Egg Sacs, found primarily in Dementia. May also be found on Grummites (25% chance).",
        "effects": ["Damage Magicka", "Dispel", "Chameleon", "Silence"]
      },
      "Hound Tooth": {
        "name": "Hound Tooth",
        "icon": "http:\/\/images.uesp.net\/d\/d0\/SI-icon-ingredient-Hound_Tooth.png",
        "note": "Found on Skinned Hounds.",
        "effects": ["Cure Poison", "Detect Life", "Burden", "Invisibility"]
      },
      "Hunger Tongue": {
        "name": "Hunger Tongue",
        "icon": "http:\/\/images.uesp.net\/d\/d6\/SI-icon-ingredient-Hunger_Tongue.png",
        "note": "Found on Hungers.",
        "effects": ["Cure Poison", "Cure Disease", "Fire Damage", "Fortify Magicka"]
      },
      "Hydnum Azure Giant Spore": {
        "name": "Hydnum Azure Giant Spore",
        "icon": "http:\/\/images.uesp.net\/c\/c2\/SI-icon-ingredient-Azure_Giant_Spore.png",
        "note": "Harvested from Hydnum Azure plants, found in Mania.",
        "effects": ["Restore Endurance", "Detect Life", "Fortify Health", "Frost Shield"]
      },
      "Letifer Orca Digestive Slime": {
        "name": "Letifer Orca Digestive Slime",
        "icon": "http:\/\/images.uesp.net\/5\/59\/SI-icon-ingredient-Digestive_Slime.png",
        "note": "Harvested from Letifer Orca Planta, found in Dementia. Also called simply 'Digestive Slime.'",
        "effects": ["Damage Health", "Damage Fatigue", "Damage Magicka", "Restore Fatigue"]
      },
      "Red Kelp Gas Bladder": {
        "name": "Red Kelp Gas Bladder",
        "icon": "http:\/\/images.uesp.net\/c\/ce\/SI-icon-ingredient-Gas_Bladder.png",
        "note": "Harvested from Red Kelp, found in Mania. Also called simply 'Gas Bladder.'",
        "effects": ["Restore Speed", "Water Breathing", "Cure Disease", "Fortify Magicka"]
      },
      "Rot Scale": {
        "name": "Rot Scale",
        "icon": "http:\/\/images.uesp.net\/3\/32\/SI-icon-ingredient-Rot_Scale.png",
        "note": "Harvested from Rot Scale, found in Dementia caves.",
        "effects": ["Burden", "Damage Health", "Silence", "Paralyze"]
      },
      "Scalon Fin": {
        "name": "Scalon Fin",
        "icon": "http:\/\/images.uesp.net\/d\/d5\/SI-icon-ingredient-Scalon_Fin.png",
        "note": "Found on Scalons.",
        "effects": ["Water Breathing", "Damage Health", "Shock Damage", "Burden"]
      },
      "Screaming Maw": {
        "name": "Screaming Maw",
        "icon": "http:\/\/images.uesp.net\/3\/3a\/SI-icon-ingredient-Screaming_Maw.png",
        "note": "Harvested from Screaming Maw plants, found in Mania caves.",
        "effects": ["Restore Willpower", "Detect Life", "Chameleon", "Restore Health"]
      },
      "Smoked Baliwog Leg": {
        "name": "Smoked Baliwog Leg",
        "icon": "http:\/\/images.uesp.net\/d\/d8\/SI-icon-ingredient-Smoked_Baliwog.png",
        "note": "Found as food in shops and houses.",
        "effects": ["Restore Fatigue", "Feather", "Restore Health", "Damage Fatigue"]
      },
      "Swamp Tentacle": {
        "name": "Swamp Tentacle",
        "icon": "http:\/\/images.uesp.net\/5\/56\/SI-icon-ingredient-Swamp_Tentacle.png",
        "note": "Harvested from Swamp Tentacle plants, found in Dementia.",
        "effects": ["Restore Personality", "Water Breathing", "Water Walking", "Fortify Health"]
      },
      "Thorn Hook": {
        "name": "Thorn Hook",
        "icon": "http:\/\/images.uesp.net\/6\/6e\/SI-icon-ingredient-Thorn_Hook.png",
        "note": "Harvested from Thorn Hook plants, found in Dementia caves.",
        "effects": ["Damage Health", "Damage Luck", "Restore Magicka", "Fortify Health"]
      },
      "Unrefined Greenmote": {
        "name": "Unrefined Greenmote",
        "icon": "http:\/\/images.uesp.net\/4\/4b\/SI-icon-ingredient-Greenspore.png",
        "note": "Harvested from Mania variety Mushroom Tree Saplings.",
        "effects": ["Drain Fatigue", "Drain Health", "Drain Magicka", "Drain Intelligence"]
      },
      "Void Essence": {
        "name": "Void Essence",
        "icon": "http:\/\/images.uesp.net\/2\/28\/SI-icon-ingredient-Void_Essence.png",
        "note": "Found on Flesh Atronachs.",
        "effects": ["Restore Health", "Fortify Health", "Fortify Strength", "Fortify Endurance"]
      },
      "Watcher's Eye": {
        "name": "Watcher's Eye",
        "icon": "http:\/\/images.uesp.net\/5\/5c\/SI-icon-ingredient-Watchers_Eye.png",
        "note": "Harvested from Watcher's Eye plants, which grow in Dementia caves.",
        "effects": ["Restore Intelligence", "Fortify Magicka", "Light", "Reflect Spell"]
      },
      "Water Root Pod Pit": {
        "name": "Water Root Pod Pit",
        "icon": "http:\/\/images.uesp.net\/3\/31\/SI-icon-ingredient-Pod_Pit.png",
        "note": "Harvested from Water Root Pod plants, which grow in Dementia. Also called simply 'Pod Pit.'",
        "effects": ["Restore Health", "Resist Fire", "Fire Shield", "Water Breathing"]
      },
      "Wisp Core": {
        "name": "Wisp Core",
        "icon": "http:\/\/images.uesp.net\/1\/11\/SI-icon-ingredient-Wisp_Core.png",
        "note": "Harvested from Root Stalks, which grow in Dementia and Mania caves.",
        "effects": ["Restore Intelligence", "Burden", "Light", "Chameleon"]
      },
      "Withering Moon": {
        "name": "Withering Moon",
        "icon": "http:\/\/images.uesp.net\/b\/b0\/SI-icon-ingredient-Withering_Moon.png",
        "note": "Harvested from Withering Moon plants, which grow in Dementia caves.",
        "effects": ["Restore Magicka", "Shield", "Cure Disease", "Reflect Spell"]
      },
      "Worm's Head Cap": {
        "name": "Worm's Head Cap",
        "icon": "http:\/\/images.uesp.net\/6\/68\/SI-icon-ingredient-Worms_Head_Cap.png",
        "note": "Harvested from Worm's Head plants, which grow in Mania.",
        "effects": ["Restore Luck", "Night-Eye", "Fortify Fatigue", "Paralyze"]
      }
    },
    "effects": {
      "Restore Intelligence": {
        "name": "Restore Intelligence",
        "ingredients": [
          ["Alkanet Flower", "Clouded Funnel Cap", "Ironwood Nut", "Lady's Smock Leaves", "Watcher's Eye", "Wisp Core"],
          ["Corn"],
          [],
          []
        ]
      },
      "Resist Poison": {
        "name": "Resist Poison",
        "ingredients": [
          ["Foxglove Nectar", "Motherwort Sprig"],
          ["Alkanet Flower", "Dreugh Wax", "Mandrake Root"],
          ["Taproot"],
          []
        ]
      },
      "Light": {
        "name": "Light",
        "ingredients": [
          ["Milk Thistle Seeds"],
          ["Glow Dust", "Watermelon", "Alocasia Fruit"],
          ["Alkanet Flower", "Watcher's Eye", "Wisp Core"],
          ["Daedroth Teeth", "White Seed Pod"]
        ]
      },
      "Damage Fatigue": {
        "name": "Damage Fatigue",
        "ingredients": [
          ["Bonemeal", "Dreugh Wax", "Mort Flesh", "Rat Meat", "Black Tar"],
          ["Motherwort Sprig", "Mutton", "Water Hyacinth Nectar", "Letifer Orca Digestive Slime"],
          ["Crab Meat", "Green Stain Shelf Cap", "Ironwood Nut", "Lady's Smock Leaves"],
          ["Alkanet Flower", "Smoked Baliwog Leg"]
        ]
      },
      "Restore Fatigue": {
        "name": "Restore Fatigue",
        "ingredients": [
          [
            "Aloe Vera Leaves",
            "Apple",
            "Beef",
            "Blackberry",
            "Bread Loaf",
            "Carrot",
            "Cheese Wedge",
            "Cheese Wheel",
            "Corn",
            "Fennel Seeds",
            "Flour",
            "Grapes",
            "Green Stain Cup Cap",
            "Ham",
            "Leek",
            "Lettuce",
            "Onion",
            "Orange",
            "Pear",
            "Potato",
            "Pumpkin",
            "Radish",
            "Rice",
            "Strawberry",
            "Sweetcake",
            "Sweetroll",
            "Tobacco",
            "Tomato",
            "Watermelon",
            "Wheat Grain",
            "Alocasia Fruit",
            "Smoked Baliwog Leg"
          ],
          ["Daedra Venin"],
          [],
          ["Peony Seeds", "Spiddal Stick", "Letifer Orca Digestive Slime"]
        ]
      },
      "Restore Health": {
        "name": "Restore Health",
        "ingredients": [
          [
            "Ambrosia",
            "Boar Meat",
            "Cairn Bolete Cap",
            "Daedra Heart",
            "Lady's Mantle Leaves",
            "Mugwort Seeds",
            "Venison",
            "Flame Stalk",
            "Void Essence",
            "Water Root Pod Pit"
          ],
          ["Aloe Vera Leaves", "Ham", "S'jirra's Famous Potato Bread"],
          ["Dragon's Tongue", "Fly Amanita Cap", "Lavender Sprig", "Sweetcake", "Alocasia Fruit", "Smoked Baliwog Leg"],
          ["Green Stain Shelf Cap", "Screaming Maw"]
        ]
      },
      "Damage Magicka": {
        "name": "Damage Magicka",
        "ingredients": [
          ["Scamp Skin", "Grummite Eggs"],
          ["Harrada", "Spiddal Stick", "Wheat Grain"],
          [
            "Aloe Vera Leaves",
            "Bergamot Seeds",
            "Daedra Heart",
            "Fennel Seeds",
            "Ham",
            "Rat Meat",
            "Tobacco",
            "Bone Marrow",
            "Bone Shard",
            "Letifer Orca Digestive Slime"
          ],
          [
            "Clouded Funnel Cap",
            "Morning Glory Root Pulp",
            "Mutton",
            "Tinder Polypore Cap",
            "Wormwood Leaves",
            "Alocasia Fruit"
          ]
        ]
      },
      "Invisibility": {
        "name": "Invisibility",
        "ingredients": [
          [],
          ["Wormwood Leaves"],
          ["Tinder Polypore Cap"],
          [
            "Aloe Vera Leaves",
            "Motherwort Sprig",
            "Redwort Flower",
            "Stinkhorn Cap",
            "Vampire Dust",
            "Blister Pod Cap",
            "Flame Stalk",
            "Hound Tooth"
          ]
        ]
      },
      "Damage Luck": {
        "name": "Damage Luck",
        "ingredients": [
          ["Ginseng", "Water Hyacinth Nectar"],
          ["Apple", "Arrowroot", "Mort Flesh", "Ashen Remains", "Thorn Hook"],
          ["Cheese Wheel", "Ginkgo Leaf", "Nightshade"],
          ["Ham", "Lavender Sprig", "Bone Shard"]
        ]
      },
      "Fortify Willpower": {
        "name": "Fortify Willpower",
        "ingredients": [
          [],
          ["Lavender Sprig"],
          ["Apple"],
          ["Cheese Wheel", "Mandrake Root"]
        ]
      },
      "Damage Health": {
        "name": "Damage Health",
        "ingredients": [
          [
            "Harrada",
            "Nightshade",
            "Spiddal Stick",
            "Stinkhorn Cap",
            "Wisp Stalk Caps",
            "Bone Marrow",
            "Letifer Orca Digestive Slime",
            "Thorn Hook"
          ],
          [
            "Dragon's Tongue",
            "Peony Seeds",
            "Purgeblood Salts",
            "Sacred Lotus Seeds",
            "St. Jahn's Wort Nectar",
            "Void Salts",
            "Rot Scale",
            "Scalon Fin"
          ],
          [
            "Daedra Venin",
            "Imp Gall",
            "Redwort Flower",
            "Scales",
            "Strawberry",
            "Venison",
            "Wormwood Leaves",
            "Black Tar"
          ],
          [
            "Apple",
            "Clannfear Claws",
            "Dreugh Wax",
            "Ectoplasm",
            "Flax Seeds",
            "Glow Dust",
            "Grapes",
            "Green Stain Cup Cap",
            "Onion",
            "Pear",
            "Scamp Skin",
            "Troll Fat",
            "Watermelon",
            "Congealed Putrescence",
            "Gnarl Bark"
          ]
        ]
      },
      "Restore Agility": {
        "name": "Restore Agility",
        "ingredients": [
          [
            "Arrowroot",
            "Cinnabar Polypore Red Cap",
            "Emetic Russula Cap",
            "Fly Amanita Cap",
            "Summer Bolete Cap",
            "Aster Bloom Core"
          ],
          [],
          [],
          []
        ]
      },
      "Fortify Strength": {
        "name": "Fortify Strength",
        "ingredients": [
          [],
          [],
          ["Arrowroot", "Elf Cup Cap", "Root Pulp", "Void Essence"],
          ["Garlic", "Ogre's Teeth"]
        ]
      },
      "Burden": {
        "name": "Burden",
        "ingredients": [
          ["Daedra Silk", "Morning Glory Root Pulp", "Rot Scale"],
          ["Fly Amanita Cap", "Minotaur Horn", "Nightshade", "Elytra Ichor", "Wisp Core"],
          [
            "Bloodgrass",
            "Daedroth Teeth",
            "Ginseng",
            "Orange",
            "Potato",
            "Tomato",
            "Viper's Bugloss Leaves",
            "Watermelon",
            "Hound Tooth"
          ],
          [
            "Arrowroot",
            "Boar Meat",
            "Monkshood Root Pulp",
            "Radish",
            "Steel-Blue Entoloma Cap",
            "Sweetcake",
            "Aster Bloom Core",
            "Scalon Fin"
          ]
        ]
      },
      "Shield": {
        "name": "Shield",
        "ingredients": [
          [],
          [
            "Beef",
            "Bog Beacon Asco Cap",
            "Cinnabar Polypore Red Cap",
            "Emetic Russula Cap",
            "Potato",
            "Shepherd's Pie",
            "Summer Bolete Cap",
            "Gnarl Bark",
            "Withering Moon"
          ],
          ["Flax Seeds", "Aster Bloom Core"],
          ["Orange", "Tomato"]
        ]
      },
      "Fortify Agility": {
        "name": "Fortify Agility",
        "ingredients": [
          [],
          ["Leek"],
          ["Beef", "Shepherd's Pie"],
          []
        ]
      },
      "Dispel": {
        "name": "Dispel",
        "ingredients": [
          [],
          ["Bergamot Seeds", "Ectoplasm", "Aster Bloom Core", "Grummite Eggs"],
          ["Grapes", "Mutton"],
          ["Beef", "Purgeblood Salts", "Sacred Lotus Seeds", "Shepherd's Pie", "Tobacco", "Void Salts"]
        ]
      },
      "Resist Disease": {
        "name": "Resist Disease",
        "ingredients": [
          ["Bergamot Seeds", "Garlic"],
          ["Clannfear Claws", "Sweetroll", "Tinder Polypore Cap", "Vampire Dust"],
          [],
          ["Foxglove Nectar"]
        ]
      },
      "Silence": {
        "name": "Silence",
        "ingredients": [
          ["Vampire Dust"],
          ["Rice"],
          ["Frost Salts", "Harrada", "Motherwort Sprig", "White Seed Pod", "Ashen Remains", "Rot Scale"],
          ["Bergamot Seeds", "Daedra Heart", "Mort Flesh", "Rat Meat", "Elytra Ichor", "Grummite Eggs"]
        ]
      },
      "Resist Shock": {
        "name": "Resist Shock",
        "ingredients": [
          ["St. Jahn's Wort Nectar"],
          ["Blackberry", "Crab Meat", "Scamp Skin"],
          [],
          []
        ]
      },
      "Fortify Endurance": {
        "name": "Fortify Endurance",
        "ingredients": [
          [],
          ["Cinnabar Polypore Yellow Cap"],
          ["Blackberry", "Minotaur Horn", "Monkshood Root Pulp"],
          ["Void Essence"]
        ]
      },
      "Restore Magicka": {
        "name": "Restore Magicka",
        "ingredients": [
          [
            "Bog Beacon Asco Cap",
            "Flax Seeds",
            "Lichor",
            "Purgeblood Salts",
            "Steel-Blue Entoloma Cap",
            "Void Salts",
            "Blister Pod Cap",
            "Elytra Ichor",
            "Withering Moon"
          ],
          ["Stinkhorn Cap"],
          ["Fire Salts", "Water Hyacinth Nectar", "Congealed Putrescence", "Thorn Hook"],
          ["Blackberry", "Fungus Stalk"]
        ]
      },
      "Chameleon": {
        "name": "Chameleon",
        "ingredients": [
          ["Bloodgrass"],
          [],
          ["Daedra Silk", "Radish", "Elytra Ichor", "Grummite Eggs", "Screaming Maw"],
          ["Columbine Root Pulp", "St. Jahn's Wort Nectar", "Venison", "Wisp Core"]
        ]
      },
      "Resist Paralysis": {
        "name": "Resist Paralysis",
        "ingredients": [
          ["Viper's Bugloss Leaves"],
          ["Bloodgrass", "Cheese Wheel", "Foxglove Nectar", "Ogre's Teeth", "Tobacco"],
          ["Cairn Bolete Cap"],
          ["Minotaur Horn"]
        ]
      },
      "Fortify Health": {
        "name": "Fortify Health",
        "ingredients": [
          ["Mutton"],
          ["Void Essence"],
          ["Boar Meat", "Mort Flesh", "Somnalius Frond", "Wheat Grain", "Fungus Stalk", "Hydnum Azure Giant Spore"],
          ["Bloodgrass", "Ironwood Nut", "Lady's Smock Leaves", "Sweetroll", "Swamp Tentacle", "Thorn Hook"]
        ]
      },
      "Damage Speed": {
        "name": "Damage Speed",
        "ingredients": [
          [],
          ["Boar Meat", "Green Stain Cup Cap", "Pear", "Black Tar"],
          ["Dryad Saddle Polypore Cap", "Peony Seeds"],
          []
        ]
      },
      "Damage Personality": {
        "name": "Damage Personality",
        "ingredients": [
          [],
          ["Flour"],
          [
            "Bog Beacon Asco Cap",
            "Cinnabar Polypore Red Cap",
            "Cinnabar Polypore Yellow Cap",
            "Emetic Russula Cap",
            "Leek",
            "Pumpkin",
            "Summer Bolete Cap",
            "Sweetroll"
          ],
          ["Lettuce", "Wheat Grain"]
        ]
      },
      "Damage Endurance": {
        "name": "Damage Endurance",
        "ingredients": [
          [],
          ["Lady's Mantle Leaves", "Radish", "Somnalius Frond", "Taproot"],
          ["Clouded Funnel Cap"],
          [
            "Bog Beacon Asco Cap",
            "Carrot",
            "Cinnabar Polypore Red Cap",
            "Daedra Silk",
            "Emetic Russula Cap",
            "Summer Bolete Cap"
          ]
        ]
      },
      "Resist Fire": {
        "name": "Resist Fire",
        "ingredients": [
          ["Dragon's Tongue"],
          ["Bonemeal", "Cheese Wedge", "Frost Salts", "Ironwood Nut", "Lady's Smock Leaves", "Water Root Pod Pit"],
          [],
          []
        ]
      },
      "Fortify Luck": {
        "name": "Fortify Luck",
        "ingredients": [
          [],
          ["Green Stain Shelf Cap"],
          ["Bonemeal", "Primrose Leaves"],
          []
        ]
      },
      "Night-Eye": {
        "name": "Night-Eye",
        "ingredients": [
          ["Daedroth Teeth"],
          ["Carrot", "Daedra Silk", "Viper's Bugloss Leaves", "Worm's Head Cap"],
          ["Lady's Mantle Leaves", "Blister Pod Cap"],
          ["Bonemeal"]
        ]
      },
      "Detect Life": {
        "name": "Detect Life",
        "ingredients": [
          ["S'jirra's Famous Potato Bread"],
          ["Bread Loaf", "Orange", "Rat Meat", "Tomato", "Hound Tooth", "Hydnum Azure Giant Spore", "Screaming Maw"],
          ["Onion"],
          ["Pumpkin"]
        ]
      },
      "Damage Agility": {
        "name": "Damage Agility",
        "ingredients": [
          ["Troll Fat"],
          ["Garlic", "Pumpkin"],
          ["Bread Loaf", "Corn", "Mandrake Root", "S'jirra's Famous Potato Bread"],
          ["Cheese Wedge", "Rice"]
        ]
      },
      "Damage Strength": {
        "name": "Damage Strength",
        "ingredients": [
          [],
          ["Tiger Lily Nectar"],
          [],
          ["Bread Loaf", "Leek", "Primrose Leaves", "S'jirra's Famous Potato Bread"]
        ]
      },
      "Damage Intelligence": {
        "name": "Damage Intelligence",
        "ingredients": [
          ["Ogre's Teeth"],
          ["Cairn Bolete Cap", "Fennel Seeds", "Monkshood Root Pulp"],
          ["Wisp Stalk Caps"],
          ["Elf Cup Cap", "Root Pulp"]
        ]
      },
      "Shock Damage": {
        "name": "Shock Damage",
        "ingredients": [
          ["Ectoplasm"],
          [],
          ["Ogre's Teeth", "Scalon Fin"],
          ["Cairn Bolete Cap", "Fly Amanita Cap", "Ginkgo Leaf", "Black Tar"]
        ]
      },
      "Fortify Intelligence": {
        "name": "Fortify Intelligence",
        "ingredients": [
          [],
          ["Clouded Funnel Cap"],
          ["Carrot"],
          []
        ]
      },
      "Fire Shield": {
        "name": "Fire Shield",
        "ingredients": [
          [],
          [],
          ["Cheese Wedge", "Lettuce", "Gnarl Bark", "Water Root Pod Pit"],
          ["Crab Meat", "Dragon's Tongue", "Fire Salts"]
        ]
      },
      "Restore Endurance": {
        "name": "Restore Endurance",
        "ingredients": [
          ["Cinnabar Polypore Yellow Cap", "Crab Meat", "Tiger Lily Nectar", "Gnarl Bark", "Hydnum Azure Giant Spore"],
          [],
          [],
          []
        ]
      },
      "Reflect Spell": {
        "name": "Reflect Spell",
        "ingredients": [
          [],
          [],
          ["Glow Dust"],
          ["Cinnabar Polypore Yellow Cap", "Watcher's Eye", "Withering Moon"]
        ]
      },
      "Cure Disease": {
        "name": "Cure Disease",
        "ingredients": [
          ["Clannfear Claws", "Mandrake Root", "Root Pulp", "Shepherd's Pie"],
          ["Elf Cup Cap", "Hunger Tongue"],
          ["Red Kelp Gas Bladder", "Withering Moon"],
          []
        ]
      },
      "Paralyze": {
        "name": "Paralyze",
        "ingredients": [
          ["Daedra Venin"],
          [],
          ["Clannfear Claws"],
          ["Fennel Seeds", "Harrada", "Milk Thistle Seeds", "Bone Marrow", "Rot Scale", "Worm's Head Cap"]
        ]
      },
      "Restore Personality": {
        "name": "Restore Personality",
        "ingredients": [
          ["Columbine Root Pulp", "Lavender Sprig", "Swamp Tentacle"],
          ["Primrose Leaves"],
          [],
          []
        ]
      },
      "Resist Frost": {
        "name": "Resist Frost",
        "ingredients": [
          ["Redwort Flower", "Sacred Lotus Seeds"],
          ["Columbine Root Pulp", "Dryad Saddle Polypore Cap", "Fire Salts"],
          ["Steel-Blue Entoloma Cap"],
          []
        ]
      },
      "Fortify Magicka": {
        "name": "Fortify Magicka",
        "ingredients": [
          [],
          ["Ginkgo Leaf", "Blister Pod Cap", "Watcher's Eye"],
          ["Columbine Root Pulp", "Ectoplasm", "Purgeblood Salts", "Void Salts"],
          ["Ginseng", "Nightshade", "Water Hyacinth Nectar", "Hunger Tongue", "Red Kelp Gas Bladder"]
        ]
      },
      "Shock Shield": {
        "name": "Shock Shield",
        "ingredients": [
          [],
          ["Daedra Heart"],
          ["Rice"],
          ["Corn", "Taproot"]
        ]
      },
      "Reflect Damage": {
        "name": "Reflect Damage",
        "ingredients": [
          [],
          [],
          ["Green Stain Cup Cap", "Scamp Skin"],
          ["Daedra Venin", "Flour", "Strawberry"]
        ]
      },
      "Frost Shield": {
        "name": "Frost Shield",
        "ingredients": [
          [],
          ["Daedroth Teeth", "Bone Shard"],
          ["Garlic", "Morning Glory Root Pulp", "Flame Stalk"],
          ["Frost Salts", "Potato", "Hydnum Azure Giant Spore"]
        ]
      },
      "Water Breathing": {
        "name": "Water Breathing",
        "ingredients": [
          ["Scalon Fin"],
          ["Onion", "Scales", "White Seed Pod", "Red Kelp Gas Bladder", "Swamp Tentacle"],
          ["Dreugh Wax"],
          ["Water Root Pod Pit"]
        ]
      },
      "Restore Luck": {
        "name": "Restore Luck",
        "ingredients": [
          ["Dryad Saddle Polypore Cap", "Green Stain Shelf Cap", "Taproot", "Worm's Head Cap"],
          ["Lettuce"],
          ["Foxglove Nectar"],
          []
        ]
      },
      "Frost Damage": {
        "name": "Frost Damage",
        "ingredients": [
          ["Frost Salts"],
          ["Milk Thistle Seeds", "Bone Marrow"],
          ["Vampire Dust"],
          ["Dryad Saddle Polypore Cap"]
        ]
      },
      "Damage Willpower": {
        "name": "Damage Willpower",
        "ingredients": [
          ["Elf Cup Cap", "Scales"],
          ["Morning Glory Root Pulp", "Root Pulp", "Wisp Stalk Caps"],
          ["Troll Fat"],
          ["Tiger Lily Nectar"]
        ]
      },
      "Fire Damage": {
        "name": "Fire Damage",
        "ingredients": [
          ["Fire Salts"],
          ["Steel-Blue Entoloma Cap", "Congealed Putrescence", "Flame Stalk"],
          ["Spiddal Stick", "Hunger Tongue"],
          ["Imp Gall"]
        ]
      },
      "Feather": {
        "name": "Feather",
        "ingredients": [
          [],
          ["Flax Seeds", "Sweetcake", "Venison", "Smoked Baliwog Leg"],
          ["Sacred Lotus Seeds"],
          ["Lady's Mantle Leaves", "Somnalius Frond"]
        ]
      },
      "Fortify Fatigue": {
        "name": "Fortify Fatigue",
        "ingredients": [
          ["Wormwood Leaves", "Ashen Remains"],
          [],
          ["Flour", "Worm's Head Cap"],
          []
        ]
      },
      "Restore Speed": {
        "name": "Restore Speed",
        "ingredients": [
          ["Ginkgo Leaf", "Glow Dust", "Somnalius Frond", "Red Kelp Gas Bladder"],
          [],
          [],
          []
        ]
      },
      "Cure Poison": {
        "name": "Cure Poison",
        "ingredients": [
          ["Hound Tooth", "Hunger Tongue"],
          ["Ginseng", "Redwort Flower", "Strawberry"],
          ["St. Jahn's Wort Nectar"],
          []
        ]
      },
      "Water Walking": {
        "name": "Water Walking",
        "ingredients": [
          [],
          ["Grapes", "Fungus Stalk"],
          ["Stinkhorn Cap", "Tiger Lily Nectar", "Swamp Tentacle"],
          ["Scales"]
        ]
      },
      "Fortify Personality": {
        "name": "Fortify Personality",
        "ingredients": [
          ["Imp Gall"],
          ["Troll Fat"],
          [],
          []
        ]
      },
      "Cure Paralysis": {
        "name": "Cure Paralysis",
        "ingredients": [
          [],
          ["Imp Gall"],
          ["Milk Thistle Seeds"],
          ["Viper's Bugloss Leaves"]
        ]
      },
      "Restore Willpower": {
        "name": "Restore Willpower",
        "ingredients": [
          ["Minotaur Horn", "Primrose Leaves", "Tinder Polypore Cap", "Bone Shard", "Screaming Maw"],
          [],
          [],
          []
        ]
      },
      "Restore Strength": {
        "name": "Restore Strength",
        "ingredients": [
          ["Monkshood Root Pulp", "Peony Seeds", "White Seed Pod", "Congealed Putrescence", "Fungus Stalk"],
          [],
          [],
          []
        ]
      },
      "Fortify Speed": {
        "name": "Fortify Speed",
        "ingredients": [
          [],
          [],
          ["Pear"],
          ["Wisp Stalk Caps"]
        ]
      },
      "Weakness to Fire": {
        "name": "Weakness to Fire",
        "ingredients": [
          [],
          [],
          [],
          ["Ashen Remains"]
        ]
      },
      "Drain Fatigue": {
        "name": "Drain Fatigue",
        "ingredients": [
          ["Unrefined Greenmote"],
          [],
          [],
          []
        ]
      },
      "Drain Health": {
        "name": "Drain Health",
        "ingredients": [
          [],
          ["Unrefined Greenmote"],
          [],
          []
        ]
      },
      "Drain Magicka": {
        "name": "Drain Magicka",
        "ingredients": [
          [],
          [],
          ["Unrefined Greenmote"],
          []
        ]
      },
      "Drain Intelligence": {
        "name": "Drain Intelligence",
        "ingredients": [
          [],
          [],
          [],
          ["Unrefined Greenmote"]
        ]
      }
    }
  };
  static const Map<String, dynamic> _morrowindData = {
    "ingredients": {
      "Alit Hide": {
        "id": "ingred_alit_hide_01",
        "harvest_probability": 60,
        "name": "Alit Hide",
        "text": "Found by killing Alits",
        "icon": "http:\/\/images.uesp.net\/8\/82\/MW-icon-ingredient-Alit_Hide.png",
        "effects": ["Drain Intelligence", "Resist Poison", "Telekinesis", "Detect Animal"]
      },
      "Ampoule Pod": {
        "id": "ingred_bc_ampoule_pod",
        "harvest_probability": 80,
        "name": "Ampoule Pod",
        "text":
            "Common growing in swamps in the Bitter Coast region; one of two possible outputs of the draggle-tail plant (the other is the Coda Flower)",
        "icon": "http:\/\/images.uesp.net\/2\/20\/MW-icon-ingredient-Ampoule_Pod.png",
        "effects": ["Water Walking", "Paralyze", "Detect Animal", "Drain Willpower"]
      },
      "Ash Salts": {
        "id": "ingred_ash_salts_01",
        "harvest_probability": 60,
        "name": "Ash Salts",
        "text": "Found by killing Ash creatures",
        "icon": "http:\/\/images.uesp.net\/6\/6e\/MW-icon-ingredient-Ash_Salts.png",
        "effects": ["Drain Agility", "Resist Magicka", "Cure Blight Disease", "Resist Magicka"]
      },
      "Ash Yam": {
        "id": "ingred_ash_yam_01",
        "harvest_probability": 80,
        "name": "Ash Yam",
        "text": "Most common in farm areas, occasionally found in the wild",
        "icon": "http:\/\/images.uesp.net\/a\/a0\/MW-icon-ingredient-Ash_Yam.png",
        "effects": ["Fortify Intelligence", "Fortify Strength", "Resist Common Disease", "Detect Key"]
      },
      "Bittergreen Petals": {
        "id": "ingred_bittergreen_petals_01",
        "harvest_probability": 80,
        "name": "Bittergreen Petals",
        "text": "Grows on thorny vines in drier regions",
        "icon": "http:\/\/images.uesp.net\/e\/e3\/MW-icon-ingredient-Bittergreen_Petal.png",
        "effects": ["Restore Intelligence", "Invisibility", "Drain Endurance", "Drain Magicka"]
      },
      "Black Anther": {
        "id": "ingred_black_anther_01",
        "harvest_probability": 80,
        "name": "Black Anther",
        "text": "These flowers are most common in the Ascadian Isles region",
        "icon": "http:\/\/images.uesp.net\/8\/82\/MW-icon-ingredient-Black_Anther.png",
        "effects": ["Drain Agility", "Resist Fire", "Drain Endurance", "Light"]
      },
      "Black Lichen": {
        "id": "ingred_black_lichen_01",
        "harvest_probability": 70,
        "name": "Black Lichen",
        "text": "Somewhat rare, mostly found in caves",
        "icon": "http:\/\/images.uesp.net\/4\/42\/MW-icon-ingredient-Black_Lichen.png",
        "effects": ["Drain Strength", "Resist Frost", "Drain Speed", "Cure Poison"]
      },
      "Bloat": {
        "id": "ingred_bloat_01",
        "harvest_probability": 100,
        "name": "Bloat",
        "text":
            "Grows in Bloat Spores, which are unfortunately not found anywhere in the game. The only examples you can find are in random containers, or sold by vendors.",
        "icon": "http:\/\/images.uesp.net\/6\/6e\/MW-icon-ingredient-Ash_Salts.png",
        "effects": ["Drain Magicka", "Fortify Intelligence", "Fortify Willpower", "Detect Animal"]
      },
      "Bonemeal": {
        "id": "ingred_bonemeal_01",
        "harvest_probability": 60,
        "name": "Bonemeal",
        "text": "Found on skeletons (living or dead), and also in urns in most tombs.",
        "icon": "http:\/\/images.uesp.net\/1\/1a\/MW-icon-ingredient-Bonemeal.png",
        "effects": ["Restore Agility", "Telekinesis", "Drain Fatigue", "Drain Personality"]
      },
      "Bread": {
        "id": "ingred_bread_01",
        "harvest_probability": null,
        "name": "Bread",
        "text": "Found in most taverns and many houses.",
        "icon": "http:\/\/images.uesp.net\/a\/a4\/MW-icon-ingredient-Bread.png",
        "effects": ["Restore Fatigue"]
      },
      "Bungler's Bane": {
        "id": "ingred_bc_bungler's_bane",
        "harvest_probability": 90,
        "name": "Bungler's Bane",
        "text": "This shelf-fungus grows on tree trunks in the Bitter Coast region",
        "icon": "http:\/\/images.uesp.net\/6\/60\/MW-icon-ingredient-Bungler%27s_Bane.png",
        "effects": ["Drain Speed", "Drain Endurance", "Dispel", "Drain Strength"]
      },
      "Chokeweed": {
        "id": "ingred_chokeweed_01",
        "harvest_probability": 90,
        "name": "Chokeweed",
        "text": "Found growing in drier regions",
        "icon": "http:\/\/images.uesp.net\/5\/57\/MW-icon-ingredient-Chokeweed.png",
        "effects": ["Drain Luck", "Restore Fatigue", "Cure Common Disease", "Drain Willpower"]
      },
      "Coda Flower": {
        "id": "ingred_bc_coda_flower",
        "harvest_probability": 75,
        "name": "Coda Flower",
        "text": "Found growing in swampy pools in the Bitter Coast region on the draggle-tail plant",
        "icon": "http:\/\/images.uesp.net\/a\/ac\/MW-icon-ingredient-Coda_Flower.png",
        "effects": ["Drain Personality", "Levitate", "Drain Intelligence", "Drain Health"]
      },
      "Comberry": {
        "id": "ingred_comberry_01",
        "harvest_probability": 90,
        "name": "Comberry",
        "text": "Grows in shrubs in the West Gash and Ascadian Isles regions",
        "icon": "http:\/\/images.uesp.net\/5\/50\/MW-icon-ingredient-Comberry.png",
        "effects": ["Drain Fatigue", "Restore Magicka", "Fire Shield", "Reflect"]
      },
      "Corkbulb Root": {
        "id": "ingred_corkbulb_root_01",
        "harvest_probability": 80,
        "name": "Corkbulb Root",
        "text": "Mostly found in drier regions in the wild.",
        "icon": "http:\/\/images.uesp.net\/6\/64\/MW-icon-ingredient-Corkbulb_Root.png",
        "effects": ["Cure Paralyzation", "Restore Health", "Lightning Shield", "Fortify Luck"]
      },
      "Corprus Weepings": {
        "id": "ingred_corprus_weepings_01",
        "harvest_probability": 60,
        "name": "Corprus Weepings",
        "text": "Found by killing Corprus Stalkers",
        "icon": "http:\/\/images.uesp.net\/9\/92\/MW-icon-ingredient-Corprus_Weepings.png",
        "effects": ["Drain Fatigue", "Fortify Luck", "Drain Willpower", "Restore Health"]
      },
      "Crab Meat": {
        "id": "ingred_crab_meat_01",
        "harvest_probability": 60,
        "name": "Crab Meat",
        "text": "Found by killing Mudcrabs",
        "icon": "http:\/\/images.uesp.net\/3\/37\/MW-icon-ingredient-Crab_Meat.png",
        "effects": ["Restore Fatigue", "Resist Shock", "Lightning Shield", "Restore Luck"]
      },
      "Daedra Skin": {
        "id": "ingred_daedra_skin_01",
        "harvest_probability": 60,
        "name": "Daedra Skin",
        "text": "Somewhat rare, mostly found at vendors",
        "icon": "http:\/\/images.uesp.net\/1\/12\/MW-icon-ingredient-Daedra_Skin.png",
        "effects": ["Fortify Strength", "Cure Common Disease", "Paralyze", "Swift Swim"]
      },
      "Daedra's Heart": {
        "id": "ingred_daedras_heart_01",
        "harvest_probability": 60,
        "name": "Daedra's Heart",
        "text": "Found by killing most Daedra - Dremora, Ogrim, Clannfears, Daedroth, etc.",
        "icon": "http:\/\/images.uesp.net\/7\/7a\/MW-icon-ingredient-Daedra%27s_Heart.png",
        "effects": ["Restore Magicka", "Fortify Endurance", "Drain Agility", "Night Eye"]
      },
      "Diamond": {
        "id": "ingred_diamond_01",
        "harvest_probability": 60,
        "name": "Diamond",
        "text": "Common in barrels in Dwemer ruins. Also found in a small number of caves",
        "icon": "http:\/\/images.uesp.net\/a\/a5\/MW-icon-ingredient-Diamond.png",
        "effects": ["Drain Agility", "Invisibility", "Reflect", "Detect Key"]
      },
      "Dreugh Wax": {
        "id": "ingred_dreugh_wax_01",
        "harvest_probability": 60,
        "name": "Dreugh Wax",
        "text": "Found by killing Dreugh",
        "icon": "http:\/\/images.uesp.net\/c\/c5\/MW-icon-ingredient-Dreugh_Wax.png",
        "effects": ["Fortify Strength", "Restore Strength", "Drain Luck", "Drain Willpower"]
      },
      "Ectoplasm": {
        "id": "ingred_ectoplasm_01",
        "harvest_probability": 60,
        "name": "Ectoplasm",
        "text": "Found by killing Ghosts",
        "icon": "http:\/\/images.uesp.net\/7\/77\/MW-icon-ingredient-Ectoplasm.png",
        "effects": ["Fortify Agility", "Detect Animal", "Drain Strength", "Drain Health"]
      },
      "Emerald": {
        "id": "ingred_emerald_01",
        "harvest_probability": null,
        "name": "Emerald",
        "text": "Common in barrels in Dwemer ruins",
        "icon": "http:\/\/images.uesp.net\/1\/1d\/MW-icon-ingredient-Emerald.png",
        "effects": ["Fortify Magicka", "Restore Health", "Drain Agility", "Drain Endurance"]
      },
      "Fire Petal": {
        "id": "ingred_fire_petal_01",
        "harvest_probability": 80,
        "name": "Fire Petal",
        "text": "Found growing in the Molag Amur and Red Mountain regions",
        "icon": "http:\/\/images.uesp.net\/4\/42\/MW-icon-ingredient-Fire_Petal.png",
        "effects": ["Resist Fire", "Drain Health", "Spell Absorption", "Paralyze"]
      },
      "Fire Salts": {
        "id": "ingred_fire_salts_01",
        "harvest_probability": 60,
        "name": "Fire Salts",
        "text": "Found by killing Flame Atronachs",
        "icon": "http:\/\/images.uesp.net\/a\/a0\/MW-icon-ingredient-Fire_Salts.png",
        "effects": ["Drain Health", "Fortify Agility", "Resist Frost", "Fire Shield"]
      },
      "Frost Salts": {
        "id": "ingred_frost_salts_01",
        "harvest_probability": 60,
        "name": "Frost Salts",
        "text": "Found by killing Frost Atronachs",
        "icon": "http:\/\/images.uesp.net\/2\/2b\/MW-icon-ingredient-Frost_Salts.png",
        "effects": ["Drain Speed", "Restore Magicka", "Frost Shield", "Resist Fire"]
      },
      "Ghoul Heart": {
        "id": "ingred_ghoul_heart_01",
        "harvest_probability": null,
        "name": "Ghoul Heart",
        "text":
            "Supposedly the heart tissue of an Ash Ghoul, but not found on them. Mostly in random ingredient containers and sold at vendors.",
        "icon": "http:\/\/images.uesp.net\/e\/ea\/MW-icon-ingredient-Ghoul_Heart.png",
        "effects": ["Paralyze", "Cure Poison", "Fortify Attack"]
      },
      "Gold Kanet": {
        "id": "ingred_gold_kanet_01",
        "harvest_probability": 80,
        "name": "Gold Kanet",
        "text": "Found growing in bushes in the grassy regions",
        "icon": "http:\/\/images.uesp.net\/6\/6f\/MW-icon-ingredient-Gold_Kanet.png",
        "effects": ["Drain Health", "Burden", "Drain Luck", "Restore Strength"]
      },
      "Gravedust": {
        "id": "ingred_gravedust_01",
        "harvest_probability": null,
        "name": "Gravedust",
        "text": "No reliable location. Occasionally for sale at vendors or found in random containers",
        "icon": "http:\/\/images.uesp.net\/a\/a9\/MW-icon-ingredient-Gravedust.png",
        "effects": ["Drain Intelligence", "Cure Common Disease", "Drain Magicka", "Restore Endurance"]
      },
      "Green Lichen": {
        "id": "ingred_green_lichen_01",
        "harvest_probability": 80,
        "name": "Green Lichen",
        "text": "Mostly grows on rocks in caves",
        "icon": "http:\/\/images.uesp.net\/e\/e5\/MW-icon-ingredient-Green_Lichen.png",
        "effects": ["Fortify Personality", "Cure Common Disease", "Drain Strength", "Drain Health"]
      },
      "Guar Hide": {
        "id": "ingred_guar_hide_01",
        "harvest_probability": 60,
        "name": "Guar Hide",
        "text": "Found by killing Guars",
        "icon": "http:\/\/images.uesp.net\/b\/b4\/MW-icon-ingredient-Guar_Hide.png",
        "effects": ["Drain Fatigue", "Fortify Endurance", "Restore Personality", "Fortify Luck"]
      },
      "Hackle-Lo Leaf": {
        "id": "ingred_hackle-lo_leaf_01",
        "harvest_probability": 75,
        "name": "Hackle-Lo Leaf",
        "text": "Found as food in most houses; grows wild in the Azura's Coast region.",
        "icon": "http:\/\/images.uesp.net\/d\/d3\/MW-icon-ingredient-Hackle-Lo_Leaf.png",
        "effects": ["Restore Fatigue", "Paralyze", "Water Breathing", "Restore Luck"]
      },
      "Heather": {
        "id": "ingred_heather_01",
        "harvest_probability": 90,
        "name": "Heather",
        "text": "This common flower grows throughout the greener regions of Vvardenfell.",
        "icon": "http:\/\/images.uesp.net\/7\/78\/MW-icon-ingredient-Heather.png",
        "effects": ["Restore Personality", "Feather", "Drain Speed", "Drain Personality"]
      },
      "Hound Meat": {
        "id": "ingred_hound_meat_01",
        "harvest_probability": 100,
        "name": "Hound Meat",
        "text": "Found by killing Nix-Hounds",
        "icon": "http:\/\/images.uesp.net\/b\/b2\/MW-icon-ingredient-Hound_Meat.png",
        "effects": ["Restore Fatigue", "Fortify Fatigue", "Reflect", "Detect Enchantment"]
      },
      "Hypha Facia": {
        "id": "ingred_bc_hypha_facia",
        "harvest_probability": 90,
        "name": "Hypha Facia",
        "text": "This shelf-fungus is found growing on tree trunks in the Bitter Coast region",
        "icon": "http:\/\/images.uesp.net\/e\/e5\/MW-icon-ingredient-Hypha_Facia.png",
        "effects": ["Drain Luck", "Drain Agility", "Drain Fatigue", "Detect Enchantment"]
      },
      "Kagouti Hide": {
        "id": "ingred_kagouti_hide_01",
        "harvest_probability": 60,
        "name": "Kagouti Hide",
        "text": "Found by killing Kagoutis",
        "icon": "http:\/\/images.uesp.net\/f\/f7\/MW-icon-ingredient-Kagouti_Hide.png",
        "effects": ["Drain Fatigue", "Fortify Speed", "Resist Common Disease", "Night Eye"]
      },
      "Kresh Fiber": {
        "id": "ingred_kresh_fiber_01",
        "harvest_probability": 80,
        "name": "Kresh Fiber",
        "text":
            "Kreshweed is found growing near sea water, most common in the Azura's Coast, Bitter Coast and West Gash regions.",
        "icon": "http:\/\/images.uesp.net\/c\/c0\/MW-icon-ingredient-Kresh_Fiber.png",
        "effects": ["Restore Luck", "Fortify Personality", "Drain Magicka", "Drain Speed"]
      },
      "Kwama Cuttle": {
        "id": "ingred_kwama_cuttle_01",
        "harvest_probability": 60,
        "name": "Kwama Cuttle",
        "text": "Found by killing Kwama (any type).",
        "icon": "http:\/\/images.uesp.net\/b\/b4\/MW-icon-ingredient-Kwama_Cuttle.png",
        "effects": ["Resist Poison", "Drain Fatigue", "Water Walking", "Water Breathing"]
      },
      "Large Kwama Egg": {
        "id": "food_kwama_egg_02",
        "harvest_probability": 60,
        "name": "Large Kwama Egg",
        "text": "Found in Egg Mines. Also common as food in houses.",
        "icon": "http:\/\/images.uesp.net\/7\/73\/MW-icon-ingredient-Kwama_Egg.png",
        "effects": ["Restore Fatigue", "Paralyze", "Frost Shield", "Fortify Health"]
      },
      "Luminous Russula": {
        "id": "ingred_russula_01",
        "harvest_probability": 90,
        "name": "Luminous Russula",
        "text": "Found in the Bitter Coast region, also common in caves",
        "icon": "http:\/\/images.uesp.net\/d\/d3\/MW-icon-ingredient-Luminous_Russula.png",
        "effects": ["Water Breathing", "Drain Fatigue", "Poison"]
      },
      "Marshmerrow": {
        "id": "ingred_marshmerrow_01",
        "harvest_probability": 90,
        "name": "Marshmerrow",
        "text": "Found growing near water, most common in the Azura's Coast region",
        "icon": "http:\/\/images.uesp.net\/f\/fe\/MW-icon-ingredient-Marshmerrow.png",
        "effects": ["Restore Health", "Detect Enchantment", "Drain Willpower", "Drain Fatigue"]
      },
      "Moon Sugar": {
        "id": "ingred_moon_sugar_01",
        "harvest_probability": null,
        "name": "Moon Sugar",
        "text":
            "Found in smuggler caves. Most vendors will not deal with you if you are carrying this illegal narcotic substance.",
        "icon": "http:\/\/images.uesp.net\/c\/c2\/MW-icon-ingredient-Moon_Sugar.png",
        "effects": ["Fortify Speed", "Dispel", "Drain Endurance", "Drain Luck"]
      },
      "Muck": {
        "id": "ingred_muck_01",
        "harvest_probability": 80,
        "name": "Muck",
        "text": "Found on Muck Sponges which grow near water in many regions",
        "icon": "http:\/\/images.uesp.net\/2\/23\/MW-icon-ingredient-Muck.png",
        "effects": ["Drain Intelligence", "Detect Key", "Drain Personality", "Cure Common Disease"]
      },
      "Netch Leather": {
        "id": "ingred_netch_leather_01",
        "harvest_probability": 60,
        "name": "Netch Leather",
        "text": "Found by killing Netch",
        "icon": "http:\/\/images.uesp.net\/6\/68\/MW-icon-ingredient-Netch_Leather.png",
        "effects": ["Fortify Endurance", "Fortify Intelligence", "Drain Personality", "Cure Paralyzation"]
      },
      "Pearl": {
        "id": "ingred_pearl_01",
        "harvest_probability": 50,
        "name": "Pearl",
        "text": "Found in kollops on the sea floor. Also found in barrels in Dwemer ruins.",
        "icon": "http:\/\/images.uesp.net\/c\/cd\/MW-icon-ingredient-Pearl.png",
        "effects": ["Drain Agility", "Dispel", "Water Breathing", "Resist Common Disease"]
      },
      "Racer Plumes": {
        "id": "ingred_racer_plumes_01",
        "harvest_probability": 60,
        "name": "Racer Plumes",
        "text": "Found by killing Cliff Racers",
        "icon": "http:\/\/images.uesp.net\/9\/97\/MW-icon-ingredient-Racer_Plumes.png",
        "effects": ["Drain Willpower", "Levitate"]
      },
      "Rat Meat": {
        "id": "ingred_rat_meat_01",
        "harvest_probability": 60,
        "name": "Rat Meat",
        "text": "Found by killing Rats",
        "icon": "http:\/\/images.uesp.net\/3\/38\/MW-icon-ingredient-Rat_Meat.png",
        "effects": ["Drain Magicka", "Paralyze", "Cure Poison", "Resist Poison"]
      },
      "Raw Ebony": {
        "id": "ingred_raw_ebony_01",
        "harvest_probability": 50,
        "name": "Raw Ebony",
        "text": "Found in Ebony Mines. Usually a crime to take it.",
        "icon": "http:\/\/images.uesp.net\/8\/86\/MW-icon-ingredient-Raw_Ebony.png",
        "effects": ["Drain Agility", "Cure Poison", "Frost Shield", "Restore Speed"]
      },
      "Raw Glass": {
        "id": "ingred_raw_glass_01",
        "harvest_probability": 60,
        "name": "Raw Glass",
        "text": "Found in Glass Mines. Usually a crime to take it.",
        "icon": "http:\/\/images.uesp.net\/b\/b6\/MW-icon-ingredient-Raw_Glass.png",
        "effects": ["Drain Intelligence", "Drain Strength", "Drain Speed", "Fire Shield"]
      },
      "Red Lichen": {
        "id": "ingred_red_lichen_01",
        "harvest_probability": 80,
        "name": "Red Lichen",
        "text": "Found growing on rocks, mostly in the Ashlands. Also for sale at vendors.",
        "icon": "http:\/\/images.uesp.net\/2\/22\/MW-icon-ingredient-Red_Lichen.png",
        "effects": ["Drain Speed", "Light", "Cure Common Disease", "Drain Magicka"]
      },
      "Resin": {
        "id": "ingred_resin_01",
        "harvest_probability": null,
        "name": "Resin",
        "text": "No reliable location. Occasionally for sale at vendors or found in random containers.",
        "icon": "http:\/\/images.uesp.net\/4\/4f\/MW-icon-ingredient-Resin.png",
        "effects": ["Restore Health", "Restore Speed", "Burden", "Resist Common Disease"]
      },
      "Roobrush": {
        "id": "ingred_roobrush_01",
        "harvest_probability": 90,
        "name": "Roobrush",
        "text": "Found growing in hilly regions",
        "icon": "http:\/\/images.uesp.net\/5\/54\/MW-icon-ingredient-Roobrush.png",
        "effects": ["Drain Willpower", "Fortify Agility", "Drain Health", "Cure Poison"]
      },
      "Ruby": {
        "id": "ingred_ruby_01",
        "harvest_probability": null,
        "name": "Ruby",
        "text": "Often found in barrels in Dwemer ruins",
        "icon": "http:\/\/images.uesp.net\/8\/81\/MW-icon-ingredient-Ruby.png",
        "effects": ["Drain Health", "Feather", "Restore Intelligence", "Drain Agility"]
      },
      "Saltrice": {
        "id": "ingred_saltrice_01",
        "harvest_probability": 90,
        "name": "Saltrice",
        "text":
            "Found growing near sea water, most common in the Azura's Coast region. Also a common food item in houses.",
        "icon": "http:\/\/images.uesp.net\/8\/8b\/MW-icon-ingredient-Saltrice.png",
        "effects": ["Restore Fatigue", "Fortify Magicka", "Drain Strength", "Restore Health"]
      },
      "Scales": {
        "id": "ingred_scales_01",
        "harvest_probability": 60,
        "name": "Scales",
        "text": "Found by killing Slaughterfish",
        "icon": "http:\/\/images.uesp.net\/f\/fa\/MW-icon-ingredient-Scales.png",
        "effects": ["Drain Personality", "Water Walking", "Restore Endurance", "Swift Swim"]
      },
      "Scamp Skin": {
        "id": "ingred_scamp_skin_01",
        "harvest_probability": 60,
        "name": "Scamp Skin",
        "text": "Found by killing Scamps",
        "icon": "http:\/\/images.uesp.net\/e\/eb\/MW-icon-ingredient-Scamp_Skin.png",
        "effects": ["Drain Magicka", "Cure Paralyzation", "Restore Personality", "Restore Strength"]
      },
      "Scathecraw": {
        "id": "ingred_scathecraw_01",
        "harvest_probability": 90,
        "name": "Scathecraw",
        "text": "Grows in dry, hilly regions",
        "icon": "http:\/\/images.uesp.net\/d\/db\/MW-icon-ingredient-Scathecraw.png",
        "effects": ["Drain Strength", "Cure Poison", "Drain Health", "Restore Willpower"]
      },
      "Scrap Metal": {
        "id": "ingred_scrap_metal_01",
        "harvest_probability": 60,
        "name": "Scrap Metal",
        "text": "Found by killing Dwemer constructs. Also common in barrels and on shelves in Dwemer ruins.",
        "icon": "http:\/\/images.uesp.net\/7\/73\/MW-icon-ingredient-Scrap_Metal.png",
        "effects": ["Drain Health", "Lightning Shield", "Resist Shock", "Restore Intelligence"]
      },
      "Scrib Jelly": {
        "id": "ingred_scrib_jelly_01",
        "harvest_probability": 60,
        "name": "Scrib Jelly",
        "text": "Found by killing Scribs",
        "icon": "http:\/\/images.uesp.net\/7\/75\/MW-icon-ingredient-Scrib_Jelly.png",
        "effects": ["Fortify Willpower", "Cure Poison", "Cure Blight Disease", "Restore Willpower"]
      },
      "Scrib Jerky": {
        "id": "ingred_scrib_jerky_01",
        "harvest_probability": null,
        "name": "Scrib Jerky",
        "text": "Found as a food item in houses.",
        "icon": "http:\/\/images.uesp.net\/4\/41\/MW-icon-ingredient-Scrib_Jerky.png",
        "effects": ["Restore Fatigue", "Fortify Fatigue", "Burden", "Swift Swim"]
      },
      "Scuttle": {
        "id": "ingred_scuttle_01",
        "harvest_probability": null,
        "name": "Scuttle",
        "text": "Found as a food item in houses.",
        "icon": "http:\/\/images.uesp.net\/8\/88\/MW-icon-ingredient-Scuttle.png",
        "effects": ["Restore Fatigue", "Fortify Fatigue", "Feather", "Telekinesis"]
      },
      "Sload Soap": {
        "id": "ingred_sload_soap_01",
        "harvest_probability": null,
        "name": "Sload Soap",
        "text": "Rare. Mostly found for sale at vendors or in random containers.",
        "icon": "http:\/\/images.uesp.net\/a\/aa\/MW-icon-ingredient-Sload_Soap.png",
        "effects": ["Drain Personality", "Fortify Agility", "Fire Shield", "Restore Agility"]
      },
      "Small Kwama Egg": {
        "id": "food_kwama_egg_01",
        "harvest_probability": 70,
        "name": "Small Kwama Egg",
        "text": "Found in Egg Mines. Also common food item in houses.",
        "icon": "http:\/\/images.uesp.net\/7\/73\/MW-icon-ingredient-Kwama_Egg.png",
        "effects": ["Restore Fatigue"]
      },
      "Spore Pod": {
        "id": "ingred_bc_spore_pod",
        "harvest_probability": 100,
        "name": "Spore Pod",
        "text": "Found on Slough Ferns growing in the Bitter Coast region",
        "icon": "http:\/\/images.uesp.net\/a\/a4\/MW-icon-ingredient-Spore_Pod.png",
        "effects": ["Drain Strength", "Drain Fatigue", "Detect Key", "Paralyze"]
      },
      "Stoneflower Petals": {
        "id": "ingred_stoneflower_petals_01",
        "harvest_probability": 90,
        "name": "Stoneflower Petals",
        "text": "These flowers are common in the West Gash and Ascadian Isles regions.",
        "icon": "http:\/\/images.uesp.net\/1\/17\/MW-icon-ingredient-Stoneflower_Petals.png",
        "effects": ["Restore Strength", "Fortify Magicka", "Drain Luck", "Fortify Personality"]
      },
      "Trama Root": {
        "id": "ingred_trama_root_01",
        "harvest_probability": 80,
        "name": "Trama Root",
        "text": "Found growing in dry, hilly regions",
        "icon": "http:\/\/images.uesp.net\/5\/53\/MW-icon-ingredient-Trama_Root.png",
        "effects": ["Restore Willpower", "Levitate", "Drain Magicka", "Drain Speed"]
      },
      "Vampire Dust": {
        "id": "ingred_vampire_dust_01",
        "harvest_probability": 100,
        "name": "Vampire Dust",
        "text": "Found by killing Vampires",
        "icon": "http:\/\/images.uesp.net\/8\/80\/MW-icon-ingredient-Vampire_Dust.png",
        "effects": ["Fortify Health", "Fortify Strength", "Spell Absorption", "Vampirism"]
      },
      "Violet Coprinus": {
        "id": "ingred_coprinus_01",
        "harvest_probability": 90,
        "name": "Violet Coprinus",
        "text": "These mushrooms grow throughout the Bitter Coast region, and are also common in caves.",
        "icon": "http:\/\/images.uesp.net\/8\/8e\/MW-icon-ingredient-Violet_Coprinus.png",
        "effects": ["Water Walking", "Drain Fatigue", "Poison"]
      },
      "Void Salts": {
        "id": "ingred_void_salts_01",
        "harvest_probability": 60,
        "name": "Void Salts",
        "text": "Found by killing Storm Atronachs or Winged Twilights",
        "icon": "http:\/\/images.uesp.net\/0\/00\/MW-icon-ingredient-Void_Salts.png",
        "effects": ["Restore Magicka", "Spell Absorption", "Paralyze", "Drain Endurance"]
      },
      "Wickwheat": {
        "id": "ingred_wickwheat_01",
        "harvest_probability": 90,
        "name": "Wickwheat",
        "text": "Found growing in the Grazelands region",
        "icon": "http:\/\/images.uesp.net\/f\/fc\/MW-icon-ingredient-Wickwheat.png",
        "effects": ["Restore Health", "Fortify Willpower", "Paralyze", "Damage Intelligence"]
      },
      "Willow Anther": {
        "id": "ingred_willow_anther_01",
        "harvest_probability": 85,
        "name": "Willow Anther",
        "text": "Most common in the Ascadian Isles region",
        "icon": "http:\/\/images.uesp.net\/c\/c9\/MW-icon-ingredient-Willow_Anther.png",
        "effects": ["Drain Personality", "Frost Shield", "Cure Common Disease", "Cure Paralyzation"]
      }
    },
    "effects": {
      "Drain Intelligence": {
        "name": "Drain Intelligence",
        "ingredients": [
          ["Alit Hide", "Gravedust", "Muck", "Raw Glass"],
          [],
          ["Coda Flower"],
          []
        ]
      },
      "Resist Poison": {
        "name": "Resist Poison",
        "ingredients": [
          ["Kwama Cuttle"],
          ["Alit Hide"],
          [],
          ["Rat Meat"]
        ]
      },
      "Telekinesis": {
        "name": "Telekinesis",
        "ingredients": [
          [],
          ["Bonemeal"],
          ["Alit Hide"],
          ["Scuttle"]
        ]
      },
      "Detect Animal": {
        "name": "Detect Animal",
        "ingredients": [
          [],
          ["Ectoplasm"],
          ["Ampoule Pod"],
          ["Alit Hide", "Bloat"]
        ]
      },
      "Water Walking": {
        "name": "Water Walking",
        "ingredients": [
          ["Ampoule Pod", "Violet Coprinus"],
          ["Scales"],
          ["Kwama Cuttle"],
          []
        ]
      },
      "Paralyze": {
        "name": "Paralyze",
        "ingredients": [
          ["Ghoul Heart"],
          ["Ampoule Pod", "Hackle-Lo Leaf", "Large Kwama Egg", "Rat Meat"],
          ["Daedra Skin", "Void Salts", "Wickwheat"],
          ["Fire Petal", "Spore Pod"]
        ]
      },
      "Drain Willpower": {
        "name": "Drain Willpower",
        "ingredients": [
          ["Racer Plumes", "Roobrush"],
          [],
          ["Corprus Weepings", "Marshmerrow"],
          ["Ampoule Pod", "Chokeweed", "Dreugh Wax"]
        ]
      },
      "Drain Agility": {
        "name": "Drain Agility",
        "ingredients": [
          ["Ash Salts", "Black Anther", "Diamond", "Pearl", "Raw Ebony"],
          ["Hypha Facia"],
          ["Daedra's Heart", "Emerald"],
          ["Ruby"]
        ]
      },
      "Resist Magicka": {
        "name": "Resist Magicka",
        "ingredients": [
          [],
          ["Ash Salts", "Ash Salts"],
          [],
          []
        ]
      },
      "Cure Blight Disease": {
        "name": "Cure Blight Disease",
        "ingredients": [
          [],
          [],
          ["Ash Salts", "Scrib Jelly"],
          []
        ]
      },
      "Fortify Intelligence": {
        "name": "Fortify Intelligence",
        "ingredients": [
          ["Ash Yam"],
          ["Bloat", "Netch Leather"],
          [],
          []
        ]
      },
      "Fortify Strength": {
        "name": "Fortify Strength",
        "ingredients": [
          ["Daedra Skin", "Dreugh Wax"],
          ["Ash Yam", "Vampire Dust"],
          [],
          []
        ]
      },
      "Resist Common Disease": {
        "name": "Resist Common Disease",
        "ingredients": [
          [],
          [],
          ["Ash Yam", "Kagouti Hide"],
          ["Pearl", "Resin"]
        ]
      },
      "Detect Key": {
        "name": "Detect Key",
        "ingredients": [
          [],
          ["Muck"],
          ["Spore Pod"],
          ["Ash Yam", "Diamond"]
        ]
      },
      "Restore Intelligence": {
        "name": "Restore Intelligence",
        "ingredients": [
          ["Bittergreen Petals"],
          [],
          ["Ruby"],
          ["Scrap Metal"]
        ]
      },
      "Invisibility": {
        "name": "Invisibility",
        "ingredients": [
          [],
          ["Bittergreen Petals", "Diamond"],
          [],
          []
        ]
      },
      "Drain Endurance": {
        "name": "Drain Endurance",
        "ingredients": [
          [],
          ["Bungler's Bane"],
          ["Bittergreen Petals", "Black Anther", "Moon Sugar"],
          ["Emerald", "Void Salts"]
        ]
      },
      "Drain Magicka": {
        "name": "Drain Magicka",
        "ingredients": [
          ["Bloat", "Rat Meat", "Scamp Skin"],
          [],
          ["Gravedust", "Kresh Fiber", "Trama Root"],
          ["Bittergreen Petals", "Red Lichen"]
        ]
      },
      "Resist Fire": {
        "name": "Resist Fire",
        "ingredients": [
          ["Fire Petal"],
          ["Black Anther"],
          [],
          ["Frost Salts"]
        ]
      },
      "Light": {
        "name": "Light",
        "ingredients": [
          [],
          ["Red Lichen"],
          [],
          ["Black Anther"]
        ]
      },
      "Drain Strength": {
        "name": "Drain Strength",
        "ingredients": [
          ["Black Lichen", "Scathecraw", "Spore Pod"],
          ["Raw Glass"],
          ["Ectoplasm", "Green Lichen", "Saltrice"],
          ["Bungler's Bane"]
        ]
      },
      "Resist Frost": {
        "name": "Resist Frost",
        "ingredients": [
          [],
          ["Black Lichen"],
          ["Fire Salts"],
          []
        ]
      },
      "Drain Speed": {
        "name": "Drain Speed",
        "ingredients": [
          ["Bungler's Bane", "Frost Salts", "Red Lichen"],
          [],
          ["Black Lichen", "Heather", "Raw Glass"],
          ["Kresh Fiber", "Trama Root"]
        ]
      },
      "Cure Poison": {
        "name": "Cure Poison",
        "ingredients": [
          [],
          ["Ghoul Heart", "Raw Ebony", "Scathecraw", "Scrib Jelly"],
          ["Rat Meat"],
          ["Black Lichen", "Roobrush"]
        ]
      },
      "Fortify Willpower": {
        "name": "Fortify Willpower",
        "ingredients": [
          ["Scrib Jelly"],
          ["Wickwheat"],
          ["Bloat"],
          []
        ]
      },
      "Restore Agility": {
        "name": "Restore Agility",
        "ingredients": [
          ["Bonemeal"],
          [],
          [],
          ["Sload Soap"]
        ]
      },
      "Drain Fatigue": {
        "name": "Drain Fatigue",
        "ingredients": [
          ["Comberry", "Corprus Weepings", "Guar Hide", "Kagouti Hide"],
          ["Kwama Cuttle", "Luminous Russula", "Spore Pod", "Violet Coprinus"],
          ["Bonemeal", "Hypha Facia"],
          ["Marshmerrow"]
        ]
      },
      "Drain Personality": {
        "name": "Drain Personality",
        "ingredients": [
          ["Coda Flower", "Scales", "Sload Soap", "Willow Anther"],
          [],
          ["Muck", "Netch Leather"],
          ["Bonemeal", "Heather"]
        ]
      },
      "Restore Fatigue": {
        "name": "Restore Fatigue",
        "ingredients": [
          [
            "Bread",
            "Crab Meat",
            "Hackle-Lo Leaf",
            "Hound Meat",
            "Large Kwama Egg",
            "Saltrice",
            "Scrib Jerky",
            "Scuttle",
            "Small Kwama Egg"
          ],
          ["Chokeweed"],
          [],
          []
        ]
      },
      "Dispel": {
        "name": "Dispel",
        "ingredients": [
          [],
          ["Moon Sugar", "Pearl"],
          ["Bungler's Bane"],
          []
        ]
      },
      "Drain Luck": {
        "name": "Drain Luck",
        "ingredients": [
          ["Chokeweed", "Hypha Facia"],
          [],
          ["Dreugh Wax", "Gold Kanet", "Stoneflower Petals"],
          ["Moon Sugar"]
        ]
      },
      "Cure Common Disease": {
        "name": "Cure Common Disease",
        "ingredients": [
          [],
          ["Daedra Skin", "Gravedust", "Green Lichen"],
          ["Chokeweed", "Red Lichen", "Willow Anther"],
          ["Muck"]
        ]
      },
      "Levitate": {
        "name": "Levitate",
        "ingredients": [
          [],
          ["Coda Flower", "Racer Plumes", "Trama Root"],
          [],
          []
        ]
      },
      "Drain Health": {
        "name": "Drain Health",
        "ingredients": [
          ["Fire Salts", "Gold Kanet", "Ruby", "Scrap Metal"],
          ["Fire Petal"],
          ["Roobrush", "Scathecraw"],
          ["Coda Flower", "Ectoplasm", "Green Lichen"]
        ]
      },
      "Restore Magicka": {
        "name": "Restore Magicka",
        "ingredients": [
          ["Daedra's Heart", "Void Salts"],
          ["Comberry", "Frost Salts"],
          [],
          []
        ]
      },
      "Fire Shield": {
        "name": "Fire Shield",
        "ingredients": [
          [],
          [],
          ["Comberry", "Sload Soap"],
          ["Fire Salts", "Raw Glass"]
        ]
      },
      "Reflect": {
        "name": "Reflect",
        "ingredients": [
          [],
          [],
          ["Diamond", "Hound Meat"],
          ["Comberry"]
        ]
      },
      "Cure Paralyzation": {
        "name": "Cure Paralyzation",
        "ingredients": [
          ["Corkbulb Root"],
          ["Scamp Skin"],
          [],
          ["Netch Leather", "Willow Anther"]
        ]
      },
      "Restore Health": {
        "name": "Restore Health",
        "ingredients": [
          ["Marshmerrow", "Resin", "Wickwheat"],
          ["Corkbulb Root", "Emerald"],
          [],
          ["Corprus Weepings", "Saltrice"]
        ]
      },
      "Lightning Shield": {
        "name": "Lightning Shield",
        "ingredients": [
          [],
          ["Scrap Metal"],
          ["Corkbulb Root", "Crab Meat"],
          []
        ]
      },
      "Fortify Luck": {
        "name": "Fortify Luck",
        "ingredients": [
          [],
          ["Corprus Weepings"],
          [],
          ["Corkbulb Root", "Guar Hide"]
        ]
      },
      "Resist Shock": {
        "name": "Resist Shock",
        "ingredients": [
          [],
          ["Crab Meat"],
          ["Scrap Metal"],
          []
        ]
      },
      "Restore Luck": {
        "name": "Restore Luck",
        "ingredients": [
          ["Kresh Fiber"],
          [],
          [],
          ["Crab Meat", "Hackle-Lo Leaf"]
        ]
      },
      "Swift Swim": {
        "name": "Swift Swim",
        "ingredients": [
          [],
          [],
          [],
          ["Daedra Skin", "Scales", "Scrib Jerky"]
        ]
      },
      "Fortify Endurance": {
        "name": "Fortify Endurance",
        "ingredients": [
          ["Netch Leather"],
          ["Daedra's Heart", "Guar Hide"],
          [],
          []
        ]
      },
      "Night Eye": {
        "name": "Night Eye",
        "ingredients": [
          [],
          [],
          [],
          ["Daedra's Heart", "Kagouti Hide"]
        ]
      },
      "Restore Strength": {
        "name": "Restore Strength",
        "ingredients": [
          ["Stoneflower Petals"],
          ["Dreugh Wax"],
          [],
          ["Gold Kanet", "Scamp Skin"]
        ]
      },
      "Fortify Agility": {
        "name": "Fortify Agility",
        "ingredients": [
          ["Ectoplasm"],
          ["Fire Salts", "Roobrush", "Sload Soap"],
          [],
          []
        ]
      },
      "Fortify Magicka": {
        "name": "Fortify Magicka",
        "ingredients": [
          ["Emerald"],
          ["Saltrice", "Stoneflower Petals"],
          [],
          []
        ]
      },
      "Spell Absorption": {
        "name": "Spell Absorption",
        "ingredients": [
          [],
          ["Void Salts"],
          ["Fire Petal", "Vampire Dust"],
          []
        ]
      },
      "Frost Shield": {
        "name": "Frost Shield",
        "ingredients": [
          [],
          ["Willow Anther"],
          ["Frost Salts", "Large Kwama Egg", "Raw Ebony"],
          []
        ]
      },
      "Fortify Attack": {
        "name": "Fortify Attack",
        "ingredients": [
          [],
          [],
          ["Ghoul Heart"],
          []
        ]
      },
      "Burden": {
        "name": "Burden",
        "ingredients": [
          [],
          ["Gold Kanet"],
          ["Resin", "Scrib Jerky"],
          []
        ]
      },
      "Restore Endurance": {
        "name": "Restore Endurance",
        "ingredients": [
          [],
          [],
          ["Scales"],
          ["Gravedust"]
        ]
      },
      "Fortify Personality": {
        "name": "Fortify Personality",
        "ingredients": [
          ["Green Lichen"],
          ["Kresh Fiber"],
          [],
          ["Stoneflower Petals"]
        ]
      },
      "Restore Personality": {
        "name": "Restore Personality",
        "ingredients": [
          ["Heather"],
          [],
          ["Guar Hide", "Scamp Skin"],
          []
        ]
      },
      "Water Breathing": {
        "name": "Water Breathing",
        "ingredients": [
          ["Luminous Russula"],
          [],
          ["Hackle-Lo Leaf", "Pearl"],
          ["Kwama Cuttle"]
        ]
      },
      "Feather": {
        "name": "Feather",
        "ingredients": [
          [],
          ["Heather", "Ruby"],
          ["Scuttle"],
          []
        ]
      },
      "Fortify Fatigue": {
        "name": "Fortify Fatigue",
        "ingredients": [
          [],
          ["Hound Meat", "Scrib Jerky", "Scuttle"],
          [],
          []
        ]
      },
      "Detect Enchantment": {
        "name": "Detect Enchantment",
        "ingredients": [
          [],
          ["Marshmerrow"],
          [],
          ["Hound Meat", "Hypha Facia"]
        ]
      },
      "Fortify Speed": {
        "name": "Fortify Speed",
        "ingredients": [
          ["Moon Sugar"],
          ["Kagouti Hide"],
          [],
          []
        ]
      },
      "Fortify Health": {
        "name": "Fortify Health",
        "ingredients": [
          ["Vampire Dust"],
          [],
          [],
          ["Large Kwama Egg"]
        ]
      },
      "Poison": {
        "name": "Poison",
        "ingredients": [
          [],
          [],
          ["Luminous Russula", "Violet Coprinus"],
          []
        ]
      },
      "Restore Speed": {
        "name": "Restore Speed",
        "ingredients": [
          [],
          ["Resin"],
          [],
          ["Raw Ebony"]
        ]
      },
      "Restore Willpower": {
        "name": "Restore Willpower",
        "ingredients": [
          ["Trama Root"],
          [],
          [],
          ["Scathecraw", "Scrib Jelly"]
        ]
      },
      "Vampirism": {
        "name": "Vampirism",
        "ingredients": [
          [],
          [],
          [],
          ["Vampire Dust"]
        ]
      },
      "Damage Intelligence": {
        "name": "Damage Intelligence",
        "ingredients": [
          [],
          [],
          [],
          ["Wickwheat"]
        ]
      }
    }
  };

  static void checkGameName(String gameName) {
    if (!gameNames.contains(gameName)) {
      throw Exception('Unknown game name');
    }
  }
}
