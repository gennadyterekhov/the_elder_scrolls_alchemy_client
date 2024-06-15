class SkyrimData {
  static const Map<String, dynamic> skyrimData = {
    "effects": {
      // AE
      "Night Eye": {
        "id": "FExxx803",
        "name": "Night Eye",
        "text": "Improved night vision",
        "magnitude": 1, // uesp does not list data for this
        "value": 1, // uesp does not list data for this
        "ingredients": [
          ["Watcher's Eye"],
          ["Kagouti Hide", "Worm's Head Cap"],
          ["Blister Pod Cap", "Daedra Silk"],
          []
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Night_Eye_(effect)",
      },
      "Spell Absorption": {
        "id": "FExxx812",
        "name": "Spell Absorption",
        "text": "Absorb magicka from hostile spells",
        "magnitude": 1, // uesp does not list data for this
        "value": 1, // uesp does not list data for this
        "ingredients": [
          [],
          ["Comberry", "Withering Moon"],
          ["Fire Petal"],
          ["Blind Watcher's Eye", "Daedra Venin", "Lichor", "Watcher's Eye"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Spell_Absorption"
      },
      "Light": {
        "id": "FExxx846",
        "name": "Light",
        "text": "Emits a small light that lasts for several seconds",
        "magnitude": 1, // uesp does not list data for this
        "value": 1, // uesp does not list data for this
        "ingredients": [
          ["Blind Watcher's Eye"],
          ["Alocasia Fruit", "Daedroth Teeth"],
          [],
          ["Hydnum Azure Giant Spore"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/4/4c/SR-icon-spell-Light.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Light"
      },
      "Cure Poison": {
        "id": "00109ADD",
        "name": "Cure Poison",
        "text": "Stops poison's continuing effects",
        "magnitude": 2,
        "value": 2,
        "ingredients": [
          [],
          ["Redwort Flower", "Scrib Jelly"],
          ["Bittergreen Petals", "Hunger Tongue"],
          ["Imp Gall", "Roobrush", "Ambrosia"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Cure_Poison"
      },
      //
      "Cure Disease": {
        "id": "000ae723",
        "name": "Cure Disease",
        "text": "Cures all diseases",
        "magnitude": 5,
        "value": 21,
        "ingredients": [
          ["Hawk Feathers"],
          ["Charred Skeever Hide", "Mudcrab Chitin"],
          ["Felsaad Tern Feathers"],
          ["Vampire Dust"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Cure_Disease"
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
            "River Betty",
            "Poison Bloom",
            "Emperor Parasol Moss"
          ],
          [],
          ["Skeever Tail", "Void Salts"],
          ["Ectoplasm", "Red Mountain Flower", "Small Antlers", "Troll Fat"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Damage_Health"
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
          ["Chaurus Eggs", "Daedra Heart", "Eye of Sabre Cat", "Trama Root"],
          ["Butterfly Wing"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Damage_Magicka"
      },
      "Damage Magicka Regen": {
        "id": "00073f2b",
        "name": "Damage Magicka Regen",
        "text": "Decrease target's Magicka regeneration by 100%",
        "magnitude": 5,
        "value": 265,
        "ingredients": [
          ["Spriggan Sap"],
          ["Chicken's Egg", "Glow Dust", "Nightshade", "Spider Egg", "Hawk's Egg"],
          [
            "Blue Butterfly Wing",
            "Hanging Moss",
            "Human Heart",
            "Chaurus Hunter Antennae",
            "Burnt Spriggan Wood",
            "Ancestor Moth Wing"
          ],
          ["Bear Claws", "Blue Mountain Flower"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Damage_Magicka_Regen"
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
            "Spider Egg",
            "Chaurus Hunter Antennae",
            "Ash Creep Cluster",
            "Ancestor Moth Wing"
          ],
          ["Crimson Nirnroot", "Nirnroot"],
          ["Rock Warbler Egg"],
          []
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Damage_Stamina"
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
          ["Frost Mirriam", "Giant's Toe", "Juniper Berries", "Large Antlers", "Yellow Mountain Flower"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Damage_Stamina_Regen"
      },
      "Fear": {
        "id": "00073f20",
        "name": "Fear",
        "text": "Creatures and people flee for 30 seconds",
        "magnitude": 1,
        "value": 120,
        "ingredients": [
          [],
          ["Gleamblossom"],
          ["Cyrodilic Spadetail", "Namira's Rot"],
          ["Blue Dartwing", "Daedra Heart", "Powdered Mammoth Tusk", "Poison Bloom", "Netch Jelly"]
        ],
        "type": "negative",
        "icon":
            "https://images.uesp.net/thumb/d/db/SR-icon-spell-Illusion_Dark.png/24px-SR-icon-spell-Illusion_Dark.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fear_(effect)"
      },
      "Fortify Alteration": {
        "id": "0003eb24",
        "name": "Fortify Alteration",
        "text": "Alteration spells last longer for 60 seconds",
        "magnitude": 4,
        "value": 47,
        "ingredients": [
          [],
          ["River Betty", "Burnt Spriggan Wood"],
          ["Grass Pod"],
          ["Spriggan Sap"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Alteration"
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
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Barter"
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
          ["Tundra Cotton", "Boar Tusk"],
          ["Slaughterfish Scales"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Block"
      },
      "Fortify Carry Weight": {
        "id": "0003eb01",
        "name": "Fortify Carry Weight",
        "text": "Carrying capacity increases for 300 seconds",
        "magnitude": 4,
        "value": 208,
        "ingredients": [
          [],
          ["Trama Root", "Netch Jelly"],
          ["Creep Cluster", "Giant's Toe", "Hawk Beak", "Wisp Wrappings", "Poison Bloom"],
          ["River Betty", "Scaly Pholiota"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Carry_Weight"
      },
      "Fortify Conjuration": {
        "id": "0003eb25",
        "name": "Fortify Conjuration",
        "text": "Conjuration spells last longer for 60 seconds",
        "magnitude": 5,
        "value": 75,
        "ingredients": [
          [],
          [
            "Blue Butterfly Wing",
            "Blue Mountain Flower",
            "Hagraven Feathers",
            "Chaurus Hunter Antennae",
            "Ancestor Moth Wing"
          ],
          ["Bone Meal"],
          ["Frost Salts", "Lavender"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Conjuration"
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
          ["Beehive Husk", "Nightshade", "Ash Creep Cluster"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Destruction"
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
          ["Hagraven Claw", "Spawn Ash"],
          ["Blue Butterfly Wing", "Chaurus Hunter Antennae", "Ancestor Moth Wing"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Enchanting"
      },
      "Fortify Health": {
        "id": "0003eaf3",
        "name": "Fortify Health",
        "text": "Health is increased for 60(300) seconds",
        "magnitude": 4,
        "value": 82,
        "ingredients": [
          [],
          ["Bear Claws", "Giant's Toe", "Hanging Moss", "Wheat", "Boar Tusk"],
          ["Blue Mountain Flower", "Yellow Mountain Flower"],
          ["Glowing Mushroom"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Health"
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
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Heavy_Armor"
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
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Illusion"
      },
      "Fortify Light Armor": {
        "id": "0003eb1f",
        "name": "Fortify Light Armor",
        "text": "Increases Light Armor skill for 60 seconds",
        "magnitude": 2,
        "value": 55,
        "ingredients": [
          [],
          ["Beehive Husk", "Hawk Feathers", "Luna Moth Wing", "Felsaad Tern Feathers", "Ash Hopper Jelly"],
          ["Honeycomb"],
          ["Skeever Tail"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Light_Armor"
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
          ["Spider Egg", "Ashen Grass Pod"],
          ["Falmer Ear"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Lockpicking"
      },
      "Fortify Magicka": {
        "id": "0003eaf8",
        "name": "Fortify Magicka",
        "text": "Magicka is increased for 60 seconds",
        "magnitude": 4,
        "value": 71,
        "ingredients": [
          [],
          ["Histcarp", "Jazbay Grapes", "Tundra Cotton", "Emperor Parasol Moss"],
          ["Ectoplasm", "Red Mountain Flower", "Salmon Roe"],
          ["Briar Heart", "Void Salts"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Magicka"
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
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Marksman"
      },
      "Fortify One Handed": {
        "id": "0003eb19",
        "name": "Fortify One Handed",
        "text": "One-handed weapons do more damage for 60 seconds",
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_One-handed",
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
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Pickpocket"
      },
      "Fortify Restoration": {
        "id": "0003eb28",
        "name": "Fortify Restoration",
        "text": "Restoration spells are stronger for 60 seconds",
        "magnitude": 4,
        "value": 118,
        "ingredients": [
          [],
          ["Cyrodilic Spadetail", "Salt Pile", "Small Antlers", "Yellow Mountain Flower"],
          ["Small Pearl"],
          ["Abecean Longfin"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Restoration"
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
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Smithing"
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
          ["Hawk Feathers", "Human Flesh", "Ashen Grass Pod"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Sneak"
      },
      "Fortify Stamina": {
        "id": "0003eaf9",
        "name": "Fortify Stamina",
        "text": "Stamina is increased for 60 seconds",
        "magnitude": 4,
        "value": 71,
        "ingredients": [
          ["Boar Tusk"],
          ["Chaurus Eggs", "Garlic", "Large Antlers", "Lavender"],
          [],
          ["Slaughterfish Egg", "Torchbug Thorax"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Stamina"
      },
      "Fortify Two Handed": {
        "id": "0003eb1a",
        "name": "Fortify Two Handed",
        "text": "Two-handed weapons do more damage for 60 seconds",
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fortify_Two-handed",
        "magnitude": 4,
        "value": 118,
        "ingredients": [
          [],
          ["Fly Amanita", "Troll Fat"],
          [],
          ["Dragon's Tongue", "Emperor Parasol Moss"]
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
          ["Human Heart", "Boar Tusk"]
        ],
        "type": "negative",
        "icon":
            "https://images.uesp.net/thumb/d/db/SR-icon-spell-Illusion_Dark.png/24px-SR-icon-spell-Illusion_Dark.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Frenzy_(effect)"
      },
      "Invisibility": {
        "id": "0003eb3d",
        "name": "Invisibility",
        "text": "Invisibility",
        "magnitude": 4,
        "value": 261,
        "ingredients": [
          ["Vampire Dust"],
          ["Ash Creep Cluster"],
          ["Crimson Nirnroot", "Ice Wraith Teeth", "Nirnroot"],
          ["Chaurus Eggs", "Luna Moth Wing"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/2/22/SR-icon-spell-Invisibility.png/24px-SR-icon-spell-Invisibility.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Invisibility_(effect)"
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
          ["Orange Dartwing", "Scathecraw"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Lingering_Damage_Health"
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
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Lingering_Damage_Magicka"
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
          ["Chicken's Egg", "Hawk's Egg"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Lingering_Damage_Stamina"
      },
      "Paralysis": {
        "id": "00073f30",
        "name": "Paralysis",
        "text": "Target is paralyzed",
        "magnitude": 1,
        "value": 285,
        "ingredients": [
          ["Netch Jelly"],
          ["Human Flesh"],
          ["Briar Heart", "Imp Stool", "Swamp Fungal Pod"],
          ["Canis Root", "Gleamblossom"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/6/66/SR-icon-spell-Paralyze.png/24px-SR-icon-spell-Paralyze.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Paralysis"
      },
      "Ravage Health": {
        "id": "00073f26",
        "name": "Ravage Health",
        "text": "Causes concentrated poison damage",
        "magnitude": 2,
        "value": 6,
        "ingredients": [
          ["Scathecraw"],
          ["Eye of Sabre Cat", "Giant Lichen", "Skeever Tail"],
          ["Silverside Perch"],
          ["Cyrodilic Spadetail", "Jazbay Grapes"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Ravage_Health"
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
          ["Frost Mirriam", "Lavender", "Scathecraw"],
          ["White Cap", "Spawn Ash"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Ravage_Magicka"
      },
      "Ravage Stamina": {
        "id": "00073f23",
        "name": "Ravage Stamina",
        "text": "Concentrated poison damages Stamina",
        "magnitude": 2,
        "value": 24,
        "ingredients": [
          ["Spawn Ash"],
          ["Bee", "Deathbell", "Thistle Branch", "Scathecraw"],
          [],
          ["Bone Meal", "Honeycomb"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Ravage_Stamina"
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
          [
            "Juniper Berries",
            "Luna Moth Wing",
            "Nordic Barnacle",
            "Vampire Dust",
            "Gleamblossom",
            "Emperor Parasol Moss"
          ],
          ["Garlic", "Namira's Rot"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Regenerate_Health"
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
          ["Fire Salts", "Moon Sugar", "Salt Pile", "Salmon Roe"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Regenerate_Magicka"
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
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Regenerate_Stamina"
      },
      "Resist Fire": {
        "id": "0003eaea",
        "name": "Resist Fire",
        "text": "Resist fire damage for 60 seconds",
        "magnitude": 3,
        "value": 86,
        "ingredients": [
          ["Dragon's Tongue", "Fly Amanita", "Snowberries", "Ashen Grass Pod"],
          ["Bone Meal", "Fire Salts", "Spawn Ash"],
          ["Ash Creep Cluster"],
          ["Elves Ear", "Mudcrab Chitin"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/e/ec/SR-icon-spell-Fire.png/24px-SR-icon-spell-Fire.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Resist_Fire"
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
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/0/06/SR-icon-spell-Ice.png/24px-SR-icon-spell-Ice.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Resist_Frost"
      },
      "Resist Magic": {
        "id": "00039e51",
        "name": "Resist Magic",
        "text": "Resist magic for 60 seconds",
        "magnitude": 1,
        "value": 51,
        "ingredients": [
          ["Chicken's Egg", "Hagraven Claw", "Lavender", "Tundra Cotton", "Hawk's Egg", "Gleamblossom"],
          ["Void Salts"],
          [],
          ["Bleeding Crown", "Crimson Nirnroot", "Nirnroot", "Wisp Wrappings", "Felsaad Tern Feathers"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Resist_Magic"
      },
      "Resist Poison": {
        "id": "00090041",
        "name": "Resist Poison",
        "text": "Resist poison for 60 seconds",
        "magnitude": 4,
        "value": 118,
        "ingredients": [
          ["Beehive Husk", "Garlic", "Grass Pod", "Slaughterfish Egg", "Troll Fat", "Yellow Mountain Flower"],
          [],
          ["Charred Skeever Hide", "Falmer Ear", "Mudcrab Chitin", "Thistle Branch"],
          []
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Resist_Poison"
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
          ["Ash Hopper Jelly"],
          ["Glow Dust", "Hawk Beak", "Pearl", "Pine Thrush Egg", "Snowberries"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/d/d6/SR-icon-spell-Shock.png/24px-SR-icon-spell-Shock.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Resist_Shock"
      },
      "Restore Health": {
        "id": "0003eb15",
        "name": "Restore Health",
        "text": "Restore Health",
        "magnitude": 5,
        "value": 21,
        "ingredients": [
          [
            "Blue Mountain Flower",
            "Butterfly Wing",
            "Daedra Heart",
            "Rock Warbler Egg",
            "Wheat",
            "Felsaad Tern Feathers",
            "Ash Hopper Jelly"
          ],
          [],
          ["Blisterwort", "Blue Dartwing"],
          ["Charred Skeever Hide", "Eye of Sabre Cat", "Imp Stool", "Swamp Fungal Pod"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/8/8d/SR-icon-spell-Heal.png/24px-SR-icon-spell-Heal.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Restore_Health"
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
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/8/8d/SR-icon-spell-Heal.png/24px-SR-icon-spell-Heal.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Restore_Magicka"
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
            "Wisp Wrappings",
            "Salmon Roe"
          ],
          [],
          ["Netch Jelly"],
          []
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/8/8d/SR-icon-spell-Heal.png/24px-SR-icon-spell-Heal.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Restore_Stamina"
      },
      "Slow": {
        "id": "00073f25",
        "name": "Slow",
        "text": "Target moves at 50% speed",
        "magnitude": 5,
        "value": 247,
        "ingredients": [
          [],
          ["Poison Bloom"],
          ["Deathbell", "Large Antlers", "River Betty", "Salt Pile"],
          ["Trama Root", "Burnt Spriggan Wood"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/0/06/SR-icon-spell-Ice.png/24px-SR-icon-spell-Ice.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Slow"
      },
      "Waterbreathing": {
        "id": "0003ac2d",
        "name": "Waterbreathing",
        "text": "Can breath underwater",
        "magnitude": 5,
        "value": 100,
        "ingredients": [
          [],
          ["Nordic Barnacle", "Salmon Roe"],
          ["Chicken's Egg", "Hawk's Egg"],
          ["Histcarp"]
        ],
        "type": "positive",
        "icon": "https://images.uesp.net/thumb/1/13/SR-icon-spell-Alteration.png/24px-SR-icon-spell-Alteration.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Waterbreathing_(effect)"
      },
      "Weakness to Fire": {
        "id": "00073f2d",
        "name": "Weakness to Fire",
        "text": "Target is weaker to fire damage for 30 seconds",
        "magnitude": 3,
        "value": 48,
        "ingredients": [
          ["Bleeding Crown", "Frost Salts", "Juniper Berries", "Moon Sugar", "Burnt Spriggan Wood"],
          [],
          ["Powdered Mammoth Tusk"],
          ["Ice Wraith Teeth"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/e/ec/SR-icon-spell-Fire.png/24px-SR-icon-spell-Fire.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Weakness_to_Fire"
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
          ["Ash Hopper Jelly"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/0/06/SR-icon-spell-Ice.png/24px-SR-icon-spell-Ice.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Weakness_to_Frost"
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
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Weakness_to_Magic"
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
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/a/ab/SR-icon-spell-Magic_Hat.png/24px-SR-icon-spell-Magic_Hat.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Weakness_to_Poison"
      },
      "Weakness to Shock": {
        "id": "00073f2f",
        "name": "Weakness to Shock",
        "text": "Target is weaker to shock damage for 30 seconds",
        "magnitude": 3,
        "value": 56,
        "ingredients": [
          ["Giant Lichen", "Void Salts", "Trama Root"],
          ["Ashen Grass Pod"],
          [],
          ["Bee", "Hagraven Feathers"]
        ],
        "type": "negative",
        "icon": "https://images.uesp.net/thumb/d/d6/SR-icon-spell-Shock.png/24px-SR-icon-spell-Shock.png",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Weakness_to_Shock"
      }
    },
    "ingredients": {
      // <AE>
      "Alocasia Fruit": {
        "weight": 0.25,
        "id": "FExxxD62",
        "name": "Alocasia Fruit",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Alocasia_Fruit",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Regenerate Stamina", "Light", "Ravage Magicka", "Regenerate Health"],
        "value": 22,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          null,
          {"magnitude": 1.5, "value": 1.56},
          {"magnitude": 1.2, "value": 1.22}
        ]
      },
      "Ambrosia": {
        "weight": 0.1,
        "id": "FExxx836",
        "name": "Ambrosia",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Ambrosia",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Health", "Regenerate Health", "Fortify Health", "Cure Poison"],
        "value": 15,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.25, "value": 1.27},
          {"value": 1.56}
        ]
      },
      "Aster Bloom Core": {
        "weight": 0.1,
        "id": "FExxxD66",
        "name": "Aster Bloom Core",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Aster_Bloom_Core",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Resist Magic", "Fortify Light Armor", "Fortify Block", "Paralysis"],
        "value": 40,
        "multipliers": [
          {"magnitude": 2.0, "value": 2.14},
          {"magnitude": 2.0, "value": 2.14},
          {"magnitude": 1.25, "value": 1.27},
          {"duration": 2.0, "value": 2.14}
        ]
      },
      "Bittergreen Petals": {
        "weight": 0.1,
        "id": "FExxxD68",
        "name": "Bittergreen Petals",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Bittergreen_Petals",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Lingering Damage Stamina", "Invisibility", "Cure Poison", "Damage Magicka"],
        "value": 25,
        "multipliers": [
          {"magnitude": 2.0, "value": 2.14},
          {"duration": 1.5, "value": 1.56},
          null,
          {"magnitude": 1.5, "value": 1.56}
        ]
      },
      "Blind Watcher's Eye": {
        "weight": 0.2,
        "id": "FExxx822",
        "name": "Blind Watcher's Eye",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Blind_Watcher's_Eye",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Light", "Fortify Magicka", "Fortify Alteration", "Spell Absorption"],
        "value": 9,
        "multipliers": [
          null,
          {"magnitude": 1.25, "value": 1.27},
          {"magnitude": 1.25, "value": 1.27},
          null
        ]
      },
      "Blister Pod Cap": {
        "weight": 0.1,
        "id": "FExxxD6A",
        "name": "Blister Pod Cap",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Blister_Pod_Cap",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Magicka", "Fortify Magicka", "Night Eye", "Invisibility"],
        "value": 25,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.25, "value": 1.27},
          null,
          {"duration": 1.5, "value": 1.56}
        ]
      },
      "Bog Beacon": {
        "weight": 0.1,
        "id": "FExxxD6C",
        "name": "Bog Beacon",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Bog_Beacon",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Magicka", "Fortify Heavy Armor", "Fear", "Damage Stamina"],
        "value": 20,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.5, "value": 1.56},
          {"magnitude": 2.0, "value": 2.14},
          {"magnitude": 1.33, "value": 1.36}
        ]
      },
      "Bungler's Bane": {
        "weight": 0.5,
        "id": "FExxx802",
        "name": "Bungler's Bane",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Bungler's_Bane",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Slow", "Ravage Stamina", "Damage Stamina Regen", "Resist Magic"],
        "value": 50,
        "multipliers": [
          {"duration": 2.0, "value": 2.14},
          {"magnitude": 1.5, "value": 3.34},
          {"duration": 2.0, "value": 2.14},
          {"magnitude": 2.0, "value": 2.14}
        ]
      },
      "Chokeberry": {
        "weight": 0.1,
        "id": "FExxx838",
        "name": "Chokeberry",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Chokeberry",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Damage Health", "Ravage Health", "Lingering Damage Health", "Weakness to Poison"],
        "value": 15,
        "multipliers": [
          {"magnitude": 1.5, "value": 1.56},
          {"magnitude": 1.5, "value": 3.34},
          {"magnitude": 2.0, "value": 2.14},
          {"magnitude": 1.5, "value": 1.56}
        ]
      },
      "Chokeweed": {
        "weight": 0.1,
        "id": "FExxx804",
        "name": "Chokeweed",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Chokeweed",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Weakness to Frost", "Restore Stamina", "Cure Disease", "Damage Magicka"],
        "value": 7,
        "multipliers": [
          {"magnitude": 1.33, "value": 1.37},
          {"magnitude": 1.2, "value": 1.22},
          {"value": 0.36},
          {"magnitude": 1.33, "value": 1.37}
        ]
      },
      "Coda Flower": {
        "weight": 0.1,
        "id": "FExxx805",
        "name": "Coda Flower",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Coda_Flower",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Damage Health", "Lingering Damage Stamina", "Ravage Magicka", "Fortify Carry Weight"],
        "value": 30,
        "multipliers": [
          {"magnitude": 1.5, "value": 1.56},
          {"magnitude": 2.0, "value": 2.14},
          {"magnitude": 1.5, "value": 1.56},
          {"magnitude": 1.25, "value": 1.27}
        ]
      },
      "Comberry": {
        "weight": 0.1,
        "id": "FExxx806",
        "name": "Comberry",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Comberry",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Damage Stamina", "Spell Absorption", "Restore Magicka", "Fortify Destruction"],
        "value": 12,
        "multipliers": [
          {"magnitude": 1.33, "value": 1.36},
          null,
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.2, "value": 1.22}
        ]
      },
      "Congealed Putrescence": {
        "weight": 0.1,
        "id": "FExxx807",
        "name": "Congealed Putrescence",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Congealed_Putrescence",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Ravage Health", "Restore Magicka", "Weakness to Fire", "Fortify Conjuration"],
        "value": 9,
        "multipliers": [
          {"magnitude": 1.5, "value": 3.34},
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.33, "value": 1.36},
          {"magnitude": 1.2, "value": 1.22}
        ]
      },
      "Corkbulb Root": {
        "weight": 0.1,
        "id": "FExxx809",
        "name": "Corkbulb Root",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Corkbulb_Root",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Paralysis", "Restore Health", "Resist Shock", "Fortify Marksman"],
        "value": 30,
        "multipliers": [
          {"duration": 2.0, "value": 2.14},
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.33, "value": 1.36},
          {"magnitude": 1.25, "value": 1.27}
        ]
      },
      "Daedra Silk": {
        "weight": 0.5,
        "id": "FExxx80A",
        "name": "Daedra Silk",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Daedra_Silk",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Lingering Damage Stamina", "Paralysis", "Night Eye", "Invisibility"],
        "value": 50,
        "multipliers": [
          {"magnitude": 2.0, "value": 2.14},
          {"duration": 2.0, "value": 2.14},
          null,
          {"duration": 1.5, "value": 1.56}
        ]
      },
      "Daedra Venin": {
        "weight": 0.2,
        "id": "FExxx80B",
        "name": "Daedra Venin",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Daedra_Venin",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Ravage Health", "Paralysis", "Fortify Destruction", "Spell Absorption"],
        "value": 50,
        "multipliers": [
          {"magnitude": 1.5, "value": 3.34},
          {"duration": 2.0, "value": 2.14},
          {"magnitude": 1.2, "value": 1.22},
          null
        ]
      },
      "Daedroth Teeth": {
        "weight": 0.5,
        "id": "FExxx826",
        "name": "Daedroth Teeth",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Daedroth_Teeth",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Resist Frost", "Light", "Damage Magicka Regen", "Regenerate Stamina"],
        "value": 50,
        "multipliers": [
          {"magnitude": 1.33, "value": 1.36},
          null,
          {"duration": 2.0, "value": 2.14},
          {"magnitude": 1.2, "value": 1.22}
        ]
      },
      "Dreugh Wax": {
        "weight": 1.0,
        "id": "FExxx827",
        "name": "Dreugh Wax",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Dreugh_Wax",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Weakness to Magic", "Frenzy", "Fortify Enchanting", "Fortify Smithing"],
        "value": 25,
        "multipliers": [
          {"magnitude": 1.5, "value": 1.56},
          {"duration": 2.0, "value": 2.14},
          {"magnitude": 2.0, "value": 2.14},
          {"magnitude": 1.25, "value": 1.27}
        ]
      },
      "Elytra Ichor": {
        "weight": 0.1,
        "id": "FExxx828",
        "name": "Elytra Ichor",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Elytra_Ichor",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Magicka", "Invisibility", "Slow", "Fear"],
        "value": 30,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"duration": 1.5, "value": 1.56},
          {"duration": 2.0, "value": 2.14},
          {"magnitude": 2.0, "value": 2.14}
        ]
      },
      "Fire Petal": {
        "weight": 0.1,
        "id": "FExxx829",
        "name": "Fire Petal",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fire_Petal",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Damage Health", "Resist Fire", "Spell Absorption", "Paralysis"],
        "value": 30,
        "multipliers": [
          {"magnitude": 1.5, "value": 1.56},
          {"magnitude": 1.33, "value": 1.36},
          null,
          {"duration": 2.0, "value": 2.14}
        ]
      },
      "Flame Stalk": {
        "weight": 0.1,
        "id": "FExxx82A",
        "name": "Flame Stalk",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Flame_Stalk",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Health", "Resist Frost", "Weakness to Fire", "Invisibility"],
        "value": 25,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.33, "value": 1.36},
          {"magnitude": 1.33, "value": 1.36},
          {"duration": 1.5, "value": 1.56}
        ]
      },
      "Fungus Stalk": {
        "weight": 0.1,
        "id": "FExxx82B",
        "name": "Fungus Stalk",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fungus_Stalk",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Magicka", "Fortify Health", "Fortify Stamina", "Waterbreathing"],
        "value": 30,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.25, "duration": 5.0, "value": 7.5},
          {"magnitude": 1.25, "duration": 5.0, "value": 7.5},
          {"duration": 1.6, "value": 1.67}
        ]
      },
      "Gnarl Bark": {
        "weight": 0.1,
        "id": "FExxx82C",
        "name": "Gnarl Bark",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Gnarl_Bark",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Damage Health", "Regenerate Health", "Fortify Heavy Armor", "Resist Fire"],
        "value": 15,
        "multipliers": [
          {"magnitude": 1.5, "value": 1.56},
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.5, "value": 1.56},
          {"magnitude": 1.33, "value": 1.36}
        ]
      },
      "Gold Kanet": {
        "weight": 0.1,
        "id": "FExxx82D",
        "name": "Gold Kanet",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Gold_Kanet",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Paralysis", "Ravage Health", "Weakness to Frost", "Fortify Smithing"],
        "value": 30,
        "multipliers": [
          {"duration": 2.0, "value": 2.14},
          {"magnitude": 1.5, "value": 3.34},
          {"magnitude": 1.33, "value": 1.36},
          {"magnitude": 1.25, "value": 1.27}
        ]
      },
      "Hackle-Lo Leaf": {
        "weight": 0.1,
        "id": "FExxx82E",
        "name": "Hackle-Lo Leaf",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Hackle-Lo_Leaf",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Stamina", "Paralysis", "Waterbreathing", "Fortify Restoration"],
        "value": 30,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"duration": 2.0, "value": 2.14},
          {"duration": 1.6, "value": 1.67},
          {"magnitude": 1.25, "value": 1.27}
        ]
      },
      "Heart of Order": {
        "weight": 0.1,
        "id": "FExxx851",
        "name": "Heart of Order",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Heart_of_Order",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Health", "Fortify Health", "Fortify One-handed", "Fortify Two-handed"],
        "value": 40,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.25, "duration": 5.0, "value": 7.5},
          {"magnitude": 1.25, "value": 1.27},
          {"magnitude": 1.25, "value": 1.27}
        ]
      },
      "Hunger Tongue": {
        "weight": 0.1,
        "id": "FExxx80C",
        "name": "Hunger Tongue",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Hunger_Tongue",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Weakness to Fire", "Cure Disease", "Cure Poison", "Fortify Magicka"],
        "value": 10,
        "multipliers": [
          {"magnitude": 1.33, "duration": 2.0, "value": 2.93},
          {"value": 0.36},
          null,
          {"magnitude": 1.25, "value": 1.27}
        ]
      },
      "Hydnum Azure Giant Spore": {
        "weight": 0.5,
        "id": "FExxx80D",
        "name": "Hydnum Azure Giant Spore",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Hydnum_Azure_Giant_Spore",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Resist Frost", "Fortify Health", "Regenerate Health", "Light"],
        "value": 30,
        "multipliers": [
          {"magnitude": 1.33, "value": 1.36},
          {"magnitude": 1.25, "duration": 5.0, "value": 7.5},
          {"magnitude": 1.2, "value": 1.22},
          null
        ]
      },
      "Hypha Facia": {
        "weight": 0.1,
        "id": "FExxx80E",
        "name": "Hypha Facia",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Hypha_Facia",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Weakness to Poison", "Frenzy", "Ravage Stamina", "Resist Magic"],
        "value": 23,
        "multipliers": [
          {"magnitude": 1.5, "value": 1.56},
          {"duration": 2.0, "value": 2.14},
          {"magnitude": 1.5, "value": 3.34},
          {"magnitude": 2.0, "value": 2.14}
        ]
      },
      "Imp Gall": {
        "weight": 0.2,
        "id": "FExxx80F",
        "name": "Imp Gall",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Imp_Gall",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Damage Health", "Weakness to Fire", "Fortify Barter", "Cure Poison"],
        "value": 15,
        "multipliers": [
          {"magnitude": 1.5, "value": 1.56},
          {"magnitude": 1.33, "value": 1.36},
          {"magnitude": 2.0, "value": 2.14},
          null
        ]
      },
      "Kagouti Hide": {
        "weight": 1.0,
        "id": "FExxx810",
        "name": "Kagouti Hide",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Kagouti_Hide",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Lingering Damage Stamina", "Night Eye", "Fortify Carry Weight", "Resist Shock"],
        "value": 20,
        "multipliers": [
          {"magnitude": 2.0, "value": 2.14},
          null,
          {"magnitude": 1.25, "value": 1.27},
          {"magnitude": 1.33, "value": 1.36}
        ]
      },
      "Kresh Fiber": {
        "weight": 0.1,
        "id": "FExxx811",
        "name": "Kresh Fiber",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Kresh_Fiber",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Weakness to Magic", "Slow", "Fortify Sneak", "Fortify Pickpocket"],
        "value": 30,
        "multipliers": [
          {"magnitude": 1.5, "value": 1.56},
          {"duration": 2.0, "value": 2.14},
          {"magnitude": 1.25, "value": 1.27},
          {"magnitude": 1.25, "value": 1.27}
        ]
      },
      "Lichor": {
        "weight": 0.1,
        "id": "FExxx837",
        "name": "Lichor",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Lichor",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Magicka", "Regenerate Magicka", "Fortify Magicka", "Spell Absorption"],
        "value": 15,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.25, "value": 1.27},
          null
        ]
      },
      "Luminous Russula": {
        "weight": 0.2,
        "id": "FExxx813",
        "name": "Luminous Russula",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Luminous_Russula",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Lingering Damage Stamina", "Lingering Damage Health", "Waterbreathing", "Fear"],
        "value": 25,
        "multipliers": [
          {"magnitude": 2.0, "value": 2.14},
          {"magnitude": 2.0, "value": 2.14},
          {"duration": 1.6, "value": 1.67},
          {"magnitude": 2.0, "value": 2.14}
        ]
      },
      "Marshmerrow": {
        "weight": 0.1,
        "id": "FExxx814",
        "name": "Marshmerrow",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Marshmerrow",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Health", "Fortify Carry Weight", "Weakness to Magic", "Damage Stamina"],
        "value": 18,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.25, "value": 1.27},
          {"magnitude": 1.5, "value": 1.56},
          {"magnitude": 1.33, "value": 1.36}
        ]
      },
      "Minotaur Horn": {
        "weight": 5.0,
        "id": "FExxx815",
        "name": "Minotaur Horn",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Minotaur_Horn",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Resist Poison", "Damage Magicka Regen", "Regenerate Health", "Regenerate Magicka"],
        "value": 55,
        "multipliers": [
          {"magnitude": 1.25, "value": 1.27},
          {"duration": 2.0, "value": 2.14},
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.2, "value": 1.22}
        ]
      },
      "Ogre's Teeth": {
        "weight": 3.0,
        "id": "FExxx816",
        "name": "Ogre's Teeth",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Ogre's_Teeth",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Weakness to Shock", "Resist Poison", "Lingering Damage Magicka", "Regenerate Health"],
        "value": 50,
        "multipliers": [
          {"magnitude": 1.33, "value": 1.36},
          {"magnitude": 1.25, "value": 1.27},
          {"magnitude": 2.0, "value": 2.12},
          {"magnitude": 1.2, "value": 1.22}
        ]
      },
      "Red Kelp Gas Bladder": {
        "weight": 0.1,
        "id": "FExxx817",
        "name": "Red Kelp Gas Bladder",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Red_Kelp_Gas_Bladder",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Regenerate Stamina", "Waterbreathing", "Cure Disease", "Fortify Magicka"],
        "value": 20,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"duration": 1.6, "value": 1.67},
          {"value": 0.36},
          {"magnitude": 1.25, "value": 1.27}
        ]
      },
      "Redwort Flower": {
        "weight": 0.1,
        "id": "FExxx818",
        "name": "Redwort Flower",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Redwort_Flower",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Resist Frost", "Cure Poison", "Damage Health", "Invisibility"],
        "value": 25,
        "multipliers": [
          {"magnitude": 1.33, "value": 1.36},
          null,
          {"magnitude": 1.5, "value": 1.56},
          {"duration": 1.5, "value": 1.56}
        ]
      },
      "Roobrush": {
        "weight": 0.1,
        "id": "FExxx819",
        "name": "Roobrush",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Roobrush",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Weakness to Magic", "Fortify Sneak", "Lingering Damage Health", "Cure Poison"],
        "value": 20,
        "multipliers": [
          {"magnitude": 1.5, "value": 1.56},
          {"magnitude": 1.25, "value": 1.27},
          {"magnitude": 2.0, "value": 2.14},
          null
        ]
      },
      "Saltrice": {
        "weight": 0.1,
        "id": "FExxx81A",
        "name": "Saltrice",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Saltrice",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Stamina", "Fortify Magicka", "Damage Stamina Regen", "Restore Health"],
        "value": 6,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.25, "value": 1.27},
          {"duration": 2.0, "value": 2.14},
          {"magnitude": 1.2, "value": 1.22}
        ]
      },
      "Scalon Fin": {
        "weight": 0.1,
        "id": "FExxx81B",
        "name": "Scalon Fin",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Scalon_Fin",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Waterbreathing", "Damage Health", "Lingering Damage Magicka", "Damage Magicka Regen"],
        "value": 25,
        "multipliers": [
          {"duration": 1.6, "value": 1.67},
          {"magnitude": 1.5, "value": 1.56},
          {"magnitude": 2.0, "value": 2.14},
          {"duration": 2.0, "value": 2.14}
        ]
      },
      "Scrib Jelly": {
        "weight": 0.1,
        "id": "FExxx81C",
        "name": "Scrib Jelly",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Scrib_Jelly",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Regenerate Magicka", "Cure Poison", "Cure Disease", "Regenerate Stamina"],
        "value": 20,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          null,
          {"value": 0.36},
          {"magnitude": 1.2, "value": 1.22}
        ]
      },
      "Scrib Jerky": {
        "weight": 0.2,
        "id": "FExxx81D",
        "name": "Scrib Jerky",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Scrib_Jerky",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Stamina", "Fortify Stamina", "Paralysis", "Waterbreathing"],
        "value": 15,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.25, "value": 1.27},
          {"duration": 2.0, "value": 2.14},
          {"duration": 1.6, "value": 1.67}
        ]
      },
      "Sload Soap": {
        "weight": 0.1,
        "id": "FExxx81E",
        "name": "Sload Soap",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Sload_Soap",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Resist Fire", "Fear", "Fortify Conjuration", "Fortify Alteration"],
        "value": 30,
        "multipliers": [
          {"magnitude": 1.33, "value": 1.36},
          {"magnitude": 2.0, "value": 2.14},
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.25, "value": 1.27}
        ]
      },
      "Stoneflower Petals": {
        "weight": 0.1,
        "id": "FExxx81F",
        "name": "Stoneflower Petals",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Stoneflower_Petals",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Weakness to Shock", "Fortify One-handed", "Fortify Magicka", "Fortify Enchanting"],
        "value": 15,
        "multipliers": [
          {"magnitude": 1.33, "value": 1.36},
          {"magnitude": 1.25, "value": 1.27},
          {"magnitude": 1.25, "value": 1.27},
          {"magnitude": 2.0, "value": 2.14}
        ]
      },
      "Void Essence": {
        "weight": 0.2,
        "id": "FExxx820",
        "name": "Void Essence",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Void_Essence",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Health", "Fortify Health", "Fortify Stamina", "Regenerate Health"],
        "value": 60,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          {"magnitude": 1.25, "duration": 5.0, "value": 7.5},
          {"magnitude": 1.25, "duration": 5.0, "value": 7.5},
          {"magnitude": 1.2, "value": 1.22}
        ]
      },
      "Watcher's Eye": {
        "weight": 0.2,
        "id": "FExxx821",
        "name": "Watcher's Eye",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Watcher's_Eye",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Night Eye", "Fortify Magicka", "Fortify Illusion", "Spell Absorption"],
        "value": 9,
        "multipliers": [
          null,
          {"magnitude": 1.25, "value": 1.27},
          {"magnitude": 5.0, "value": 5.87},
          null
        ]
      },
      "Wisp Stalk Caps": {
        "weight": 0.1,
        "id": "FExxx823",
        "name": "Wisp Stalk Caps",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Wisp_Stalk_Caps",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Damage Health", "Weakness to Poison", "Frenzy", "Regenerate Stamina"],
        "value": 20,
        "multipliers": [
          {"magnitude": 1.5, "value": 1.56},
          {"magnitude": 1.5, "value": 1.56},
          {"duration": 2.0, "value": 2.14},
          {"magnitude": 1.2, "value": 1.22}
        ]
      },
      "Withering Moon": {
        "weight": 0.1,
        "id": "FExxx824",
        "name": "Withering Moon",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Withering_Moon",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Restore Magicka", "Spell Absorption", "Fortify Light Armor", "Cure Disease"],
        "value": 5,
        "multipliers": [
          {"magnitude": 1.2, "value": 1.22},
          null,
          {"magnitude": 1.5, "value": 1.56},
          {"value": 0.36}
        ]
      },
      "Worm's Head Cap": {
        "weight": 0.2,
        "id": "FExxx825",
        "name": "Worm's Head Cap",
        "icon": "TODO add icons",
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Worm's_Head_Cap",
        "text": "Can be purchased from Khajiit caravans.",
        "effects": ["Fortify Lockpicking", "Night Eye", "Fortify Carry Weight", "Slow"],
        "value": 30,
        "multipliers": [
          {"magnitude": 1.5, "value": 1.56},
          null,
          {"magnitude": 1.25, "value": 1.27},
          {"duration": 2.0, "value": 2.14}
        ]
      },
      // </AE>
      "Abecean Longfin": {
        "id": "00106e1b",
        "name": "Abecean Longfin",
        "weight": 0.5,
        "value": 15,
        "effects": ["Weakness to Frost", "Fortify Sneak", "Weakness to Poison", "Fortify Restoration"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Abecean_Longfin",
        "icon":
            "https://images.uesp.net/thumb/7/7a/SR-icon-ingredient-Abecean_Longfin.png/72px-SR-icon-ingredient-Abecean_Longfin.png",
        "text": "Collected by catching Abacean Longfin fish."
      },
      "Ancestor Moth Wing": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Ancestor_Moth_Wing",
        "id": "xx0059ba",
        "icon":
            "https://images.uesp.net/thumb/3/31/SR-icon-ingredient-Ancestor_Moth_Wing.png/72px-SR-icon-ingredient-Ancestor_Moth_Wing.png",
        "text": "Collected by catching Ancestor Moths.",
        "effects": ["Damage Stamina", "Fortify Conjuration", "Damage Magicka Regen", "Fortify Enchanting"],
        "value": 2,
        "weight": 0.1,
        "name": "Ancestor Moth Wing"
      },
      "Ash Creep Cluster": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Ash_Creep_Cluster",
        "id": "xx01cd74",
        "icon":
            "https://images.uesp.net/thumb/b/b2/SR-icon-ingredient-Ash_Creep_Cluster.png/72px-SR-icon-ingredient-Ash_Creep_Cluster.png",
        "text": "Harvested from creep cluster plants unique to Solstheim.",
        "effects": ["Damage Stamina", "Invisibility", "Resist Fire", "Fortify Destruction"],
        "value": 20,
        "weight": 0.25,
        "name": "Ash Creep Cluster"
      },
      "Ash Hopper Jelly": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Ash_Hopper_Jelly",
        "id": "xx01cd71",
        "icon":
            "https://images.uesp.net/thumb/9/92/SR-icon-ingredient-Ash_Hopper_Jelly.png/72px-SR-icon-ingredient-Ash_Hopper_Jelly.png",
        "text": "Collected from dead ash hoppers.",
        "effects": ["Restore Health", "Fortify Light Armor", "Resist Shock", "Weakness to Frost"],
        "value": 20,
        "weight": 0.25,
        "name": "Ash Hopper Jelly"
      },
      "Ashen Grass Pod": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Ashen_Grass_Pod",
        "id": "xx016e26",
        "icon":
            "https://images.uesp.net/thumb/c/c0/SR-icon-ingredient-Ashen_Grass_Pod.png/72px-SR-icon-ingredient-Ashen_Grass_Pod.png",
        "text": "Harvested from spiky grass plants unique to Solstheim.",
        "effects": ["Resist Fire", "Weakness to Shock", "Fortify Lockpicking", "Fortify Sneak"],
        "value": 1,
        "weight": 0.1,
        "name": "Ashen Grass Pod"
      },
      "Bear Claws": {
        "id": "0006bc02",
        "name": "Bear Claws",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Health", "Fortify One Handed", "Damage Magicka Regen"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Bear_Claws",
        "icon":
            "https://images.uesp.net/thumb/0/04/SR-icon-ingredient-Bear_Claws.png/72px-SR-icon-ingredient-Bear_Claws.png",
        "text": "Collected from various types of dead Bears."
      },
      "Bee": {
        "id": "000a9195",
        "name": "Bee",
        "weight": 1,
        "value": 5,
        "effects": ["Restore Stamina", "Ravage Stamina", "Regenerate Stamina", "Weakness to Shock"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Bee",
        "icon": "https://images.uesp.net/thumb/b/b8/SR-icon-ingredient-Bee.png/96px-SR-icon-ingredient-Bee.png",
        "text": "Collected from beehives."
      },
      "Beehive Husk": {
        "id": "000a9191",
        "name": "Beehive Husk",
        "weight": 1,
        "value": 5,
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Beehive_Husk",
        "icon":
            "https://images.uesp.net/thumb/8/84/SR-icon-ingredient-Beehive_Husk.png/72px-SR-icon-ingredient-Beehive_Husk.png",
        "effects": ["Resist Poison", "Fortify Light Armor", "Fortify Sneak", "Fortify Destruction"]
      },
      "Bleeding Crown": {
        "id": "0004da20",
        "name": "Bleeding Crown",
        "weight": 0.3,
        "value": 10,
        "effects": ["Weakness to Fire", "Fortify Block", "Weakness to Poison", "Resist Magic"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Bleeding_Crown",
        "icon":
            "https://images.uesp.net/thumb/a/a6/SR-icon-ingredient-Bleeding_Crown.png/72px-SR-icon-ingredient-Bleeding_Crown.png",
        "text": "Harvested from Bleeding Crown, a mushroom found in various caves."
      },
      "Blisterwort": {
        "id": "0004da25",
        "name": "Blisterwort",
        "weight": 0.2,
        "value": 12,
        "effects": ["Damage Stamina", "Frenzy", "Restore Health", "Fortify Smithing"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Blisterwort",
        "icon":
            "https://images.uesp.net/thumb/2/2b/SR-icon-ingredient-Blisterwort.png/72px-SR-icon-ingredient-Blisterwort.png",
        "text": "Harvested from Blisterwort mushrooms found in various caves."
      },
      "Blue Butterfly Wing": {
        "id": "000727de",
        "name": "Blue Butterfly Wing",
        "weight": 0.1,
        "value": 2,
        "effects": ["Damage Stamina", "Fortify Conjuration", "Damage Magicka Regen", "Fortify Enchanting"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Blue_Butterfly_Wing",
        "icon":
            "https://images.uesp.net/thumb/1/16/SR-icon-ingredient-Blue_Butterfly_Wing.png/72px-SR-icon-ingredient-Blue_Butterfly_Wing.png",
        "text": "Collected by catching Blue Butterflies. Often found during daylight hours near flowering plants."
      },
      "Blue Dartwing": {
        "id": "000e4f0c",
        "name": "Blue Dartwing",
        "weight": 0.1,
        "value": 1,
        "effects": ["Resist Shock", "Fortify Pickpocket", "Restore Health", "Fear"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Blue_Dartwing",
        "icon":
            "https://images.uesp.net/thumb/e/ee/SR-icon-ingredient-Blue_Dartwing.png/72px-SR-icon-ingredient-Blue_Dartwing.png",
        "text": "Collected by catching Dragonflies found near rivers and streams below the snow line."
      },
      "Blue Mountain Flower": {
        "id": "00077e1c",
        "name": "Blue Mountain Flower",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Health", "Fortify Conjuration", "Fortify Health", "Damage Magicka Regen"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Blue_Mountain_Flower",
        "icon":
            "https://images.uesp.net/thumb/3/38/SR-icon-ingredient-Blue_Mountain_Flower.png/72px-SR-icon-ingredient-Blue_Mountain_Flower.png",
        "text": "Harvested from the blue variety of Mountain Flower, found throughout Skyrim."
      },
      "Boar Tusk": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Boar_Tusk",
        "id": "xx01cd6f",
        "icon":
            "https://images.uesp.net/thumb/8/83/SR-icon-ingredient-Boar_Tusk.png/72px-SR-icon-ingredient-Boar_Tusk.png",
        "text": "Collected from dead bristlebacks and rieklings.",
        "effects": ["Fortify Stamina", "Fortify Health", "Fortify Block", "Frenzy"],
        "value": 20,
        "weight": 0.5,
        "name": "Boar Tusk"
      },
      "Bone Meal": {
        "id": "00034cdd",
        "name": "Bone Meal",
        "weight": 0.5,
        "value": 5,
        "effects": ["Damage Stamina", "Resist Fire", "Fortify Conjuration", "Ravage Stamina"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Bone_Meal",
        "icon":
            "https://images.uesp.net/thumb/f/f9/SR-icon-ingredient-Bone_Meal.png/72px-SR-icon-ingredient-Bone_Meal.png",
        "text": "Collected from undead such as skeletons, and Draugr."
      },
      "Briar Heart": {
        "id": "0003ad61",
        "name": "Briar Heart",
        "weight": 0.5,
        "value": 20,
        "effects": ["Restore Magicka", "Fortify Block", "Paralysis", "Fortify Magicka"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Briar_Heart",
        "icon":
            "https://images.uesp.net/thumb/6/6a/SR-icon-ingredient-Briar_Heart.png/72px-SR-icon-ingredient-Briar_Heart.png",
        "text": "Collected from Forsworn Briarhearts."
      },
      "Burnt Spriggan Wood": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Burnt_Spriggan_Wood",
        "id": "xx01cd6e",
        "icon":
            "https://images.uesp.net/thumb/6/6f/SR-icon-ingredient-Burnt_Spriggan_Wood.png/72px-SR-icon-ingredient-Burnt_Spriggan_Wood.png",
        "text": "Collected from dead burnt spriggans.",
        "effects": ["Weakness to Fire", "Fortify Alteration", "Damage Magicka Regen", "Slow"],
        "value": 20,
        "weight": 0.5,
        "name": "Burnt Spriggan Wood"
      },
      "Butterfly Wing": {
        "id": "000727e0",
        "name": "Butterfly Wing",
        "weight": 0.1,
        "value": 3,
        "effects": ["Restore Health", "Fortify Barter", "Lingering Damage Stamina", "Damage Magicka"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Butterfly_Wing",
        "icon":
            "https://images.uesp.net/thumb/f/f8/SR-icon-ingredient-Butterfly_Wing.png/72px-SR-icon-ingredient-Butterfly_Wing.png",
        "text": "Collected from catching Monarch Butterflies. Often found during daylight hours near flowering plants."
      },
      "Canis Root": {
        "id": "0006abcb",
        "name": "Canis Root",
        "weight": 0.1,
        "value": 5,
        "effects": ["Damage Stamina", "Fortify One Handed", "Fortify Marksman", "Paralysis"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Canis_Root",
        "icon":
            "https://images.uesp.net/thumb/f/f6/SR-icon-ingredient-Canis_Root.png/72px-SR-icon-ingredient-Canis_Root.png",
        "text": "Harvested from Canis Root, found in The Rift and Hjaalmarch."
      },
      "Charred Skeever Hide": {
        "id": "00052695",
        "name": "Charred Skeever Hide",
        "weight": 0.5,
        "value": 1,
        "effects": ["Restore Stamina", "Cure Disease", "Resist Poison", "Restore Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Charred_Skeever_Hide",
        "icon":
            "https://images.uesp.net/thumb/7/71/SR-icon-ingredient-Charred_Skeever_Hide.png/72px-SR-icon-ingredient-Charred_Skeever_Hide.png",
        "text": "Food, collected from dead Skeevers found on roasting spits."
      },
      "Chaurus Eggs": {
        "id": "0003ad56",
        "name": "Chaurus Eggs",
        "weight": 0.2,
        "value": 10,
        "effects": ["Weakness to Poison", "Fortify Stamina", "Damage Magicka", "Invisibility"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Chaurus_Eggs",
        "icon":
            "https://images.uesp.net/thumb/4/47/SR-icon-ingredient-Chaurus_Eggs.png/72px-SR-icon-ingredient-Chaurus_Eggs.png",
        "text": "Collected from Chaurus Egg Sacs, found in Falmer caves."
      },
      "Chaurus Hunter Antennae": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Chaurus_Hunter_Antennae",
        "id": "xx0183b7",
        "icon":
            "https://images.uesp.net/thumb/a/a2/SR-icon-ingredient-Chaurus_Hunter_Antennae.png/72px-SR-icon-ingredient-Chaurus_Hunter_Antennae.png",
        "text": "Collected from dead Chaurus Hunters and Chaurus Hunter Fledglings.",
        "effects": ["Damage Stamina", "Fortify Conjuration", "Damage Magicka Regen", "Fortify Enchanting"],
        "value": 2,
        "weight": 0.1,
        "name": "Chaurus Hunter Antennae"
      },
      "Chicken's Egg": {
        "id": "00023d77",
        "name": "Chicken's Egg",
        "weight": 0.5,
        "value": 2,
        "effects": ["Resist Magic", "Damage Magicka Regen", "Waterbreathing", "Lingering Damage Stamina"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Chicken%27s_Egg",
        "icon":
            "https://images.uesp.net/thumb/d/de/SR-icon-ingredient-Chicken%27s_Egg.png/72px-SR-icon-ingredient-Chicken%27s_Egg.png",
        "text": "Food, harvested from Chicken nests in various farms."
      },
      "Creep Cluster": {
        "id": "000b2183",
        "name": "Creep Cluster",
        "weight": 0.2,
        "value": 1,
        "effects": ["Restore Magicka", "Damage Stamina Regen", "Fortify Carry Weight", "Weakness to Magic"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Creep_Cluster",
        "icon":
            "https://images.uesp.net/thumb/1/15/SR-icon-ingredient-Creep_Cluster.png/72px-SR-icon-ingredient-Creep_Cluster.png",
        "text": "Harvested from Creep Cluster, found in the volcanic tundra of Eastmarch."
      },
      "Crimson Nirnroot": {
        "id": "000b701a",
        "name": "Crimson Nirnroot",
        "weight": 0.2,
        "value": 10,
        "effects": ["Damage Health", "Damage Stamina", "Invisibility", "Resist Magic"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Crimson_Nirnroot",
        "icon":
            "https://images.uesp.net/thumb/5/55/SR-icon-ingredient-Crimson_Nirnroot.png/72px-SR-icon-ingredient-Crimson_Nirnroot.png",
        "text": "Harvested from Crimson Nirnroot, found in Blackreach, needed for the quest A Return To Your Roots."
      },
      "Cyrodilic Spadetail": {
        "id": "00106e19",
        "name": "Cyrodilic Spadetail",
        "weight": 0.25,
        "value": 15,
        "effects": ["Damage Stamina", "Fortify Restoration", "Fear", "Ravage Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Cyrodilic_Spadetail",
        "icon":
            "https://images.uesp.net/thumb/a/a9/SR-icon-ingredient-Cyrodilic_Spadetail.png/72px-SR-icon-ingredient-Cyrodilic_Spadetail.png",
        "text": "Collected by catching Cyrodilic Spadetail fish."
      },
      "Daedra Heart": {
        "id": "0003ad5b",
        "name": "Daedra Heart",
        "weight": 0.5,
        "value": 250,
        "effects": ["Restore Health", "Damage Stamina Regen", "Damage Magicka", "Fear"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Daedra_Heart",
        "icon":
            "https://images.uesp.net/thumb/b/b1/SR-icon-ingredient-Daedra_Heart.png/72px-SR-icon-ingredient-Daedra_Heart.png",
        "text": "Collected from dead Dremora."
      },
      "Deathbell": {
        "id": "000516c8",
        "name": "Deathbell",
        "weight": 0.1,
        "value": 4,
        "effects": ["Damage Health", "Ravage Stamina", "Slow", "Weakness to Poison"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Deathbell",
        "icon":
            "https://images.uesp.net/thumb/5/58/SR-icon-ingredient-Deathbell.png/72px-SR-icon-ingredient-Deathbell.png",
        "text":
            "Harvested from Deathbell, found in Hjaalmarch. Needed for the quests Few and Far Between and The Only Cure."
      },
      "Dragon's Tongue": {
        "id": "000889a2",
        "name": "Dragon's Tongue",
        "weight": 0.1,
        "value": 5,
        "effects": ["Resist Fire", "Fortify Barter", "Fortify Illusion", "Fortify Two Handed"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Dragon%27s_Tongue",
        "icon":
            "https://images.uesp.net/thumb/0/0e/SR-icon-ingredient-Dragons_Tongue.png/72px-SR-icon-ingredient-Dragons_Tongue.png",
        "text": "Harvested from Dragon's Tongue, found in the volcanic tundra of Eastmarch."
      },
      "Dwarven Oil": {
        "id": "000f11c0",
        "name": "Dwarven Oil",
        "weight": 0.25,
        "value": 15,
        "effects": ["Weakness to Magic", "Fortify Illusion", "Regenerate Magicka", "Restore Magicka"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Dwarven_Oil",
        "icon":
            "https://images.uesp.net/thumb/e/e5/SR-icon-ingredient-Dwarven_Oil.png/72px-SR-icon-ingredient-Dwarven_Oil.png",
        "text": "Collected from destroyed Dwarven Automatons, found in Dwarven Ruins."
      },
      "Ectoplasm": {
        "id": "0003ad63",
        "name": "Ectoplasm",
        "weight": 0.1,
        "value": 25,
        "effects": ["Restore Magicka", "Fortify Destruction", "Fortify Magicka", "Damage Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Ectoplasm",
        "icon":
            "https://images.uesp.net/thumb/f/f1/SR-icon-ingredient-Ectoplasm.png/72px-SR-icon-ingredient-Ectoplasm.png",
        "text": "Collected from undead Ghosts."
      },
      "Elves Ear": {
        "id": "00034d31",
        "name": "Elves Ear",
        "weight": 0.1,
        "value": 10,
        "effects": ["Restore Magicka", "Fortify Marksman", "Weakness to Frost", "Resist Fire"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Elves_Ear",
        "icon":
            "https://images.uesp.net/thumb/7/7a/SR-icon-ingredient-Elves_Ear.png/72px-SR-icon-ingredient-Elves_Ear.png",
        "text": "Harvested from Dried Elves Ear bunches found in homes and camps."
      },
      "Emperor Parasol Moss": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Emperor_Parasol_Moss",
        "id": "xx01ff75",
        "icon":
            "https://images.uesp.net/thumb/5/53/SR-icon-ingredient-Emperor_Parasol_Moss.png/72px-SR-icon-ingredient-Emperor_Parasol_Moss.png",
        "text": "Harvested from emperor parasol moss plants near Tel Mithryn.",
        "effects": ["Damage Health", "Fortify Magicka", "Regenerate Health", "Fortify Two Handed"],
        "value": 1,
        "weight": 0.25,
        "name": "Emperor Parasol Moss"
      },
      "Eye of Sabre Cat": {
        "id": "0006bc07",
        "name": "Eye of Sabre Cat",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Ravage Health", "Damage Magicka", "Restore Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Eye_of_Sabre_Cat",
        "icon":
            "https://images.uesp.net/thumb/4/4e/SR-icon-ingredient-Eye_of_Sabre_Cat.png/72px-SR-icon-ingredient-Eye_of_Sabre_Cat.png",
        "text": "Collected from dead Sabre Cats."
      },
      "Falmer Ear": {
        "id": "0003ad5d",
        "name": "Falmer Ear",
        "weight": 0.2,
        "value": 10,
        "effects": ["Damage Health", "Frenzy", "Resist Poison", "Fortify Lockpicking"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Falmer_Ear",
        "icon":
            "https://images.uesp.net/thumb/6/6e/SR-icon-ingredient-Falmer_Ear.png/72px-SR-icon-ingredient-Falmer_Ear.png",
        "text": "Collected from dead Falmer."
      },
      "Felsaad Tern Feathers": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Felsaad_Tern_Feathers",
        "id": "xx03cd8e",
        "icon":
            "https://images.uesp.net/thumb/4/42/SR-icon-ingredient-Felsaad_Tern_Feathers.png/72px-SR-icon-ingredient-Felsaad_Tern_Feathers.png",
        "text": "Collected from dead Felsaad terns.",
        "effects": ["Restore Health", "Fortify Light Armor", "Cure Disease", "Resist Magic"],
        "value": 15,
        "weight": 0.1,
        "name": "Felsaad Tern Feathers"
      },
      "Fire Salts": {
        "id": "0003ad5e",
        "name": "Fire Salts",
        "weight": 0.25,
        "value": 50,
        "effects": ["Weakness to Frost", "Resist Fire", "Restore Magicka", "Regenerate Magicka"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fire_Salts",
        "icon":
            "https://images.uesp.net/thumb/c/cc/SR-icon-ingredient-Fire_Salts.png/72px-SR-icon-ingredient-Fire_Salts.png",
        "text": "Collected from dead Flame Atronachs, a type of daedra. Needed for the quest Stoking the Flames."
      },
      "Fly Amanita": {
        "id": "0004da00",
        "name": "Fly Amanita",
        "weight": 0.1,
        "value": 2,
        "effects": ["Resist Fire", "Fortify Two Handed", "Frenzy", "Regenerate Stamina"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Fly_Amanita",
        "icon":
            "https://images.uesp.net/thumb/7/76/SR-icon-ingredient-Fly_Amanita.png/72px-SR-icon-ingredient-Fly_Amanita.png",
        "text": "Harvested from Fly Amanita mushrooms, found in various caves."
      },
      "Frost Mirriam": {
        "id": "00034d32",
        "name": "Frost Mirriam",
        "weight": 0.1,
        "value": 1,
        "effects": ["Resist Frost", "Fortify Sneak", "Ravage Magicka", "Damage Stamina Regen"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Frost_Mirriam",
        "icon":
            "https://images.uesp.net/thumb/9/99/SR-icon-ingredient-Frost_Mirriam.png/72px-SR-icon-ingredient-Frost_Mirriam.png",
        "text": "Harvested from Dried Frost Mirriam bunches found in homes and camps."
      },
      "Frost Salts": {
        "id": "0003ad5f",
        "name": "Frost Salts",
        "weight": 0.25,
        "value": 100,
        "effects": ["Weakness to Fire", "Resist Frost", "Restore Magicka", "Fortify Conjuration"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Frost_Salts",
        "icon":
            "https://images.uesp.net/thumb/5/58/SR-icon-ingredient-Frost_Salts.png/72px-SR-icon-ingredient-Frost_Salts.png",
        "text": "Collected from dead Frost Atronachs, a type of daedra."
      },
      "Garlic": {
        "id": "00034d22",
        "name": "Garlic",
        "weight": 0.25,
        "value": 1,
        "effects": ["Resist Poison", "Fortify Stamina", "Regenerate Magicka", "Regenerate Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Garlic",
        "icon": "https://images.uesp.net/thumb/e/e5/SR-icon-ingredient-Garlic.png/72px-SR-icon-ingredient-Garlic.png",
        "text": "Food. Can also be harvested from Garlic Braids."
      },
      "Giant Lichen": {
        "id": "0007e8c1",
        "name": "Giant Lichen",
        "weight": 0.25,
        "value": 5,
        "effects": ["Weakness to Shock", "Ravage Health", "Weakness to Poison", "Restore Magicka"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Giant_Lichen",
        "icon":
            "https://images.uesp.net/thumb/8/8b/SR-icon-ingredient-Giant_Lichen.png/72px-SR-icon-ingredient-Giant_Lichen.png",
        "text": "Harvested from Giant Lichen, found in Hjaalmarch."
      },
      "Giant's Toe": {
        "id": "0003ad64",
        "name": "Giant's Toe",
        "weight": 1,
        "value": 20,
        "effects": ["Damage Stamina", "Fortify Health", "Fortify Carry Weight", "Damage Stamina Regen"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Giant%27s_Toe",
        "icon":
            "https://images.uesp.net/thumb/b/bc/SR-icon-ingredient-Giants_Toe.png/72px-SR-icon-ingredient-Giants_Toe.png",
        "text": "Collected from dead Giants, which can be found in Giant Camps."
      },
      "Gleamblossom": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Gleamblossom",
        "id": "xx00b097",
        "icon":
            "https://images.uesp.net/thumb/c/c5/SR-icon-ingredient-Gleamblossom.png/72px-SR-icon-ingredient-Gleamblossom.png",
        "text": "Harvested from the plant of the same name.",
        "effects": ["Resist Magic", "Fear", "Regenerate Health", "Paralysis"],
        "value": 5,
        "weight": 0.1,
        "name": "Gleamblossom"
      },
      "Glow Dust": {
        "id": "0003ad73",
        "name": "Glow Dust",
        "weight": 0.5,
        "value": 20,
        "effects": ["Damage Magicka", "Damage Magicka Regen", "Fortify Destruction", "Resist Shock"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Glow_Dust",
        "icon":
            "https://images.uesp.net/thumb/f/f8/SR-icon-ingredient-Glow_Dust.png/72px-SR-icon-ingredient-Glow_Dust.png",
        "text": "Collected from dead Wisps and Wispmothers."
      },
      "Glowing Mushroom": {
        "id": "0007ee01",
        "name": "Glowing Mushroom",
        "weight": 0.2,
        "value": 5,
        "effects": ["Resist Shock", "Fortify Destruction", "Fortify Smithing", "Fortify Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Glowing_Mushroom",
        "icon":
            "https://images.uesp.net/thumb/7/71/SR-icon-ingredient-Glowing_Mushroom.png/72px-SR-icon-ingredient-Glowing_Mushroom.png",
        "text": "Harvested from Glowing Mushrooms, found in various caves."
      },
      "Grass Pod": {
        "id": "00083e64",
        "name": "Grass Pod",
        "weight": 0.1,
        "value": 1,
        "effects": ["Resist Poison", "Ravage Magicka", "Fortify Alteration", "Restore Magicka"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Grass_Pod",
        "icon":
            "https://images.uesp.net/thumb/7/78/SR-icon-ingredient-Grass_Pod.png/72px-SR-icon-ingredient-Grass_Pod.png",
        "text": "Harvested from Spiky Grass, found in northern regions of Skyrim."
      },
      "Hagraven Claw": {
        "id": "0006b689",
        "name": "Hagraven Claw",
        "weight": 0.25,
        "value": 20,
        "effects": ["Resist Magic", "Lingering Damage Magicka", "Fortify Enchanting", "Fortify Barter"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Hagraven_Claw",
        "icon":
            "https://images.uesp.net/thumb/3/30/SR-icon-ingredient-Hagraven_Claw.png/72px-SR-icon-ingredient-Hagraven_Claw.png",
        "text": "Collected from dead Hagravens."
      },
      "Hagraven Feathers": {
        "id": "0003ad66",
        "name": "Hagraven Feathers",
        "weight": 0.1,
        "value": 20,
        "effects": ["Damage Magicka", "Fortify Conjuration", "Frenzy", "Weakness to Shock"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Hagraven_Feathers",
        "icon":
            "https://images.uesp.net/thumb/d/d8/SR-icon-ingredient-Hagraven_Feathers.png/72px-SR-icon-ingredient-Hagraven_Feathers.png",
        "text": "Collected from dead Hagravens. Can also be found scattered around their sleeping areas."
      },
      "Hanging Moss": {
        "id": "00057f91",
        "name": "Hanging Moss",
        "weight": 0.25,
        "value": 1,
        "effects": ["Damage Magicka", "Fortify Health", "Damage Magicka Regen", "Fortify One Handed"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Hanging_Moss",
        "icon":
            "https://images.uesp.net/thumb/2/22/SR-icon-ingredient-Hanging_Moss.png/72px-SR-icon-ingredient-Hanging_Moss.png",
        "text": "Harvested from Hanging Moss."
      },
      "Hawk Beak": {
        "id": "000e7ebc",
        "name": "Hawk Beak",
        "weight": 0.25,
        "value": 15,
        "effects": ["Restore Stamina", "Resist Frost", "Fortify Carry Weight", "Resist Shock"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Hawk_Beak",
        "icon":
            "https://images.uesp.net/thumb/6/69/SR-icon-ingredient-Hawk_Beak.png/72px-SR-icon-ingredient-Hawk_Beak.png",
        "text": "Collected from dead Hawks."
      },
      "Hawk Feathers": {
        "id": "000e7ed0",
        "name": "Hawk Feathers",
        "weight": 0.1,
        "value": 15,
        "effects": ["Cure Disease", "Fortify Light Armor", "Fortify One Handed", "Fortify Sneak"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Hawk_Feathers",
        "icon":
            "https://images.uesp.net/thumb/5/5c/SR-icon-ingredient-Hawk_Feathers.png/72px-SR-icon-ingredient-Hawk_Feathers.png",
        "text": "Collected from dead Hawks."
      },
      "Hawk's Egg": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Hawk%27s_Egg",
        "id": "xx00f1cc",
        "icon":
            "https://images.uesp.net/thumb/4/41/SR-icon-ingredient-Hawk%27s_Egg.png/72px-SR-icon-ingredient-Hawk%27s_Egg.png",
        "text": "Harvested from Hawk nests.",
        "effects": ["Resist Magic", "Damage Magicka Regen", "Waterbreathing", "Lingering Damage Stamina"],
        "value": 5,
        "weight": 0.5,
        "name": "Hawk's Egg"
      },
      "Histcarp": {
        "id": "00106e18",
        "name": "Histcarp",
        "weight": 0.25,
        "value": 6,
        "effects": ["Restore Stamina", "Fortify Magicka", "Damage Stamina Regen", "Waterbreathing"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Histcarp",
        "icon":
            "https://images.uesp.net/thumb/e/ec/SR-icon-ingredient-Histcarp.png/72px-SR-icon-ingredient-Histcarp.png",
        "text": "Collected by catching Histcarp fish."
      },
      "Honeycomb": {
        "id": "000b08c5",
        "name": "Honeycomb",
        "weight": 1,
        "value": 5,
        "effects": ["Restore Stamina", "Fortify Block", "Fortify Light Armor", "Ravage Stamina"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Honeycomb",
        "icon":
            "https://images.uesp.net/thumb/e/e0/SR-icon-ingredient-Honeycomb.png/72px-SR-icon-ingredient-Honeycomb.png",
        "text": "Food. Collected from beehives."
      },
      "Human Flesh": {
        "id": "001016b3",
        "name": "Human Flesh",
        "weight": 0.25,
        "value": 1,
        "effects": ["Damage Health", "Paralysis", "Restore Magicka", "Fortify Sneak"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Human_Flesh",
        "icon":
            "https://images.uesp.net/thumb/9/9d/SR-icon-ingredient-Human_Flesh.png/72px-SR-icon-ingredient-Human_Flesh.png",
        "text":
            "Cannot be harvested or collected; with the Dawnguard add-on installed, several respawning samples can be found in Volkihar Keep."
      },
      "Human Heart": {
        "id": "000b18cd",
        "name": "Human Heart",
        "weight": 1,
        "value": 0,
        "effects": ["Damage Health", "Damage Magicka", "Damage Magicka Regen", "Frenzy"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Human_Heart",
        "icon":
            "https://images.uesp.net/thumb/f/f6/SR-icon-ingredient-Human_Heart.png/72px-SR-icon-ingredient-Human_Heart.png",
        "text": "Cannot be harvested or collected; limited number of samples available."
      },
      "Ice Wraith Teeth": {
        "id": "0003ad6a",
        "name": "Ice Wraith Teeth",
        "weight": 0.25,
        "value": 30,
        "effects": ["Weakness to Frost", "Fortify Heavy Armor", "Invisibility", "Weakness to Fire"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Ice_Wraith_Teeth",
        "icon":
            "https://images.uesp.net/thumb/9/95/SR-icon-ingredient-Ice_Wraith_Teeth.png/72px-SR-icon-ingredient-Ice_Wraith_Teeth.png",
        "text": "Collected from Ice Wraiths. Needed for the quest Ice Cold."
      },
      "Imp Stool": {
        "id": "0004da23",
        "name": "Imp Stool",
        "weight": 0.3,
        "value": 0,
        "effects": ["Damage Health", "Lingering Damage Health", "Paralysis", "Restore Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Imp_Stool",
        "icon":
            "https://images.uesp.net/thumb/7/77/SR-icon-ingredient-Imp_Stool.png/72px-SR-icon-ingredient-Imp_Stool.png",
        "text": "Harvested from Imp Stool mushrooms, found in various caves."
      },
      "Jazbay Grapes": {
        "id": "0006ac4a",
        "name": "Jazbay Grapes",
        "weight": 0.2,
        "value": 1,
        "effects": ["Weakness to Magic", "Fortify Magicka", "Regenerate Magicka", "Ravage Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Jazbay_Grapes",
        "icon":
            "https://images.uesp.net/thumb/5/50/SR-icon-ingredient-Jazbay_Grapes.png/72px-SR-icon-ingredient-Jazbay_Grapes.png",
        "text":
            "Harvested from Jazbay vines, found in the volcanic tundra of Eastmarch. Needed for the quest Smooth Jazbay."
      },
      "Juniper Berries": {
        "id": "0005076e",
        "name": "Juniper Berries",
        "weight": 0.1,
        "value": 1,
        "effects": ["Weakness to Fire", "Fortify Marksman", "Regenerate Health", "Damage Stamina Regen"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Juniper_Berries",
        "icon":
            "https://images.uesp.net/thumb/1/10/SR-icon-ingredient-Juniper_Berries.png/72px-SR-icon-ingredient-Juniper_Berries.png",
        "text": "Harvested from Juniper shrubs, common in The Reach. Needed for the quest Elmus Favor Quest."
      },
      "Large Antlers": {
        "id": "0006bc0a",
        "name": "Large Antlers",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Stamina", "Slow", "Damage Stamina Regen"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Large_Antlers",
        "icon":
            "https://images.uesp.net/thumb/6/69/SR-icon-ingredient-Large_Antlers.png/72px-SR-icon-ingredient-Large_Antlers.png",
        "text": "Collected from dead male Elk."
      },
      "Lavender": {
        "id": "00045c28",
        "name": "Lavender",
        "weight": 0.1,
        "value": 1,
        "effects": ["Resist Magic", "Fortify Stamina", "Ravage Magicka", "Fortify Conjuration"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Lavender",
        "icon":
            "https://images.uesp.net/thumb/3/30/SR-icon-ingredient-Lavender.png/72px-SR-icon-ingredient-Lavender.png",
        "text": "Harvested from Lavender, most common in Whiterun Hold."
      },
      "Luna Moth Wing": {
        "id": "000727df",
        "name": "Luna Moth Wing",
        "weight": 0.1,
        "value": 5,
        "effects": ["Damage Magicka", "Fortify Light Armor", "Regenerate Health", "Invisibility"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Luna_Moth_Wing",
        "icon":
            "https://images.uesp.net/thumb/f/f6/SR-icon-ingredient-Luna_Moth_Wing.png/72px-SR-icon-ingredient-Luna_Moth_Wing.png",
        "text": "Collected by catching Luna Moths. Often found near flowers after dark."
      },
      "Moon Sugar": {
        "id": "000d8e3f",
        "name": "Moon Sugar",
        "weight": 0.25,
        "value": 50,
        "effects": ["Weakness to Fire", "Resist Frost", "Restore Magicka", "Regenerate Magicka"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Moon_Sugar",
        "icon":
            "https://images.uesp.net/thumb/4/48/SR-icon-ingredient-Moon_Sugar.png/72px-SR-icon-ingredient-Moon_Sugar.png",
        "text": "Cannot be collected or harvested. Can be purchased from the Khajiit Traders."
      },
      "Mora Tapinella": {
        "id": "000ec870",
        "name": "Mora Tapinella",
        "weight": 0.25,
        "value": 4,
        "effects": ["Restore Magicka", "Lingering Damage Health", "Regenerate Stamina", "Fortify Illusion"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Mora_Tapinella",
        "icon":
            "https://images.uesp.net/thumb/5/51/SR-icon-ingredient-Mora_Tapinella.png/72px-SR-icon-ingredient-Mora_Tapinella.png",
        "text": "Harvested from Mora Tapinella mushrooms, found growing on dead trees."
      },
      "Mudcrab Chitin": {
        "id": "0006bc00",
        "name": "Mudcrab Chitin",
        "weight": 0.25,
        "value": 2,
        "effects": ["Restore Stamina", "Cure Disease", "Resist Poison", "Resist Fire"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Mudcrab_Chitin",
        "icon":
            "https://images.uesp.net/thumb/7/74/SR-icon-ingredient-Mudcrab_Chitin.png/72px-SR-icon-ingredient-Mudcrab_Chitin.png",
        "text": "Collected from dead Mudcrabs, found in or near bodies of water."
      },
      "Namira's Rot": {
        "id": "0004da24",
        "name": "Namira's Rot",
        "weight": 0.25,
        "value": 0,
        "effects": ["Damage Magicka", "Fortify Lockpicking", "Fear", "Regenerate Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Namira%27s_Rot",
        "icon":
            "https://images.uesp.net/thumb/5/59/SR-icon-ingredient-Namira%27s_Rot.png/72px-SR-icon-ingredient-Namira%27s_Rot.png",
        "text": "Harvested from Namira's Rot mushrooms, found in various caves."
      },
      "Netch Jelly": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Netch_Jelly",
        "id": "xx01cd72",
        "icon":
            "https://images.uesp.net/thumb/9/9a/SR-icon-ingredient-Netch_Jelly.png/72px-SR-icon-ingredient-Netch_Jelly.png",
        "text": "Collected from dead netch.",
        "effects": ["Paralysis", "Fortify Carry Weight", "Restore Stamina", "Fear"],
        "value": 20,
        "weight": 0.5,
        "name": "Netch Jelly"
      },
      "Nightshade": {
        "id": "0002f44c",
        "name": "Nightshade",
        "weight": 0.1,
        "value": 8,
        "effects": ["Damage Health", "Damage Magicka Regen", "Lingering Damage Stamina", "Fortify Destruction"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Nightshade",
        "icon":
            "https://images.uesp.net/thumb/9/96/SR-icon-ingredient-Bloodchill_Nightshade.png/72px-SR-icon-ingredient-Bloodchill_Nightshade.png",
        "text": "Harvested from Nightshade, found growing throughout Skyrim. Needed for the quest Few and Far Between."
      },
      "Nirnroot": {
        "id": "00059b86",
        "name": "Nirnroot",
        "weight": 0.2,
        "value": 10,
        "effects": ["Damage Health", "Damage Stamina", "Invisibility", "Resist Magic"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Nirnroot",
        "icon":
            "https://images.uesp.net/thumb/4/46/SR-icon-ingredient-Nirnroot.png/72px-SR-icon-ingredient-Nirnroot.png",
        "text":
            "Harvested from Nirnroot, found near bodies of water throughout Skyrim. Needed for the quest Few and Far Between."
      },
      "Nordic Barnacle": {
        "id": "0007edf5",
        "name": "Nordic Barnacle",
        "weight": 0.2,
        "value": 5,
        "effects": ["Damage Magicka", "Waterbreathing", "Regenerate Health", "Fortify Pickpocket"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Nordic_Barnacle",
        "icon":
            "https://images.uesp.net/thumb/7/75/SR-icon-ingredient-Nordic_Barnacle.png/72px-SR-icon-ingredient-Nordic_Barnacle.png",
        "text": "Harvested from Nordic Barnacle Clusters, found in or near water."
      },
      "Orange Dartwing": {
        "id": "000bb956",
        "name": "Orange Dartwing",
        "weight": 0.1,
        "value": 1,
        "effects": ["Restore Stamina", "Ravage Magicka", "Fortify Pickpocket", "Lingering Damage Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Orange_Dartwing",
        "icon":
            "https://images.uesp.net/thumb/e/e7/SR-icon-ingredient-Orange_Dartwing.png/72px-SR-icon-ingredient-Orange_Dartwing.png",
        "text": "Collected by catching Dragonflies found near rivers and streams below the snow line."
      },
      "Pearl": {
        "id": "000854fe",
        "name": "Pearl",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Block", "Restore Magicka", "Resist Shock"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Pearl",
        "icon": "https://images.uesp.net/thumb/a/ad/SR-icon-ingredient-Pearl.png/96px-SR-icon-ingredient-Pearl.png",
        "text":
            "Cannot be harvested or collected in the original version of the game; only readily available after the Merchant perk has been unlocked. With Dragonborn, they can be harvested from Pearl Oysters in Solstheim."
      },
      "Pine Thrush Egg": {
        "id": "00023d6f",
        "name": "Pine Thrush Egg",
        "weight": 0.5,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Lockpicking", "Weakness to Poison", "Resist Shock"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Pine_Thrush_Egg",
        "icon":
            "https://images.uesp.net/thumb/0/0f/SR-icon-ingredient-Pine_Thrush_Egg.png/72px-SR-icon-ingredient-Pine_Thrush_Egg.png",
        "text": "Harvested from bird nests in forested regions, in particular The Rift."
      },
      "Poison Bloom": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Poison_Bloom",
        "id": "xx0185fb",
        "icon":
            "https://images.uesp.net/thumb/1/13/SR-icon-ingredient-Poison_Bloom.png/72px-SR-icon-ingredient-Poison_Bloom.png",
        "text": "Harvested from the plant of the same name.",
        "effects": ["Damage Health", "Slow", "Fortify Carry Weight", "Fear"],
        "value": 5,
        "weight": 0.25,
        "name": "Poison Bloom"
      },
      "Powdered Mammoth Tusk": {
        "id": "0006bc10",
        "name": "Powdered Mammoth Tusk",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Sneak", "Weakness to Fire", "Fear"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Powdered_Mammoth_Tusk",
        "icon":
            "https://images.uesp.net/thumb/c/c9/SR-icon-ingredient-Powdered_Mammoth_Tusk.png/72px-SR-icon-ingredient-Powdered_Mammoth_Tusk.png",
        "text": "Cannot be harvested or collected; only readily available after the Merchant perk has been unlocked."
      },
      "Purple Mountain Flower": {
        "id": "00077e1e",
        "name": "Purple Mountain Flower",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Sneak", "Lingering Damage Magicka", "Resist Frost"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Purple_Mountain_Flower",
        "icon":
            "https://images.uesp.net/thumb/e/e1/SR-icon-ingredient-Purple_Mountain_Flower.png/72px-SR-icon-ingredient-Purple_Mountain_Flower.png",
        "text": "Harvested from the purple variety of Mountain Flower."
      },
      "Red Mountain Flower": {
        "id": "00077e1d",
        "name": "Red Mountain Flower",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Magicka", "Ravage Magicka", "Fortify Magicka", "Damage Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Red_Mountain_Flower",
        "icon":
            "https://images.uesp.net/thumb/b/bb/SR-icon-ingredient-Red_Mountain_Flower.png/72px-SR-icon-ingredient-Red_Mountain_Flower.png",
        "text": "Harvested from the red variety of Mountain Flower."
      },
      "River Betty": {
        "id": "00106e1a",
        "name": "River Betty",
        "weight": 0.25,
        "value": 15,
        "effects": ["Damage Health", "Fortify Alteration", "Slow", "Fortify Carry Weight"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:River_Betty",
        "icon":
            "https://images.uesp.net/thumb/2/25/SR-icon-ingredient-River_Betty.png/72px-SR-icon-ingredient-River_Betty.png",
        "text": "Collected by catching River Betty fish."
      },
      "Rock Warbler Egg": {
        "id": "0007e8c8",
        "name": "Rock Warbler Egg",
        "weight": 0.5,
        "value": 2,
        "effects": ["Restore Health", "Fortify One Handed", "Damage Stamina", "Weakness to Magic"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Rock_Warbler_Egg",
        "icon":
            "https://images.uesp.net/thumb/f/fc/SR-icon-ingredient-Rock_Warbler_Egg.png/72px-SR-icon-ingredient-Rock_Warbler_Egg.png",
        "text": "Harvested from bird nests in rocky regions, in particular The Reach."
      },
      "Sabre Cat Tooth": {
        "id": "0006bc04",
        "name": "Sabre Cat Tooth",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Heavy Armor", "Fortify Smithing", "Weakness to Poison"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Sabre_Cat_Tooth",
        "icon":
            "https://images.uesp.net/thumb/1/1b/SR-icon-ingredient-Sabre_Cat_Tooth.png/72px-SR-icon-ingredient-Sabre_Cat_Tooth.png",
        "text": "Collected from dead Sabre cats."
      },
      "Salmon Roe": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Salmon_Roe",
        "id": "xx003545",
        "icon":
            "https://images.uesp.net/thumb/2/2a/SR-icon-ingredient-Salmon_Roe.png/72px-SR-icon-ingredient-Salmon_Roe.png",
        "text": "Harvested from jumping Salmon.",
        "effects": ["Restore Stamina", "Waterbreathing", "Fortify Magicka", "Regenerate Magicka"],
        "value": 5,
        "weight": 0.2,
        "name": "Salmon Roe"
      },
      "Salt Pile": {
        "id": "00034cdf",
        "name": "Salt Pile",
        "weight": 0.2,
        "value": 1,
        "effects": ["Weakness to Magic", "Fortify Restoration", "Slow", "Regenerate Magicka"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Salt_Pile",
        "icon":
            "https://images.uesp.net/thumb/3/36/SR-icon-ingredient-Salt_Pile.png/72px-SR-icon-ingredient-Salt_Pile.png",
        "text": "Food. Cannot be harvested or collected, but is commonly found in barrels and sacks."
      },
      "Scaly Pholiota": {
        "id": "0006f950",
        "name": "Scaly Pholiota",
        "weight": 0.25,
        "value": 4,
        "effects": ["Weakness to Magic", "Fortify Illusion", "Regenerate Stamina", "Fortify Carry Weight"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Scaly_Pholiota",
        "icon":
            "https://images.uesp.net/thumb/1/18/SR-icon-ingredient-Scaly_Pholiota.png/72px-SR-icon-ingredient-Scaly_Pholiota.png",
        "text": "Harvested from Scaly Pholiota mushrooms, found growing on dead trees."
      },
      "Scathecraw": {
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Scathecraw",
        "id": "xx017e97",
        "icon":
            "https://images.uesp.net/thumb/e/eb/SR-icon-ingredient-Scathecraw.png/72px-SR-icon-ingredient-Scathecraw.png",
        "text": "Harvested from scathecraw plants.",
        "effects": ["Ravage Health", "Ravage Stamina", "Ravage Magicka", "Lingering Damage Health"],
        "value": 1,
        "weight": 0.1,
        "name": "Scathecraw"
      },
      "Silverside Perch": {
        "id": "00106e1c",
        "name": "Silverside Perch",
        "weight": 0.25,
        "value": 15,
        "effects": ["Restore Stamina", "Damage Stamina Regen", "Ravage Health", "Resist Frost"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Silverside_Perch",
        "icon":
            "https://images.uesp.net/thumb/3/32/SR-icon-ingredient-Silverside_Perch.png/72px-SR-icon-ingredient-Silverside_Perch.png",
        "text": "Collected by catching Silverside Perch fish."
      },
      "Skeever Tail": {
        "id": "0003ad6f",
        "name": "Skeever Tail",
        "weight": 0.2,
        "value": 3,
        "effects": ["Damage Stamina Regen", "Ravage Health", "Damage Health", "Fortify Light Armor"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Skeever_Tail",
        "icon":
            "https://images.uesp.net/thumb/d/dc/SR-icon-ingredient-Skeever_Tail.png/72px-SR-icon-ingredient-Skeever_Tail.png",
        "text": "Collected from dead Skeevers."
      },
      "Slaughterfish Egg": {
        "id": "0007e8c5",
        "name": "Slaughterfish Egg",
        "weight": 0.2,
        "value": 3,
        "effects": ["Resist Poison", "Fortify Pickpocket", "Lingering Damage Health", "Fortify Stamina"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Slaughterfish_Egg",
        "icon":
            "https://images.uesp.net/thumb/8/84/SR-icon-ingredient-Slaughterfish_Egg.png/72px-SR-icon-ingredient-Slaughterfish_Egg.png",
        "text": "Collected from Slaughterfish Egg Nests, found in or near water."
      },
      "Slaughterfish Scales": {
        "id": "0003ad70",
        "name": "Slaughterfish Scales",
        "weight": 0.1,
        "value": 3,
        "effects": ["Resist Frost", "Lingering Damage Health", "Fortify Heavy Armor", "Fortify Block"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Slaughterfish_Scales",
        "icon":
            "https://images.uesp.net/thumb/0/0f/SR-icon-ingredient-Slaughterfish_Scales.png/72px-SR-icon-ingredient-Slaughterfish_Scales.png",
        "text": "Collected from dead Slaughterfish."
      },
      "Small Antlers": {
        "id": "0006bc0b",
        "name": "Small Antlers",
        "weight": 0.1,
        "value": 2,
        "effects": ["Weakness to Poison", "Fortify Restoration", "Lingering Damage Stamina", "Damage Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Small_Antlers",
        "icon":
            "https://images.uesp.net/thumb/4/4e/SR-icon-ingredient-Small_Antlers.png/72px-SR-icon-ingredient-Small_Antlers.png",
        "text": "Collected from dead female Elk."
      },
      "Small Pearl": {
        "id": "00085500",
        "name": "Small Pearl",
        "weight": 0.1,
        "value": 2,
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Small_Pearl",
        "text":
            "Cannot be harvested or collected in the original version of the game; only readily available after the Merchant perk has been unlocked. With Dragonborn, they can be harvested from Pearl Oysters in Solstheim.",
        "icon":
            "https://images.uesp.net/thumb/8/8f/SR-icon-ingredient-Small_Pearl.png/72px-SR-icon-ingredient-Small_Pearl.png",
        "effects": ["Restore Stamina", "Fortify One Handed", "Fortify Restoration", "Resist Frost"]
      },
      "Snowberries": {
        "id": "0001b3bd",
        "name": "Snowberries",
        "weight": 0.1,
        "value": 4,
        "effects": ["Resist Fire", "Fortify Enchanting", "Resist Frost", "Resist Shock"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Snowberries",
        "icon":
            "https://images.uesp.net/thumb/d/d3/SR-icon-ingredient-Snowberries.png/72px-SR-icon-ingredient-Snowberries.png",
        "text": "Harvested from Snowberry bushes, found in snowy regions of Skyrim."
      },
      "Spawn Ash": {
        "id": "xx01cd6d",
        "name": "Spawn Ash",
        "weight": 0.1,
        "value": 20,
        "effects": ["Ravage Stamina", "Resist Fire", "Fortify Enchanting", "Ravage Magicka"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Spawn_Ash",
        "icon":
            "https://images.uesp.net/thumb/0/0c/SR-icon-ingredient-Spawn_Ash.png/72px-SR-icon-ingredient-Spawn_Ash.png",
        "text": "Collected from dead ash spawn."
      },
      "Spider Egg": {
        "id": "0009151b",
        "name": "Spider Egg",
        "weight": 0.2,
        "value": 5,
        "effects": ["Damage Stamina", "Damage Magicka Regen", "Fortify Lockpicking", "Fortify Marksman"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Spider_Egg",
        "icon":
            "https://images.uesp.net/thumb/0/07/SR-icon-ingredient-Spider_Egg.png/72px-SR-icon-ingredient-Spider_Egg.png",
        "text": "Collected from spider Egg Sacs and Web Sacs."
      },
      "Spriggan Sap": {
        "id": "00063b5f",
        "name": "Spriggan Sap",
        "weight": 0.2,
        "value": 15,
        "effects": ["Damage Magicka Regen", "Fortify Enchanting", "Fortify Smithing", "Fortify Alteration"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Spriggan_Sap",
        "icon":
            "https://images.uesp.net/thumb/d/d6/SR-icon-ingredient-Spriggan_Sap.png/72px-SR-icon-ingredient-Spriggan_Sap.png",
        "text": "Cannot be harvested or collected; best source is merchants."
      },
      "Swamp Fungal Pod": {
        "id": "0007e8b7",
        "name": "Swamp Fungal Pod",
        "weight": 0.25,
        "value": 5,
        "effects": ["Resist Shock", "Lingering Damage Magicka", "Paralysis", "Restore Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Swamp_Fungal_Pod",
        "icon":
            "https://images.uesp.net/thumb/9/92/SR-icon-ingredient-Swamp_Fungal_Pod.png/72px-SR-icon-ingredient-Swamp_Fungal_Pod.png",
        "text": "Harvested from Swamp Fungal Pod, common in the tundra marsh of Hjaalmarch."
      },
      "Taproot": {
        "id": "0003ad71",
        "name": "Taproot",
        "weight": 0.5,
        "value": 15,
        "effects": ["Weakness to Magic", "Fortify Illusion", "Regenerate Magicka", "Restore Magicka"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Taproot",
        "icon": "https://images.uesp.net/thumb/7/78/SR-icon-ingredient-Taproot.png/72px-SR-icon-ingredient-Taproot.png",
        "text": "Collected from dead Spriggans."
      },
      "Thistle Branch": {
        "id": "000134aa",
        "name": "Thistle Branch",
        "weight": 0.1,
        "value": 1,
        "effects": ["Resist Frost", "Ravage Stamina", "Resist Poison", "Fortify Heavy Armor"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Thistle_Branch",
        "icon":
            "https://images.uesp.net/thumb/b/bf/SR-icon-ingredient-Thistle_Branch.png/72px-SR-icon-ingredient-Thistle_Branch.png",
        "text": "Harvested from Thistle."
      },
      "Torchbug Thorax": {
        "id": "0004da73",
        "name": "Torchbug Thorax",
        "weight": 0.1,
        "value": 1,
        "effects": ["Restore Stamina", "Lingering Damage Magicka", "Weakness to Magic", "Fortify Stamina"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Torchbug_Thorax",
        "icon":
            "https://images.uesp.net/thumb/9/99/SR-icon-ingredient-Torchbug_Thorax.png/72px-SR-icon-ingredient-Torchbug_Thorax.png",
        "text": "Collected by catching Torchbugs. Found below the snowline after dark."
      },
      "Trama Root": {
        "id": "xx017008",
        "name": "Trama Root",
        "weight": 0.2,
        "value": 1,
        "text": "Harvested from trama root plants.",
        "effects": ["Weakness to Shock", "Fortify Carry Weight", "Damage Magicka", "Slow"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Trama_Root",
        "icon":
            "https://images.uesp.net/thumb/1/1e/SR-icon-ingredient-Trama_Root.png/72px-SR-icon-ingredient-Trama_Root.png"
      },
      "Troll Fat": {
        "id": "0003ad72",
        "name": "Troll Fat",
        "weight": 1,
        "value": 15,
        "effects": ["Resist Poison", "Fortify Two Handed", "Frenzy", "Damage Health"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Troll_Fat",
        "icon":
            "https://images.uesp.net/thumb/8/8a/SR-icon-ingredient-Troll_Fat.png/72px-SR-icon-ingredient-Troll_Fat.png",
        "text": "Collected from dead Trolls. Needed for the quest The Cursed Tribe."
      },
      "Tundra Cotton": {
        "id": "0003f7f8",
        "name": "Tundra Cotton",
        "weight": 0.1,
        "value": 1,
        "effects": ["Resist Magic", "Fortify Magicka", "Fortify Block", "Fortify Barter"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Tundra_Cotton",
        "icon":
            "https://images.uesp.net/thumb/7/7e/SR-icon-ingredient-Tundra_Cotton.png/72px-SR-icon-ingredient-Tundra_Cotton.png",
        "text": "Harvested from Tundra Cotton, found in Whiterun Hold."
      },
      "Vampire Dust": {
        "id": "0003ad76",
        "name": "Vampire Dust",
        "weight": 0.2,
        "value": 25,
        "effects": ["Invisibility", "Restore Magicka", "Regenerate Health", "Cure Disease"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Vampire_Dust",
        "icon":
            "https://images.uesp.net/thumb/2/2f/SR-icon-ingredient-Vampire_Dust.png/72px-SR-icon-ingredient-Vampire_Dust.png",
        "text": "Collected from dead Vampires."
      },
      "Void Salts": {
        "id": "0003ad60",
        "name": "Void Salts",
        "weight": 0.2,
        "value": 125,
        "effects": ["Weakness to Shock", "Resist Magic", "Damage Health", "Fortify Magicka"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Void_Salts",
        "icon":
            "https://images.uesp.net/thumb/7/77/SR-icon-ingredient-Void_Salts.png/72px-SR-icon-ingredient-Void_Salts.png",
        "text": "Collected from dead Storm Atronachs."
      },
      "Wheat": {
        "id": "0004b0ba",
        "name": "Wheat",
        "weight": 0.1,
        "value": 5,
        "effects": ["Restore Health", "Fortify Health", "Damage Stamina Regen", "Lingering Damage Magicka"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Wheat",
        "icon": "https://images.uesp.net/thumb/7/7f/SR-icon-ingredient-Wheat.png/72px-SR-icon-ingredient-Wheat.png",
        "text": "Food. Harvested from wheat bushels, found in various farms."
      },
      "White Cap": {
        "id": "0004da22",
        "name": "White Cap",
        "weight": 0.3,
        "value": 0,
        "effects": ["Weakness to Frost", "Fortify Heavy Armor", "Restore Magicka", "Ravage Magicka"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:White_Cap",
        "icon":
            "https://images.uesp.net/thumb/f/fa/SR-icon-ingredient-White_Cap.png/72px-SR-icon-ingredient-White_Cap.png",
        "text": "Harvested from White Cap mushrooms, found in various caves."
      },
      "Wisp Wrappings": {
        "id": "0006bc0e",
        "name": "Wisp Wrappings",
        "weight": 0.1,
        "value": 2,
        "effects": ["Restore Stamina", "Fortify Destruction", "Fortify Carry Weight", "Resist Magic"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Wisp_Wrappings",
        "icon":
            "https://images.uesp.net/thumb/9/9d/SR-icon-ingredient-Wisp_Wrappings.png/72px-SR-icon-ingredient-Wisp_Wrappings.png",
        "text": "Collected from dead Wispmothers."
      },
      "Yellow Mountain Flower": {
        "id": "xx002a78",
        "name": "Yellow Mountain Flower",
        "weight": 0.1,
        "value": 2,
        "text": "Harvested from the yellow variety of Mountain Flower.",
        "icon":
            "https://images.uesp.net/thumb/6/6e/SR-icon-ingredient-Yellow_Mountain_Flower.png/72px-SR-icon-ingredient-Yellow_Mountain_Flower.png",
        "effects": ["Resist Poison", "Fortify Restoration", "Fortify Health", "Damage Stamina Regen"],
        "uesp_url": "https://en.uesp.net/wiki/Skyrim:Yellow_Mountain_Flower"
      }
    }
  };
}
