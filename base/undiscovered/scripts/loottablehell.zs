import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

val dungeonChest = LootTables.getTable("minecraft:chests/simple_dungeon");
val dungeonMain = dungeonChest.getPool("main");
val dungeonPool1 = dungeonChest.getPool("pool1");
val dungeonPool2 = dungeonChest.getPool("pool2");
val dungeonReliquary = dungeonChest.getPool("xreliquary_inject_pool");
val dungeonRTLava = dungeonChest.getPool("randomthings:lavaCharm");
val dungeonRTPend = dungeonChest.getPool("randomthings:summoningPendulum");
val dungeonRTHood = dungeonChest.getPool("randomthings:magicHood");
val dungeonRTSlime = dungeonChest.getPool("randomthings:slimeCube");
val dungeonRTBiome = dungeonChest.getPool("randomthings:biomeCrystal");

val mineshaftChest = LootTables.getTable("minecraft:chests/abandoned_mineshaft");
val mineshaftMain = mineshaftChest.getPool("main");
val mineshaftPool1 = mineshaftChest.getPool("pool1");
val mineshaftPool2 = mineshaftChest.getPool("pool2");
val mineshaftReliquary = mineshaftChest.getPool("xreliquary_inject_pool");
val mineshaftRTBiome = mineshaftChest.getPool("randomthings:biomeCrystal");

val desertChest = LootTables.getTable("minecraft:chests/desert_pyramid");
val desertMain = desertChest.getPool("main");
val desertPool1 = desertChest.getPool("pool1");
val desertReliquary = desertChest.getPool("xreliquary_inject_pool");
val desertRTBiome = desertChest.getPool("randomthings:biomeCrystal");

val endChest = LootTables.getTable("minecraft:chests/end_city_treasure");
val endMain = endChest.getPool("main");
val endReliquary = endChest.getPool("xreliquary_inject_pool");
val endRTBiome = endChest.getPool("randomthings:biomeCrystal");
val endBees = endChest.getPool("forestry_apiculture_bees");
val endForestry = endChest.getPool("forestry_apiculture_items");

val iglooChest = LootTables.getTable("minecraft:chests/igloo_chest");
val iglooPool1 = iglooChest.getPool("pool1");
val iglooReliquary = iglooChest.getPool("xreliquary_inject_pool");
val iglooRTBiome = iglooChest.getPool("randomthings:biomeCrystal");

val jungleChest = LootTables.getTable("minecraft:chests/jungle_temple");
val jungleMain = jungleChest.getPool("main");
val jungleReliquary = jungleChest.getPool("xreliquary_inject_pool");
val jungleRTSlime = jungleChest.getPool("randomthings:slimeCube");
val jungleRTBiome = jungleChest.getPool("randomthings:biomeCrystal");

val jungleDisChest = LootTables.getTable("minecraft:chests/jungle_temple_dispenser");
val jungleDisMain = jungleDisChest.getPool("main");

val netherChest = LootTables.getTable("minecraft:chests/nether_bridge");
val netherMain = netherChest.getPool("main");
val netherReliquary = netherChest.getPool("xreliquary_inject_pool");
val netherRTLava = netherChest.getPool("randomthings:lavaCharm");
val netherRTBiome = netherChest.getPool("randomthings:biomeCrystal");

val bonusChest = LootTables.getTable("minecraft:chests/spawn_bonus_chest");
val bonusMain = bonusChest.getPool("main");
val bonusPool1 = bonusChest.getPool("pool1");
val bonusPool2 = bonusChest.getPool("pool2");
val bonusPool3 = bonusChest.getPool("pool3");
val bonusRTBiome = bonusChest.getPool("randomthings:biomeCrystal");

val strongHallChest = LootTables.getTable("minecraft:chests/stronghold_corridor");
val strongHallReliquary = strongHallChest.getPool("xreliquary_inject_pool");
val strongHallRTPend = strongHallChest.getPool("randomthings:summoningPendulum");
val strongHallRTBiome = strongHallChest.getPool("randomthings:biomeCrystal");

val strongCrossChest = LootTables.getTable("minecraft:chests/stronghold_crossing");
val strongCrossReliquary = strongCrossChest.getPool("xreliquary_inject_pool");
val strongCrossRTBiome = strongCrossChest.getPool("randomthings:biomeCrystal");

val strongLibChest = LootTables.getTable("minecraft:chests/stronghold_library");
val strongLibReliquary = strongLibChest.getPool("xreliquary_inject_pool");
val strongLibRTBiome = strongLibChest.getPool("randomthings:biomeCrystal");

val blacksmithChest = LootTables.getTable("minecraft:chests/village_blacksmith");
val blacksmithMain = blacksmithChest.getPool("main");
val blacksmithReliquary = blacksmithChest.getPool("xreliquary_inject_pool");
val blacksmithRTHood = blacksmithChest.getPool("randomthings:magicHood");
val blacksmithRTBiome = blacksmithChest.getPool("randomthings:biomeCrystal");

val mansionChest = LootTables.getTable("minecraft:chests/woodland_mansion");

val ieEngiChest = LootTables.getTable("immersiveengineering:chests/engineers_house");
val ieEngiPool = ieEngiChest.getPool("immersiveengineering:engineers_village_house");

val ieBlackChest = LootTables.getTable("immersiveengineering:chests/village_blacksmith");
val ieBlackPool = ieBlackChest.getPool("immersiveengineering_loot_inject");

val forestryVillage = LootTables.getTable("forestry:chests/village_naturalist");
val forVillagerPool = forestryVillage.getPool("forestry_apiculture_items");

val shrineChest = LootTables.getTable("astralsorcery:chest_shrine");
val shrinePool = shrineChest.getPool("astralsorcery:chest_shrine");
val flukeShrinePool = shrineChest.addPool("fun stuff", 1, 1, 0, 0);

val reliquaryNetherBridge = LootTables.getTable("xreliquary:inject/chests/nether_bridge");
val reliquaryNetherPool = reliquaryNetherBridge.getPool("main");

val reliquaryEndCity = LootTables.getTable("xreliquary:inject/chests/end_city_treasure");
val reliquaryEndPool = reliquaryEndCity.getPool("main");

val lostcityRailChest = LootTables.getTable("lostcities:chests/raildungeonchest");
val lostCityRailPool = lostcityRailChest.getPool("lostcities:raildungeonchest");

val evilcraftInjectBlood = LootTables.getTable("evilcraft:inject/chests/condensed_blood");
val evilcraftBloodPool = evilcraftInjectBlood.getPool("main");

val evilcraftInjectBook = LootTables.getTable("evilcraft:inject/chests/origins_of_darkness");
val evilcraftBookPool = evilcraftInjectBook.getPool("main");

val vindicatorMob = LootTables.getTable("minecraft:entities/vindication_illager");
val vindAddLoot = vindicatorMob.addPool("spirit drop", 1, 1, 0, 0);

val villagerMob = LootTables.getTable("minecraft:entities/villager");
val villagerAddLoot = villagerMob.addPool("emerald", 1, 1, 0, 0);



jungleDisChest.removePool("randomthings:biomeCrystal");

netherMain.removeItemEntry(<minecraft:flint_and_steel>);

reliquaryNetherPool.removeEntry("xreliquary:molten_core");

evilcraftBloodPool.removeEntry("evilcraft:condensed_blood");
evilcraftBookPool.removeEntry("evilcraft:origins_of_darkness");
evilcraftBloodPool.addItemEntryJSON(<evilcraft:condensed_blood>, 5, 0, ["count: {min: -12.0, max: 10.0}, function: 'minecraft:set_count'"], [], "Blood");


lostCityRailPool.removeEntry("minecraft:diamond");
lostCityRailPool.removeEntry("minecraft:emerald");
lostCityRailPool.addItemEntryJSON(<minecraft:rail>, 20, 0, ["count: {min: 4.0, max: 12.0}, function: 'minecraft:set_count'"], [], "Basic Rail");
lostCityRailPool.addItemEntryJSON(<stevescarts:blockadvdetector>, 15, 0, ["count: {min: 2.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Detector Rail");
lostCityRailPool.addItemEntryJSON(<thermalfoundation:material:129>, 10, 0, ["count: {min: 2.0, max: 6.0}, function: 'minecraft:set_count'"], [], "Tin");
lostCityRailPool.addItemEntryJSON(<jaopca:item_sticklead>, 10, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Lead Stick");
lostCityRailPool.addItemEntryJSON(<thermalfoundation:storage_resource>, 7, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "Charcoal Block");
lostCityRailPool.addItemEntryJSON(<rustic:iron_lantern>, 10, 0, ["count: {min: 1.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Lantern");
lostCityRailPool.addItemEntryJSON(<stevescarts:modulecomponents:18>, 7, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "Hardner");
lostCityRailPool.addItemEntryJSON(<stevescarts:modulecomponents:15>, 7, 0, ["count: {min: 2.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Tree Killer");
lostCityRailPool.addItemEntryJSON(<minecraft:minecart>, 20, 0, [], [], "Cart");
lostCityRailPool.addItemEntryJSON(<stevescarts:cartmodule:2>, 10, 0, [], [], "Side Chests");
lostCityRailPool.addItemEntryJSON(<stevescarts:modulecomponents:1>, 10, 0, [], [], "Wheels");
lostCityRailPool.addItemEntryJSON(<stevescarts:cartmodule:45>, 6, 0, [], [], "Solar Eng");
lostCityRailPool.addItemEntryJSON(<stevescarts:cartmodule:25>, 10, 0, [], [], "Seat");
lostCityRailPool.addItemEntryJSON(<actuallyadditions:item_misc:16>, 5, 0, [], [], "Drill Core");
lostCityRailPool.addItemEntryJSON(<stevescarts:cartmodule:42>.withTag({Data: 100 as byte}), 7, 0, [], [], "Cart Drill");
lostCityRailPool.addItemEntryJSON(<stevescarts:cartmodule:39>, 5, 0, [], [], "Fancy Hull");


ieEngiPool.removeEntry("copper_ingot");
ieEngiPool.addItemEntryJSON(<thermalfoundation:material:128>, 10, 0, ["count: {min: 1.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Copper Ingot");
ieEngiPool.removeEntry("lead_nugget");
ieEngiPool.addItemEntryJSON(<thermalfoundation:material:195>, 9, 0, ["count: {min: 1.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Lead Nugget");
ieEngiPool.removeEntry("aluminium_ingot");
ieEngiPool.addItemEntryJSON(<thermalfoundation:material:132>, 10, 0, ["count: {min: 1.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Aluminium Ingot");
ieEngiPool.removeEntry("silver_nugget");
ieEngiPool.addItemEntryJSON(<thermalfoundation:material:194>, 7, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "Silver Nugget");
ieEngiPool.removeEntry("nugget_nickel");
ieEngiPool.addItemEntryJSON(<thermalfoundation:material:197>, 7, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "Nickel Nugget");
ieEngiPool.addItemEntryJSON(<immersivepetroleum:schematic>, 3, 0, [], [], "Projector");

ieBlackPool.addItemEntryJSON(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), 1, 0, [], [], "Blueprint 2");
ieBlackPool.addItemEntryJSON(<immersiveengineering:bullet:2>.withTag({bullet: "flare"}), 1, 0, ["count: {min: 4.0, max: 9.0}, function: 'minecraft:set_count'"], [], "Fire Bullet");

jungleDisMain.removeEntry("minecraft:arrow");
jungleDisMain.addItemEntryJSON(<minecraft:tipped_arrow>.withTag({Potion: "randomthings:long_collapse"}), 20, 0, ["count: {min: 2.0, max: 6.0}, function: 'minecraft:set_count'"], [], "Confuse Arrow");
jungleDisMain.addItemEntryJSON(<minecraft:tipped_arrow>.withTag({Potion: "cofhcore:wither+"}), 20, 0, ["count: {min: 2.0, max: 6.0}, function: 'minecraft:set_count'"], [], "Wither Arrow");
jungleDisMain.addItemEntryJSON(<minecraft:fire_charge>, 20, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Fire Charge");
jungleDisMain.addItemEntryJSON(<thermalexpansion:florb>.withTag({Fluid: "sewage"}), 20, 0, [], [], "Poo Bucket");
jungleDisMain.addItemEntryJSON(<minecraft:lingering_potion>.withTag({Potion: "minecraft:harming"}), 20, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "Linger Damage");

blacksmithMain.removeEntry("minecraft:sapling");
blacksmithMain.removeEntry("minecraft:iron_horse_armor");
blacksmithMain.addItemEntryJSON(<scrap:scrap>.withTag({TABLE: "scrap:scrap", XP: "0d0", PLATE: "d1a77f", GEAR: "d0c2ba", NAME: "scrap"}), 5, 0, ["count: {min: 2.0, max: 5.0}, function: 'minecraft:set_count'"], [], "Scrap");
blacksmithMain.addItemEntryJSON(<thermalfoundation:wrench>, 4, 0, [], [], "Wrench");
blacksmithMain.addItemEntryJSON(<silentgems:tipupgrade:3>, 3, 0, [], [], "Upgrade Emerald");
blacksmithMain.addItemEntryJSON(<silentgems:enchantmenttoken>.withTag({TokenEnchantments: [{lvl: 1 as short, name: "draconicevolution:enchant_reaper"}]}), 2, 0, [], [], "DE Beheading");
blacksmithMain.addItemEntryJSON(<silentgems:enchantmenttoken>.withTag({TokenEnchantments: [{lvl: 1 as short, name: "cofhcore:leech"}]}), 2, 0, [], [], "TE Beheading");
blacksmithMain.addItemEntryJSON(<immersiveengineering:faraday_suit_feet>, 4, 0, [], [], "Boots");
blacksmithMain.addItemEntryJSON(<actuallyadditions:item_helm_quartz>, 3, 0, [], [], "Helm");
blacksmithMain.addItemEntryJSON(<minecraft:chainmail_leggings>, 3, 0, [], [], "Legs");
blacksmithMain.addItemEntryJSON(<harvestcraft:hardenedleatherchestitem>, 4, 0, [], [], "Chest");
blacksmithMain.addItemEntryJSON(<forestry:kit_pickaxe>, 5, 0, [], [], "Pick Kit");
blacksmithMain.addItemEntryJSON(<waterstrainer:garden_trowel>, 5, 0, [], [], "Trowel");
blacksmithMain.addItemEntryJSON(<thermalfoundation:material:133>, 7, 0, ["count: {min: 2.0, max: 5.0}, function: 'minecraft:set_count'"], [], "Nick Ingot");
blacksmithMain.addItemEntryJSON(<harvestcraft:meatloafitem>, 5, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "Meaty Loaf");
blacksmithMain.addItemEntryJSON(<stevescarts:modulecomponents:80>, 3, 0, ["count: {min: 2.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Cart Blade");
blacksmithMain.addItemEntryJSON(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ale", Amount: 1000, Tag: {Quality: 0.75 as float}}}), 7, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Ale");
blacksmithMain.addItemEntryJSON(<contenttweaker:brokenrod>, 6, 0, ["count: {min: 2.0, max: 5.0}, function: 'minecraft:set_count'"], [], "Broke Rod");
blacksmithMain.addItemEntryJSON(<calculator:redstonesword>, 3, 0, [], [], "Red Sword");

forVillagerPool.addItemEntryJSON(<extrabees:hive_frame.cocoa>, 5, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "C Frame");
forVillagerPool.addItemEntryJSON(<forestry:apiarist_bag>, 2, 0, [], [], "Bee Bag");
forVillagerPool.addItemEntryJSON(<forestry:honeyed_slice>, 3, 0, ["count: {min: 1.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Fancy Bread");
forVillagerPool.addItemEntryJSON(<gendustry:gene_sample_blank>, 3, 0, ["count: {min: 1.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Bee Gene");
forVillagerPool.addItemEntryJSON(<gendustry:labware>, 3, 0, ["count: {min: 4.0, max: 9.0}, function: 'minecraft:set_count'"], [], "Lab Ware");
forVillagerPool.addItemEntryJSON(<harvestcraft:queenbeeitem>, 3, 0, ["count: {min: 2.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Pam Beez");

dungeonMain.removeEntry("minecraft:record_13");
dungeonMain.addItemEntryJSON(<randomthings:ingredient:6>, 5, 0, [], [], "Lube");
dungeonMain.addItemEntryJSON(<xreliquary:interdiction_torch>, 4, 0, [], [], "Mob Torch");
dungeonMain.addItemEntryJSON(<grapplemod:hookshot>, 4, 0, [], [], "Spiderman");
dungeonMain.addItemEntryJSON(<comforts:hammock:10>, 5, 0, [], [], "Day Bed");
dungeonMain.addItemEntryJSON(<actuallyadditions:item_food:12>, 7, 0, [], [], "Big Cookie");
dungeonMain.addItemEntryJSON(<thermalexpansion:satchel:2>.withTag({Accessible: 1 as byte}), 4, 0, [], [], "Nice Backpack");
dungeonMain.addItemEntryJSON(<evilcraft:lightning_grenade>, 5, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "Lightning Bomb");
dungeonMain.addItemEntryJSON(<industrialforegoing:tinydryrubber>, 7, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Rubber");
dungeonMain.addItemEntryJSON(<forestry:digger_bag>.withTag({UID: -66682004}), 6, 0, [], [], "Meh Backpack");
dungeonPool1.addItemEntryJSON(<scrap:scrap>.withTag({TABLE: "scrap:scrap", XP: "0d0", PLATE: "d1a77f", GEAR: "d0c2ba", NAME: "scrap"}), 6, 0, ["count: {min: 1.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Scrap");
dungeonPool1.addItemEntryJSON(<extendedcrafting:material:1>, 7, 0, ["count: {min: 3.0, max: 8.0}, function: 'minecraft:set_count'"], [], "Black Iron");
dungeonPool1.addItemEntryJSON(<calculator:coaldust>, 7, 0, ["count: {min: 3.0, max: 8.0}, function: 'minecraft:set_count'"], [], "Mini Coal");
dungeonPool1.addItemEntryJSON(<harvestcraft:garliccoinitem>, 5, 0, ["count: {min: 2.0, max: 5.0}, function: 'minecraft:set_count'"], [], "Garlic Money");
dungeonPool1.addItemEntryJSON(<actuallyadditions:block_tiny_torch>, 4, 0, ["count: {min: 5.0, max: 11.0}, function: 'minecraft:set_count'"], [], "Mini Torch");
dungeonPool1.addItemEntryJSON(<actuallyadditions:item_solidified_experience>, 3, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Exp");
dungeonPool1.addItemEntryJSON(<cookingforblockheads:recipe_book:1>, 2, 0, [], [], "Cook Book");
dungeonPool2.addItemEntryJSON(<astralsorcery:itemusabledust>, 4, 0, ["count: {min: 3.0, max: 5.0}, function: 'minecraft:set_count'"], [], "Light Dust");
dungeonPool2.addItemEntryJSON(<randomthings:beans:1>, 3, 0, [], [], "Magic Bean");
dungeonPool2.addItemEntryJSON(<contenttweaker:moldybread>, 7, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Gross Bread");
dungeonPool2.addItemEntryJSON(<contenttweaker:screws>, 9, 0, ["count: {min: 3.0, max: 6.0}, function: 'minecraft:set_count'"], [], "Screws");
dungeonPool2.addItemEntryJSON(<calculator:babygrenade>, 3, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Baby Boom");
dungeonPool2.addItemEntryJSON(<forestry:decaying_wheat>, 3, 0, ["count: {min: 1.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Rotting Wheat");
dungeonMain.addItemEntryJSON(<botania:slingshot>, 4, 0, [], [], "Vine Slingshot");

mineshaftMain.addItemEntryJSON(<stevescarts:modulecomponents:23>, 5, 0, ["count: {min: 2.0, max: 2.0}, function: 'minecraft:set_count'"], [], "Wheels");
mineshaftMain.addItemEntryJSON(<waterstrainer:strainer_survivalist_reinforced>, 4, 0, [], [], "Strainer");
mineshaftMain.addItemEntryJSON(<stevescarts:cartmodule:38>, 7, 0, [], [], "Hull");
mineshaftPool1.addItemEntryJSON(<xreliquary:potion>.withTag({effects: [{duration: 1750, potency: 0, name: "minecraft:night_vision"}], hasPotion: 1 as byte}), 3, 0, [], [], "Night Vision");
mineshaftPool1.addItemEntryJSON(<harvestcraft:vegemiteitem>, 6, 0, ["count: {min: 2.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Poo Spread");
mineshaftPool1.addItemEntryJSON(<thermalfoundation:material:130>, 5, 0, ["count: {min: 1.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Silver");
mineshaftPool2.addItemEntryJSON(<harvestcraft:candledeco16>, 9, 0, ["count: {min: 3.0, max: 6.0}, function: 'minecraft:set_count'"], [], "Candle");
mineshaftPool2.addItemEntryJSON(<harvestcraft:lemonlimesodaitem>, 5, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Soda");

netherMain.removeEntry("minecraft:golden_horse_armor");
netherMain.addItemEntryJSON(<rustic:deathstalk_mushroom>, 8, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Mush");
netherMain.addItemEntryJSON(<botania:vineball>, 6, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "Vines");
netherMain.addItemEntryJSON(<harvestcraft:netherwingsitem>, 5, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "Nether Wings");
netherMain.addItemEntryJSON(<calculator:firecoal>, 5, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Fire Coal");
netherMain.addItemEntryJSON(<silentgems:craftingmaterial:29>, 5, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "Chaos Ingot");
netherMain.addItemEntryJSON(<silentgems:enchantmenttoken>.withTag({TokenEnchantments: [{lvl: 1 as short, name: "cofhcore:insight"}]}), 2, 0, [], [], "Exp Token");
netherMain.addItemEntryJSON(<silentgems:craftingmaterial:8>, 4, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "The Shaft");
netherMain.addItemEntryJSON(<immersiveengineering:metal:7>, 5, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Electrum Ingot");
netherMain.addItemEntryJSON(<thermalfoundation:material:162>, 5, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "Invar Ingot");

desertMain.removeEntry("minecraft:iron_horse_armor");
desertMain.addItemEntryJSON(<silentgems:enchantmenttoken>.withTag({TokenEnchantments: [{lvl: 1 as short, name: "evilcraft:poison_tip"}]}), 5, 0, [], [], "Posion Tip");
desertMain.addItemEntryJSON(<danknull:dank_null_panel:1>, 7, 0, ["count: {min: 1.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Dank Null");
desertMain.addItemEntryJSON(<harvestcraft:extremechiliitem>, 9, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Chili");
desertMain.addItemEntryJSON(<psi:cad_colorizer_:16>, 7, 0, [], [], "CAD Color");
desertMain.addItemEntryJSON(<actuallyadditions:item_damage_lens>, 7, 0, [], [], "Damage Lens");
desertMain.addItemEntryJSON(<botania:cosmetic:18>, 5, 0, [], [], "Uni Horn");
desertPool1.addItemEntryJSON(<minecraft:skull:4>, 9, 0, [], [], "Skull");
desertPool1.addItemEntryJSON(<astralsorcery:itemusabledust:1>, 6, 0, [], [], "Mob Cloud");
desertPool1.addItemEntryJSON(<botania:grassseeds:3>, 5, 0, [], [], "Dry Grass");
desertPool1.addItemEntryJSON(<harvestcraft:soybeanseeditem>, 3, 0, [], [], "Peanuts");
desertPool1.addItemEntryJSON(<harvestcraft:peanutseeditem>, 3, 0, [], [], "Soybeans");
desertPool1.addItemEntryJSON(<harvestcraft:queenbeeitem>, 3, 0, [], [], "Pam Bee");
desertMain.addItemEntryJSON(<minecraft:tipped_arrow>.withTag({Potion: "extrautils2:xu2.fizzy.lifting"}), 6, 0, ["count: {min: 8.0, max: 16.0}, function: 'minecraft:set_count'"], [], "Floaty Arrows");

jungleMain.removeEntry("minecraft:iron_horse_armor");
jungleMain.addItemEntryJSON(<psi:cad_colorizer_:16>, 7, 0, [], [], "CAD Color");
jungleMain.addItemEntryJSON(<silentgems:enchantmenttoken>.withTag({TokenEnchantments: [{lvl: 1 as short, name: "astralsorcery:enchantment.as.nightvision"}]}), 5, 0, [], [], "Night Vision");
jungleMain.addItemEntryJSON(<botania:flowerbag>, 7, 0, [], [], "Flower Bag");
jungleMain.addItemEntryJSON(<danknull:dank_null_panel:1>, 7, 0, ["count: {min: 1.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Dank Null");
jungleMain.addItemEntryJSON(<extrautils2:redorchid>, 5, 0, [], [], "Red Orchid");
jungleMain.addItemEntryJSON(<evilcraft:dark_spike>, 7, 0, ["count: {min: 2.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Spikes");
jungleMain.addItemEntryJSON(<harvestcraft:nutellaitem>, 7, 0, ["count: {min: 2.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Nutella");
jungleMain.addItemEntryJSON(<extrautils2:boomerang>, 5, 0, [], [], "Rang");

vindAddLoot.addItemEntryJSON(<evilcraft:vengeance_essence>, 1, 0, ["count: {min: 0.0, max: 1.0}, function: 'minecraft:set_count'"], [], "Spirit Essence");

villagerAddLoot.addItemEntryJSON(<minecraft:emerald>, 10, 0, ["count: {min: -1.0, max: 1.0}, function: 'minecraft:set_count'"], [], "Emerald");
villagerAddLoot.addItemEntryJSON(<evilcraft:werewolf_flesh:1>, 2, 0, [], [], "Long Pig");
villagerAddLoot.addItemEntryJSON(<evilcraft:condensed_blood>, 2, 0, [], [], "Blood");

flukeShrinePool.addItemEntryJSON(<xreliquary:potion>.withTag({effects: [{duration: 500, potency: 4, name: "xreliquary:cure_potion"}], hasPotion: 1 as byte, splash: 1 as byte}), 6, 0, [], [], "Cure Potion");
flukeShrinePool.addItemEntryJSON(<xreliquary:twilight_cloak>, 4, 0, [], [], "Invis Cloak");
flukeShrinePool.addItemEntryJSON(<xreliquary:glowing_bread>, 6, 0, [], [], "Glowing Bread");
flukeShrinePool.addItemEntryJSON(<xreliquary:fertile_lilypad>, 6, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Fertile Lillypad");
flukeShrinePool.addItemEntryJSON(<xreliquary:mob_ingredient:5>, 6, 0, [], [], "Bat Wing");
flukeShrinePool.addItemEntryJSON(<xreliquary:mob_ingredient:11>, 5, 0, [], [], "Ender Heart");
flukeShrinePool.addItemEntryJSON(<evilcraft:dark_gem>, 5, 0, ["count: {min: 1.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Dark Gem");
flukeShrinePool.addItemEntryJSON(<silentgems:petsummoner:1>, 4, 0, [], [], "Dog Bone");
flukeShrinePool.addItemEntryJSON(<randomthings:beans:2>, 5, 0, [], [], "Dog Bone");
flukeShrinePool.addItemEntryJSON(<mob_grinding_utils:gm_chicken_feed>.withTag({mguMobName: "villager"}), 6, 0, [], [], "Life");

endMain.setRolls(3.0, 6.0);
endMain.removeEntry("minecraft:iron_horse_armor");
endMain.removeEntry("minecraft:golden_horse_armor");
endMain.removeEntry("minecraft:diamond_horse_armor");
endMain.removeEntry("minecraft:iron_sword");
endMain.removeEntry("minecraft:iron_boots");
endMain.removeEntry("minecraft:iron_chestplate");
endMain.removeEntry("minecraft:iron_leggings");
endMain.removeEntry("minecraft:iron_helmet");
endMain.removeEntry("minecraft:iron_pickaxe");
endMain.removeEntry("minecraft:iron_shovel");
endMain.removeEntry("minecraft:beetroot_seeds");
endMain.removeEntry("minecraft:saddle");
endMain.addItemEntryJSON(<actuallyadditions:item_boots_quartz>, 2, 0, ["levels: {min: 20.0, max: 39.0}, function: 'minecraft:enchant_with_levels'"], [], "Enchanted High Heels");
endMain.addItemEntryJSON(<grapplemod:longfallboots>, 3, 0, ["levels: {min: 20.0, max: 39.0}, function: 'minecraft:enchant_with_levels'"], [], "Enchanted long fall Heels");
endMain.addItemEntryJSON(<actuallyadditions:item_pants_crystal_green>, 3, 0, ["levels: {min: 20.0, max: 39.0}, function: 'minecraft:enchant_with_levels'"], [], "Enchanted Panties");
endMain.addItemEntryJSON(<actuallyadditions:item_chest_crystal_red>, 3, 0, ["levels: {min: 20.0, max: 39.0}, function: 'minecraft:enchant_with_levels'"], [], "Enchanted Bra");
endMain.addItemEntryJSON(<actuallyadditions:item_helm_crystal_light_blue>, 3, 0, ["levels: {min: 20.0, max: 39.0}, function: 'minecraft:enchant_with_levels'"], [], "Enchanted Party Hat");
endMain.addItemEntryJSON(<astralsorcery:itemcrystalsword>.withTag({astralsorcery: {size: 1500, purity: 90, collect: 90}}), 3, 0, ["levels: {min: 20.0, max: 39.0}, function: 'minecraft:enchant_with_levels'"], [], "Enchanted Sword");
endMain.addItemEntryJSON(<randomthings:spectrepickaxe>, 3, 0, ["levels: {min: 20.0, max: 39.0}, function: 'minecraft:enchant_with_levels'"], [], "Enchanted Pick");
endMain.addItemEntryJSON(<calculator:endforgedaxe>, 3, 0, ["levels: {min: 20.0, max: 39.0}, function: 'minecraft:enchant_with_levels'"], [], "Enchanted Axe");
endMain.addItemEntryJSON(<storagedrawers:upgrade_storage:3>, 5, 0, [], [], "Drawer Upgrade");
endMain.addItemEntryJSON(<forestry:frame_proven>, 3, 0, [], [], "Nice Frame");
endMain.addItemEntryJSON(<astralsorcery:itemcraftingcomponent>, 10, 0, ["count: {min: 2.0, max: 4.0}, function: 'minecraft:set_count'"], [], "AS Gem");
endMain.addItemEntryJSON(<appliedenergistics2:material:7>, 10, 0, ["count: {min: 2.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Fluix");
endMain.addItemEntryJSON(<thermalfoundation:material:895>, 10, 0, ["count: {min: 2.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Ender Clath");
endMain.addItemEntryJSON(<appliedenergistics2:material:2>, 10, 0, ["count: {min: 2.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Certus Dust");
endMain.addItemEntryJSON(<thermalfoundation:material:134>, 5, 0, ["count: {min: 2.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Platinum");
endMain.addItemEntryJSON(<thermalfoundation:material:166>, 5, 0, ["count: {min: 2.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Lumium");
endMain.addItemEntryJSON(<thermalfoundation:material:167>, 5, 0, ["count: {min: 2.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Enderium");
endMain.addItemEntryJSON(<xreliquary:potion>.withTag({effects: [{duration: 2250, potency: 1, name: "minecraft:health_boost"}], hasPotion: 1 as byte}), 4, 0, [], [], "Health Pot");
endMain.addItemEntryJSON(<harvestcraft:rainbowcurryitem>, 8, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Curry");
endMain.addItemEntryJSON(<harvestcraft:chorusfruitsoupitem>, 8, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Ender Os");
endMain.addItemEntryJSON(<silentgems:enchantmenttoken>.withTag({TokenEnchantments: [{lvl: 1 as short, name: "draconicevolution:enchant_reaper"}]}), 5, 0, [], [], "Reaper Enchant");
endMain.addItemEntryJSON(<mob_grinding_utils:saw_upgrade:1>, 4, 0, [], [], "looting masher token");
endMain.addItemEntryJSON(<rftoolsdim:known_dimlet:11>.withTag({dkey: "Efficiency"}), 3, 0, [], [], "eff dimlet");
endMain.addItemEntryJSON(<silentgems:enchantmenttoken>.withTag({TokenEnchantments: [{lvl: 1 as short, name: "silentgems:gravity"}]}), 5, 0, [], [], "Gravity Enchant");
endMain.addItemEntryJSON(<silentgems:enchantmenttoken>.withTag({TokenEnchantments: [{lvl: 1 as short, name: "cofhcore:holding"}]}), 5, 0, [], [], "Holding Enchant");
endMain.addItemEntryJSON(<silentgems:craftingmaterial:1>, 8, 0, ["count: {min: 2.0, max: 5.0}, function: 'minecraft:set_count'"], [], "Enriched Chaos");
endMain.addItemEntryJSON(<silentgems:craftingmaterial:6>, 6, 0, ["count: {min: 3.0, max: 8.0}, function: 'minecraft:set_count'"], [], "Chaos Coal");
endMain.addItemEntryJSON(<minecraft:end_crystal>, 3, 0, ["count: {min: 1.0, max: 3.0}, function: 'minecraft:set_count'"], [], "dragon crystal");
endMain.addItemEntryJSON(<harvestcraft:cornedbeefbreakfastitem>, 3, 0, [], [], "yummy food");
endMain.addItemEntryJSON(<rftoolsdim:dimlet_parcel>, 6, 0, ["count: {min: 2.0, max: 6.0}, function: 'minecraft:set_count'"], [], "Dimlet Lootbox");
endMain.addItemEntryJSON(<rftoolsdim:dimlet_control_circuit:6>, 5, 0, [], [], "T6 Dimlet");
endMain.addItemEntryJSON(<contenttweaker:osmaticsteeldust>, 10, 0, ["count: {min: 3.0, max: 6.0}, function: 'minecraft:set_count'"], [], "Fake Steel");
endMain.addItemEntryJSON(<evilcraft:dark_power_gem>, 10, 0, ["count: {min: 2.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Edgy Gem");
endMain.addItemEntryJSON(<extrautils2:ingredients:5>, 7, 0, ["count: {min: 1.0, max: 2.0}, function: 'minecraft:set_count'"], [], "MoonMoon");
endMain.addItemEntryJSON(<botania:manaresource:1>, 7, 0, ["count: {min: 2.0, max: 3.0}, function: 'minecraft:set_count'"], [], "Mana Pearl");
reliquaryEndPool.removeEntry("xreliquary:nebulous_heart");
reliquaryEndPool.addItemEntryJSON(<xreliquary:mob_ingredient:11>, 15, 0, ["count: {min: 1.0, max: 4.0}, function: 'minecraft:set_count'"], [], "Ender Heart");
reliquaryEndPool.addItemEntryJSON(<xreliquary:serpent_staff>, 5, 0, [], [], "Snek Stick");
reliquaryEndPool.addItemEntryJSON(<xreliquary:mob_charm>.withTag({type: 8 as byte}), 7, 0, [], [], "Anti Ender Belt");
reliquaryEndPool.addItemEntryJSON(<xreliquary:sojourner_staff>, 5, 0, [], [], "Torch Staff");
reliquaryEndPool.addItemEntryJSON(<xreliquary:twilight_cloak>, 5, 0, [], [], "Sneaky Cloak");
reliquaryEndPool.addItemEntryJSON(<xreliquary:infernal_claws>, 5, 0, [], [], "Sneaky Cloak");


/*
forestry wont let me edit this :<
endBees.addItemEntryJSON(<forestry:bee_princess_ge>, 10, 0, ["speciesUid: 'extrabees.species.latex', function: 'minecraft:set_species_nbt'"], [], "Plastic Bee");
endBees.addItemEntryJSON(<forestry:bee_princess_ge>, 10, 0, ["speciesUid: 'extrabees.species.sticky', function: 'minecraft:set_species_nbt'"], [], "Sticky Bee");
endBees.addItemEntryJSON(<forestry:bee_princess_ge>, 10, 0, ["speciesUid: 'forestry.speciesPhantasmal', function: 'minecraft:set_species_nbt'"], [], "Phantom Bee");
endBees.addItemEntryJSON(<forestry:bee_princess_ge>, 10, 0, ["speciesUid: 'forestry.speciesGlacial', function: 'minecraft:set_species_nbt'"], [], "Glacial Bee");
endForestry.addItemEntryJSON(<forestry:crafting_material:4>, 1, 0, [], [], "Anti Rain");
endForestry.addItemEntryJSON(<forestry:crafting_material:1>, 1, 0, [], [], "Ender Mesh");
endForestry.addItemEntryJSON(<contenttweaker:butterflyspray>, 1, 0, [], [], "Buttery Death");
endForestry.addItemEntryJSON(<extrabees:hive_frame.cocoa>, 1, 0, [], [], "Choco Frame (Some stay dry)");
endForestry.addItemEntryJSON(<extrabees:hive_frame.soul>, 1, 0, [], [], "Soul Frame");
*/