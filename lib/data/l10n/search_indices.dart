import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';

/// only for russian right now....
/// maybe I will parse more translations data later and expand the index
class SearchLocalizedNameIndex {
  static const Map<String, Map<String, String>> skyrimIndex = {
    'effects': {
      "Исцеление болезней": "Cure Disease",
      "Урон здоровью": "Damage Health",
      "Урон магии": "Damage Magicka",
      "Повреждение регенерации магии": "Damage Magicka Regen",
      "Урон запасу сил": "Damage Stamina",
      "Повреждение регенерации запаса сил": "Damage Stamina Regen",
      "Страх": "Fear",
      "Повышение навыка: изменение": "Fortify Alteration",
      "Повышение искусства торговли": "Fortify Barter",
      "Повышение навыка: блокирование": "Fortify Block",
      "Повышение переносимого веса": "Fortify Carry Weight",
      "Повышение навыка: колдовство": "Fortify Conjuration",
      "Повышение навыка: разрушение": "Fortify Destruction",
      "Повышение навыка: зачарование": "Fortify Enchanting",
      "Повышение навыка: восстановление": "Fortify Health",
      "Повышение навыка: тяжёлая броня": "Fortify Heavy Armor",
      "Повышение навыка: иллюзия": "Fortify Illusion",
      "Повышение навыка: лёгкая броня": "Fortify Light Armor",
      "Повышение навыка: взлом": "Fortify Lockpicking",
      "Повышение магии": "Waterbreathing",
      "Повышение навыка: стрельба": "Fortify Marksman",
      "Повышение навыка: одноручное оружие": "Fortify One Handed",
      "Повышение навыка: карманные кражи": "Fortify Pickpocket",
      "Повышение здоровья": "Fortify Restoration",
      "Повышение навыка: кузнечное дело": "Fortify Smithing",
      "Повышение навыка: скрытность": "Fortify Sneak",
      "Повышение запаса сил": "Fortify Stamina",
      "Повышение навыка: двуручное оружие": "Fortify Two Handed",
      "Бешенство": "Frenzy",
      "Невидимость": "Invisibility",
      "Паралич": "Paralysis",
      "Затяжной урон магии": "Lingering Damage Magicka",
      "Затяжной урон запасу сил": "Lingering Damage Stamina",
      "Опустошение здоровья": "Ravage Health",
      "Опустошение магии": "Ravage Magicka",
      "Опустошение запаса сил": "Ravage Stamina",
      "Регенерация здоровья": "Regenerate Health",
      "Регенерация магии": "Regenerate Magicka",
      "Регенерация запаса сил": "Regenerate Stamina",
      "Сопротивление огню": "Resist Fire",
      "Сопротивление холоду": "Resist Frost",
      "Сопротивление магии": "Resist Magic",
      "Сопротивление ядам": "Resist Poison",
      "Сопротивление электричеству": "Resist Shock",
      "Восстановление здоровья": "Restore Health",
      "Восстановление магии": "Restore Magicka",
      "Восстановление запаса сил": "Restore Stamina",
      "Замедление": "Slow",
      "Уязвимость к огню": "Weakness to Fire",
      "Уязвимость к холоду": "Weakness to Frost",
      "Уязвимость к магии": "Weakness to Magic",
      "Уязвимость к яду": "Weakness to Poison",
      "Уязвимость к электричеству": "Weakness to Shock"
    },
    'ingredients': {
      "Абесинский окунь": "Abecean Longfin",
      "Крыло мотылька предка": "Ancestor Moth Wing",
      "Пепельная ползучая лоза": "Ash Creep Cluster",
      "Желе пепельного прыгуна": "Ash Hopper Jelly",
      "Стручок пепельной травы": "Ashen Grass Pod",
      "Медвежьи когти": "Bear Claws",
      "Пчела": "Bee",
      "Пчелиное гнездо": "Beehive Husk",
      "Кровавый венец": "Bleeding Crown",
      "Лютый гриб": "Blisterwort",
      "Крыло синей бабочки": "Blue Butterfly Wing",
      "Синяя стрекоза": "Blue Dartwing",
      "Голубой горноцвет": "Blue Mountain Flower",
      "Кабаний клык": "Boar Tusk",
      "Костная мука": "Bone Meal",
      "Вересковое сердце": "Briar Heart",
      "Древесина горелого сприггана": "Burnt Spriggan Wood",
      "Крыло монарха": "Butterfly Wing",
      "Собачий корень": "Canis Root",
      "Жареная злокрысья кожа": "Charred Skeever Hide",
      "Яйцо коруса": "Chaurus Eggs",
      "Усик коруса-охотника": "Chaurus Hunter Antennae",
      "Куриное яйцо": "Chicken's Egg",
      "Ползучая лоза": "Creep Cluster",
      "Алый корень Нирна": "Crimson Nirnroot",
      "Сиродильский лопатохвост": "Cyrodilic Spadetail",
      "Сердце даэдра": "Daedra Heart",
      "Ядовитый колокольчик": "Deathbell",
      "Язык дракона": "Dragon's Tongue",
      "Двемерское масло": "Dwarven Oil",
      "Эктоплазма": "Ectoplasm",
      "Эльфийское ухо": "Elves Ear",
      "Императорский зонтичный мох": "Emperor Parasol Moss",
      "Глаз саблезуба": "Eye of Sabre Cat",
      "Ухо фалмера": "Falmer Ear",
      "Перья фельсадской крачки": "Felsaad Tern Feathers",
      "Огненная соль": "Fire Salts",
      "Мухомор": "Fly Amanita",
      "Морозная мириам": "Frost Mirriam",
      "Морозная соль": "Frost Salts",
      "Чеснок": "Garlic",
      "Гигантский лишайник": "Giant Lichen",
      "Палец великана": "Giant's Toe",
      "Светящийся цветок": "Gleamblossom",
      "Светящаяся пыль": "Glow Dust",
      "Светящийся гриб": "Glowing Mushroom",
      "Травяной стручок": "Grass Pod",
      "Коготь ворожеи": "Hagraven Claw",
      "Перья ворожеи": "Hagraven Feathers",
      "Бородатый мох": "Hanging Moss",
      "Клюв ястреба": "Hawk Beak",
      "Перья ястреба": "Hawk Feathers",
      "Яйцо ястреба": "Hawk's Egg",
      "Хисткарп": "Histcarp",
      "Медовые соты": "Honeycomb",
      "Человечье мясо": "Human Flesh",
      "Человеческое сердце": "Human Heart",
      "Зубы ледяного привидения": "Ice Wraith Teeth",
      "Бесовский гриб": "Imp Stool",
      "Виноград джазби": "Jazbay Grapes",
      "Ягоды можжевельника": "Juniper Berries",
      "Большие рога": "Large Antlers",
      "Лаванда": "Lavender",
      "Крыло лунного мотылька": "Luna Moth Wing",
      "Лунный сахар": "Moon Sugar",
      "Мора тапинелла": "Mora Tapinella",
      "Клешня грязевого краба": "Mudcrab Chitin",
      "Гниль Намиры": "Namira's Rot",
      "Желе нетча": "Netch Jelly",
      "Паслён": "Nightshade",
      "Корень Нирна": "Nirnroot",
      "Морской жёлудь": "Nordic Barnacle",
      "Оранжевая стрекоза": "Orange Dartwing",
      "Жемчужина": "Pearl",
      "Яйцо соснового дрозда": "Pine Thrush Egg",
      "Ядовитый цветок": "Poison Bloom",
      "Толчёный бивень мамонта": "Powdered Mammoth Tusk",
      "Лиловый горноцвет": "Purple Mountain Flower",
      "Красный горноцвет": "Red Mountain Flower",
      "Бойцовая рыбка": "River Betty",
      "Яйцо оригмы": "Rock Warbler Egg",
      "Клык саблезуба": "Sabre Cat Tooth",
      "Лососёвая икра": "Salmon Roe",
      "Соль": "Salt Pile",
      "Чешуйчатка": "Scaly Pholiota",
      "Вредозобник": "Scathecraw",
      "Серебристый окунь": "Silverside Perch",
      "Хвост злокрыса": "Skeever Tail",
      "Икра рыбы-убийцы": "Slaughterfish Egg",
      "Чешуя рыбы-убийцы": "Slaughterfish Scales",
      "Маленькие рога": "Small Antlers",
      "Маленькая жемчужина": "Small Pearl",
      "Снежные ягоды": "Snowberries",
      "Пепел порождения": "Spawn Ash",
      "Паучье яйцо": "Spider Egg",
      "Живица сприггана": "Spriggan Sap",
      "Болотный стручок": "Swamp Fungal Pod",
      "Стержневой корень": "Taproot",
      "Ветка чертополоха": "Thistle Branch",
      "Торакс светлячка": "Torchbug Thorax",
      "Корень трамы": "Trama Root",
      "Жир тролля": "Troll Fat",
      "Пушица": "Tundra Cotton",
      "Прах вампира": "Vampire Dust",
      "Измельчённая соль пустоты": "Void Salts",
      "Пшеница": "Wheat",
      "Белянка": "White Cap",
      "Пелена дымка": "Wisp Wrappings",
      "Жёлтый горноцвет": "Yellow Mountain Flower"
    },
  };

  static const Map<String, Map<String, String>> oblivionIndex = {
    'effects': {},
    'ingredients': {
      "Цветок алканны": "Alkanet Flower",
      "Плод алоказии": "Alocasia Fruit",
      "Листья алоэ": "Aloe Vera Leaves",
      "Амброзия": "Ambrosia",
      "Яблоко": "Apple",
      "Маранта": "Arrowroot",
      "Обугленные останки": "Ashen Remains",
      "Цветок астры": "Aster Bloom Core",
      "Говядина": "Beef",
      "Семена бергамота": "Bergamot Seeds",
      "Чёрная смола": "Black Tar",
      "Ежевика": "Blackberry",
      "Шляпка волдырника": "Blister Pod Cap",
      "Кровавая трава": "Bloodgrass",
      "Мясо кабана": "Boar Meat",
      "Шляпка болотной митрулы": "Bog Beacon Asco Cap",
      "Костный мозг": "Bone Marrow",
      "Осколок кости": "Bone Shard",
      "Костная мука": "Bonemeal",
      "Буханка хлеба": "Bread Loaf",
      "Шляпка каменного гриба": "Cairn Bolete Cap",
      "Морковь": "Carrot",
      "Кусок сыра": "Cheese Wedge",
      "Головка сыра": "Cheese Wheel",
      "Шляпка красного пикнопоруса": "Cinnabar Polypore Red Cap",
      "Шляпка жёлтого пикнопоруса": "Cinnabar Polypore Yellow Cap",
      "Когти кланфира": "Clannfear Claws",
      "Дымчатая говорушка": "Clouded Funnel Cap",
      "Корневая пульпа водосбора": "Columbine Root Pulp",
      "Затвердевшая гниль": "Congealed Putrescence",
      "Кукуруза": "Corn",
      "Крабовое мясо": "Crab Meat",
      "Сердце даэдра": "Daedra Heart",
      "Шёлк даэдра": "Daedra Silk",
      "Яд даэдра": "Daedra Venin",
      "Зуб даэдрота": "Daedroth Teeth",
      "Язык дракона": "Dragon's Tongue",
      "Дреугский воск": "Dreugh Wax",
      "Шляпка чешуйчатого трутовика": "Dryad Saddle Polypore Cap",
      "Эктоплазма": "Ectoplasm",
      "Шляпка саркосцифы": "Elf Cup Cap",
      "Ихор элитры": "Elytra Ichor",
      "Шляпка жгучеедкой сыроежки": "Emetic Russula Cap",
      "Семена фенхеля": "Fennel Seeds",
      "Огненная соль": "Fire Salts",
      "Огненный гриб": "Flame Stalk",
      "Семена льна": "Flax Seeds",
      "Мука": "Flour",
      "Шляпка мухомора": "Fly Amanita Cap",
      "Нектар наперстянки": "Foxglove Nectar",
      "Морозная соль": "Frost Salts",
      "Грибная трава": "Fungus Stalk",
      "Чеснок": "Garlic",
      "Лист гинкго": "Ginkgo Leaf",
      "Женьшень": "Ginseng",
      "Светящаяся пыль": "Glow Dust",
      "Кора гнарла": "Gnarl Bark",
      "Виноград": "Grapes",
      "Шляпка зелёной хлороцибории": "Green Stain Cup Cap",
      "Шляпка хлороцибории древесной": "Green Stain Shelf Cap",
      "Яйца граммита": "Grummite Eggs",
      "Окорок": "Ham",
      "Харрада": "Harrada",
      "Зуб гончей": "Hound Tooth",
      "Язык алчущего": "Hunger Tongue",
      "Гигантская спора ежовика лазурного": "Hydnum Azure Giant Spore",
      "Желчь беса": "Imp Gall",
      "Орех железного дерева": "Ironwood Nut",
      "Листья обыкновенной манжетки": "Lady's Mantle Leaves",
      "Листья лугового сердечника": "Lady's Smock Leaves",
      "Росток лаванды": "Lavender Sprig",
      "Лук-порей": "Leek",
      "Дигестивная слизь летифер орка": "Letifer Orca Digestive Slime",
      "Салат-латук": "Lettuce",
      "Лихор": "Lichor",
      "Корень мандрагоры": "Mandrake Root",
      "Семена чертополоха": "Milk Thistle Seeds",
      "Рог минотавра": "Minotaur Horn",
      "Корневая пульпа аконита": "Monkshood Root Pulp",
      "Корневая пульпа ипомеи": "Morning Glory Root Pulp",
      "Мёртвая плоть": "Mort Flesh",
      "Росток пустырника": "Motherwort Sprig",
      "Семена чернобыльника": "Mugwort Seeds",
      "Баранина": "Mutton",
      "Паслён": "Nightshade",
      "Зубы огра": "Ogre's Teeth",
      "Лук": "Onion",
      "Апельсин": "Orange",
      "Груша": "Pear",
      "Семена пиона": "Peony Seeds",
      "Картофель": "Potato",
      "Листья примулы": "Primrose Leaves",
      "Тыква": "Pumpkin",
      "Соли очищения крови": "Purgeblood Salts",
      "Редис": "Radish",
      "Мясо крысы": "Rat Meat",
      "Газовый пузырь красной водоросли": "Red Kelp Gas Bladder",
      "Цветок редворта": "Redwort Flower",
      "Рис": "Rice",
      "Корневая пульпа": "Root Pulp",
      "Гнилая чешуйка": "Rot Scale",
      "Картофельный хлеб С'джирры": "S'jirra's Famous Potato Bread",
      "Семена священного лотоса": "Sacred Lotus Seeds",
      "Чешуя": "Scales",
      "Плавник скейлона": "Scalon Fin",
      "Кожа скампа": "Scamp Skin",
      "Кричалка": "Screaming Maw",
      "Пирог пастуха": "Shepherd's Pie",
      "Копчёная нога баливога": "Smoked Baliwog Leg",
      "Лист сонного папоротника": "Somnalius Frond",
      "Спиддал": "Spiddal Stick",
      "Нектар зверобоя": "St. Jahn's Wort Nectar",
      "Шляпка голубой энтоломы": "Steel-Blue Entoloma Cap",
      "Шляпка цветохвостника": "Stinkhorn Cap",
      "Земляника": "Strawberry",
      "Шляпка белого гриба": "Summer Bolete Cap",
      "Болотный усик": "Swamp Tentacle",
      "Кекс": "Sweetcake",
      "Рулет": "Sweetroll",
      "Стержневой корень": "Taproot",
      "Шип": "Thorn Hook",
      "Нектар тигровой лилии": "Tiger Lily Nectar",
      "Шляпка гриба-трутовика": "Tinder Polypore Cap",
      "Табак": "Tobacco",
      "Томат": "Tomato",
      "Жир тролля": "Troll Fat",
      "Неочищенная зелёная пыльца": "Unrefined Greenmote",
      "Прах вампира": "Vampire Dust",
      "Оленина": "Venison",
      "Листья синяка обыкновенного": "Viper's Bugloss Leaves",
      "Эссенция пустоты": "Void Essence",
      "Соли пустоты": "Void Salts",
      "Глаз дозорного": "Watcher's Eye",
      "Нектар водного гиацинта": "Water Hyacinth Nectar",
      "Стручок водного корня": "Water Root Pod Pit",
      "Арбуз": "Watermelon",
      "Зёрна пшеницы": "Wheat Grain",
      "Белый стручок": "White Seed Pod",
      "Сердцевина жгута": "Wisp Core",
      "Шляпки гифоломы": "Wisp Stalk Caps",
      "Усыхающая луна": "Withering Moon",
      "Шляпка головы червя": "Worm's Head Cap",
      "Листья полыни": "Wormwood Leaves"
    }
  };
  static const Map<String, Map<String, String>> morrowindIndex = {
    'effects': {
      "Обуза": "Burden",
      "Излечить моровую болезнь": "Cure Blight Disease",
      "Излечить обычную болезнь": "Cure Common Disease",
      "Излечить паралич": "Cure Paralyzation",
      "Противоядие": "Cure Poison",
      "Повреждение: Интеллект": "Damage Intelligence",
      "Заметить сущность": "Detect Animal",
      "Обнаружить чары": "Detect Enchantment",
      "Найти ключ": "Detect Key",
      "Развеять": "Dispel",
      "Высасывание: Ловкость": "Drain Agility",
      "Высасывание: Выносливость": "Drain Endurance",
      "Уменьшить запас сил": "Drain Fatigue",
      "Уменьшить здоровье": "Drain Health",
      "Высасывание: Интеллект": "Drain Intelligence",
      "Высасывание: Удача": "Drain Luck",
      "Уменьшить магию": "Drain Magicka",
      "Высасывание: Привлекательность": "Drain Personality",
      "Высасывание: Скорость": "Drain Speed",
      "Высасывание: Сила": "Drain Strength",
      "Высасывание: Сила Воли": "Drain Willpower",
      "Пёрышко": "Feather",
      "Огненный щит": "Fire Shield",
      "Увеличение: Ловкость": "Fortify Agility",
      "Увеличить атаку": "Fortify Attack",
      "Увеличение: Выносливость": "Fortify Endurance",
      "Увеличить запас сил": "Fortify Fatigue",
      "Увеличить здоровье": "Fortify Health",
      "Увеличение: Интеллект": "Fortify Intelligence",
      "Увеличение: Удача": "Fortify Luck",
      "Увеличить магию": "Fortify Magicka",
      "Увеличение: Привлекательность": "Fortify Personality",
      "Увеличение: Скорость": "Fortify Speed",
      "Увеличение: Сила": "Fortify Strength",
      "Увеличение: Сила Воли": "Fortify Willpower",
      "Ледяной щит": "Frost Shield",
      "Невидимость": "Invisibility",
      "Левитация": "Levitate",
      "Свет": "Light",
      "Щит молний": "Lightning Shield",
      "Кошачий глаз": "Night Eye",
      "Паралич": "Paralyze",
      "Отравление": "Poison",
      "Отражение": "Reflect",
      "Сопротивление обычным болезням": "Resist Common Disease",
      "Сопротивление огню": "Resist Fire",
      "Сопротивление холоду": "Resist Frost",
      "Сопротивление магии": "Resist Magicka",
      "Сопротивление ядам": "Resist Poison",
      "Сопротивление электричеству": "Resist Shock",
      "Восстановление: Ловкость": "Restore Agility",
      "Восстановление: Выносливость": "Restore Endurance",
      "Восстановить запас сил": "Restore Fatigue",
      "Восстановить здоровье": "Restore Health",
      "Восстановление: Интеллект": "Restore Intelligence",
      "Восстановление: Удача": "Restore Luck",
      "Восстановить магию": "Restore Magicka",
      "Восстановление: Привлекательность": "Restore Personality",
      "Восстановление: Скорость": "Restore Speed",
      "Восстановление: Сила": "Restore Strength",
      "Восстановление: Сила Воли": "Restore Willpower",
      "Поглощение заклинаний": "Spell Absorption",
      "Быстрое плавание": "Swift Swim",
      "Телекинез": "Telekinesis",
      "Вампиризм": "Vampirism",
      "Водное дыхание": "Water Breathing",
      "Хождение по воде": "Water Walking"
    },
    'ingredients': {
      "Шкура алита": "Alit Hide",
      "Ампульный стручок": "Ampoule Pod",
      "Соли пепла": "Ash Salts",
      "Пепельный батат": "Ash Yam",
      "Лепестки горьколистника": "Bittergreen Petals",
      "Чёрный пыльник": "Black Anther",
      "Чёрный лишайник": "Black Lichen",
      "Толстоспорник": "Bloat",
      "Костяная мука": "Bonemeal",
      "Хлеб": "Bread",
      "Банглер бейн": "Bungler's Bane",
      "Удушайка": "Chokeweed",
      "Цветок коды": "Coda Flower",
      "Комуника": "Comberry",
      "Корень пробочника": "Corkbulb Root",
      "Слёзы корпруса": "Corprus Weepings",
      "Крабовое мясо": "Crab Meat",
      "Кожа даэдра": "Daedra Skin",
      "Сердце даэдра": "Daedra's Heart",
      "Бриллиант": "Diamond",
      "Дреугский воск": "Dreugh Wax",
      "Эктоплазма": "Ectoplasm",
      "Изумруд": "Emerald",
      "Огненный лепесток": "Fire Petal",
      "Огненная соль": "Fire Salts",
      "Морозная соль": "Frost Salts",
      "Сердце упыря": "Ghoul Heart",
      "Золотой канет": "Gold Kanet",
      "Могильная пыль": "Gravedust",
      "Зелёный лишайник": "Green Lichen",
      "Шкура гуара": "Guar Hide",
      "Лист хакльлоу": "Hackle-Lo Leaf",
      "Вереск": "Heather",
      "Мясо гончей": "Hound Meat",
      "Гайфа фация": "Hypha Facia",
      "Шкура кагути": "Kagouti Hide",
      "Волокно креша": "Kresh Fiber",
      "Молочко квама": "Kwama Cuttle",
      "Большое яйцо квама": "Large Kwama Egg",
      "Светящаяся сыроежка": "Luminous Russula",
      "Болотный тростник": "Marshmerrow",
      "Лунный сахар": "Moon Sugar",
      "Муск": "Muck",
      "Кожа нетча": "Netch Leather",
      "Жемчужина": "Pearl",
      "Перья наездника": "Racer Plumes",
      "Мясо крысы": "Rat Meat",
      "Эбонит-сырец": "Raw Ebony",
      "Стекло-сырец": "Raw Glass",
      "Красный лишайник": "Red Lichen",
      "Смола": "Resin",
      "Рубраш": "Roobrush",
      "Рубин": "Ruby",
      "Солёный рис": "Saltrice",
      "Чешуя": "Scales",
      "Кожа скампа": "Scamp Skin",
      "Вредозобник": "Scathecraw",
      "Обрезки металла": "Scrap Metal",
      "Скрибовое желе": "Scrib Jelly",
      "Вяленая скрибятина": "Scrib Jerky",
      "Скаттл": "Scuttle",
      "Мыло слоад": "Sload Soap",
      "Маленькое яйцо квама": "Small Kwama Egg",
      "Спороносный стручок": "Spore Pod",
      "Лепестки каменевки": "Stoneflower Petals",
      "Корень трамы": "Trama Root",
      "Прах вампира": "Vampire Dust",
      "Лиловый копринус": "Violet Coprinus",
      "Соли пустоты": "Void Salts",
      "Виквит": "Wickwheat",
      "Ивовый пыльник": "Willow Anther"
    },
  };

  static const Map<String, Map<String, Map<String, String>>> allIndices = {
    DataSource.gameNameSkyrim: skyrimIndex,
    DataSource.gameNameOblivion: oblivionIndex,
    DataSource.gameNameMorrowind: morrowindIndex,
  };
}