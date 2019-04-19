var polishedStone = <extrautils2:decorativesolid:2>;
var rockyTungsten = <magneticraft:rocky_chunks:5>;
var manaSteel = <botania:manaresource>;
var manaPearl = <botania:manaresource:1>;
var manaDiamond = <botania:manaresource:2>;
var endoflame = <botania:specialflower>.withTag({type: "endoflame"});
var rafflowsia = <botania:specialflower>.withTag({type: "rafflowsia"});	
var thermalily = <botania:specialflower>.withTag({type: "thermalily"});
var spectrolus = <botania:specialflower>.withTag({type: "spectrolus"});

//<ore:elfForest>.add(<evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:birch_forest"}));
//<ore:elfForest>.add(<evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:roofed_forest"}));
//<ore:elfForest>.add(<evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:mutated_forest"}));
<ore:listAllmushroom>.add(<botania:mushroom:*>);

<botania:terrapick>.addTooltip("Cobalt Level");
mods.jei.JEI.addDescription(<botania:biomestonea:*>, "Created by placing stone near a Marimorphosis flower.");
mods.jei.JEI.addDescription(<botania:biomestonea:*>, "Created by placing stone near a Marimorphosis flower.");

recipes.remove(<botania:felpumpkin>);

/*=========================
Recipe Changes - Botania
=========================*/

recipes.remove(<botania:altar>);
recipes.addShaped("petal apothecary", <botania:altar>, [
    [polishedStone, <psi:material>, polishedStone], 
    [null, <botania:petalblock:*>, null], 
    [null, polishedStone, null]
    ]);
recipes.addShaped("petal apothecary2", <botania:altar>, [
    [polishedStone, <evilcraft:dark_power_gem>, polishedStone], 
    [null, <botania:petalblock:*>, null], 
    [null, polishedStone, null]
    ]);

recipes.remove(<botania:terraplate>);
recipes.addShaped("terra steel plate", <botania:terraplate>, [
    [<randomthings:runedust:11>, <randomthings:runedust:11>, <randomthings:runedust:11>], 
    [<botania:rune:7>, <botania:storage:3>, <botania:rune:5>], 
    [<astralsorcery:itemcraftingcomponent:4>, <botania:rune:8>, <astralsorcery:itemcraftingcomponent:4>]
    ]);

recipes.remove(<botania:runealtar>);
recipes.addShaped("runic altar", <botania:runealtar>, [
    [null, null, null], 
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>], 
    [<botania:livingrock>, <evilcraft:inverted_potentia:1>, <botania:livingrock>]
    ]);

recipes.remove(<botania:quartz:4>);
recipes.addShaped(<botania:quartz:4> * 8, [
    [<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>],
    [<minecraft:quartz>, <minecraft:redstone_block>, <minecraft:quartz>], 
    [<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>]
    ]);

recipes.addShaped(<botania:livingrock>, [
    [<ore:substanceIvory>, <ore:substanceIvory>, <ore:substanceIvory>],
    [<ore:substanceIvory>, <ore:stone>, <ore:substanceIvory>], 
    [<ore:substanceIvory>, <ore:substanceIvory>, <ore:substanceIvory>]
    ]);

recipes.remove(<botania:alfheimportal>);
recipes.addShaped("elf portal core", <botania:alfheimportal>, [
    [<ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>], 
    [<ore:livingwood>, <evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:mutated_forest"}), <ore:livingwood>], 
    [<ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>]
    ]);
recipes.addShaped("elf portal core2", <botania:alfheimportal>, [
    [<ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>], 
    [<ore:livingwood>, <evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:roofed_forest"}), <ore:livingwood>], 
    [<ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>]
    ]);
recipes.addShaped("elf portal core3", <botania:alfheimportal>, [
    [<ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>], 
    [<ore:livingwood>, <evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:birch_forest"}), <ore:livingwood>], 
    [<ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>]
    ]);
recipes.addShaped("elf portal core4", <botania:alfheimportal>, [
    [<ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>], 
    [<ore:livingwood>, <evilcraft:biome_extract:1>.withTag({biomeKey: "traverse:temperate_rainforest"}), <ore:livingwood>], 
    [<ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>]
    ]);
recipes.addShaped("elf portal core5", <botania:alfheimportal>, [
    [<ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>], 
    [<ore:livingwood>, <evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:forest"}), <ore:livingwood>], 
    [<ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>]
    ]);

recipes.remove(<botania:livingwood:5>);
recipes.addShapeless("glimering living wood", <botania:livingwood:5>, [
    <ore:dustAstralStarmetal>, <ore:livingwood>, <ore:nuggetTerrasteel>
    ]);

recipes.remove(<botania:pylon:2>);
recipes.addShaped("gaia pylon", <botania:pylon:2>, [
    [<botania:manaresource:7>, <astralsorcery:itemtunedcelestialcrystal>, <botania:manaresource:7>], 
    [<botania:manaresource:7>, <botania:pylon:1>, <botania:manaresource:7>], 
    [<botania:manaresource:7>, <psi:psi_decorative:8>, <botania:manaresource:7>]
    ]);

recipes.remove(<botania:conjurationcatalyst>);
recipes.addShaped("mana conjuration", <botania:conjurationcatalyst>, [
    [<psi:psi_decorative:8>, <astralsorcery:itemshiftingstar>, <psi:psi_decorative:8>], 
    [<botania:manaresource:7>, <botania:alchemycatalyst>, <botania:manaresource:7>], 
    [<psi:psi_decorative:8>, <ore:runeEnvyB>, <psi:psi_decorative:8>]
    ]);



/*=========================
Pure Daisy
=========================*/
mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
mods.botania.PureDaisy.removeRecipe(<minecraft:cobblestone>);
mods.botania.PureDaisy.addRecipe(<minecraft:end_stone>, <astralsorcery:blockmarble>, 40);
mods.botania.PureDaisy.addRecipe(<minecraft:netherrack>, <botania:livingrock>, 40);
mods.botania.PureDaisy.addRecipe(<evilcraft:undead_log:0>, <contenttweaker:holylog>, 40);
mods.botania.PureDaisy.addRecipe(<evilcraft:undead_log:1>, <contenttweaker:holylog>, 40);
mods.botania.PureDaisy.addRecipe(<evilcraft:undead_log:2>, <contenttweaker:holylog>, 40);
//mods.botania.PureDaisy.addRecipe(<botania:alfheimportal>, <mekanism:energycube>.withTag({tier: 1}));

/*=========================
Apothecary
=========================*/
mods.botania.Apothecary.removeRecipe(endoflame);
mods.botania.Apothecary.addRecipe(endoflame, [<ore:petalRed>, <ore:petalYellow>, <ore:petalBrown>, <ore:petalBrown>, <botania:rune:1>]);
//mods.botania.Apothecary.addRecipe(endoflame, [<botania:petal:14>, <botania:petal:4>, <botania:petal:12>, <botania:petal:12>, <botania:rune:1>]);
mods.botania.Apothecary.removeRecipe(rafflowsia);
mods.botania.Apothecary.addRecipe(rafflowsia, [<ore:petalPurple>, <ore:petalPurple>, <ore:petalBlack>, <ore:petalBlack>, <ore:petalGreen>, <ore:petalGreen>]);
mods.botania.Apothecary.removeRecipe(thermalily);
mods.botania.Apothecary.addRecipe(thermalily, [<ore:petalRed>, <ore:petalRed>, <ore:petalRed>, <ore:petalOrange>, <ore:petalOrange>, <ore:petalOrange>]);
mods.botania.Apothecary.removeRecipe(spectrolus);
mods.botania.Apothecary.addRecipe(spectrolus, [<ore:petalOrange>, <ore:petalMagenta>, <ore:petalYellow>, <ore:petalLime>, <ore:petalPink>, <ore:petalGray>, <ore:petalCyan>, <ore:petalPurple>, <ore:petalBlue>, <ore:petalBrown>, <ore:petalGreen>, <ore:petalRed>]);

/*=========================
Mana Pool
=========================*/
mods.botania.ManaInfusion.removeRecipe(manaSteel);
mods.botania.ManaInfusion.removeRecipe(manaPearl);
mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
mods.botania.ManaInfusion.addInfusion(<silentgems:craftingmaterial:21>, <evilcraft:golden_string>, 700);
mods.botania.ManaInfusion.addInfusion(manaSteel, <ore:ingotSteel>, 4000);
mods.botania.ManaInfusion.addInfusion(manaSteel * 2, <thermalfoundation:material:134>, 2000);
mods.botania.ManaInfusion.addInfusion(manaPearl, <randomthings:stableenderpearl>, 2000);
mods.botania.ManaInfusion.addInfusion(manaDiamond, <calculator:flawlessdiamond>, 6000);
mods.botania.ManaInfusion.addInfusion(<botania:storage>, <ore:blockSteel>, 12000);

/*=========================
Mana Pool - Alchemy
=========================*/
mods.botania.ManaInfusion.addAlchemy(<magneticraft:chunks:5> * 2, rockyTungsten, 7000);
mods.botania.ManaInfusion.addAlchemy(<contenttweaker:osmaticsteel> * 2, <contenttweaker:osmaticsteelore>, 2800);
mods.botania.ManaInfusion.addAlchemy(<thermalfoundation:material:72>, <magneticraft:dusts:9>, 5000);

/*=========================
Mana Pool - Conjuration
=========================*/
mods.botania.ManaInfusion.addConjuration(<psi:material:2>, <botania:manaresource:2>, 1000);
mods.botania.ManaInfusion.addConjuration(<psi:material:1>, <botania:manaresource>, 1000);
mods.botania.ManaInfusion.addConjuration(<psi:material>, <botania:manaresource:23>, 1000);

/*=========================
Elven Trade
=========================*/
mods.botania.ElvenTrade.removeRecipe(<botania:dreamwood>);
mods.botania.ElvenTrade.removeRecipe(<minecraft:iron_ingot>);
mods.botania.ElvenTrade.removeRecipe(<minecraft:ender_pearl>);
mods.botania.ElvenTrade.removeRecipe(<minecraft:diamond>);
mods.botania.ElvenTrade.addRecipe([<botania:dreamwood>], [<contenttweaker:holylog>]);
mods.botania.ElvenTrade.addRecipe([<immersiveengineering:metal:8>], [<minecraft:iron_ingot>]);
mods.botania.ElvenTrade.addRecipe([<randomthings:stableenderpearl>], [<minecraft:ender_pearl>]);
mods.botania.ElvenTrade.addRecipe([<calculator:enddiamond>], [<minecraft:diamond>]);