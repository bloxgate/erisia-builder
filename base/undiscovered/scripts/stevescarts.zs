var cleaningTube = <stevescarts:modulecomponents:65>;
/*=========================
Recipe Changes - Steves Cart
=========================*/

recipes.remove(<stevescarts:modulecomponents:16>);
recipes.addShaped("advanced pcb", <stevescarts:modulecomponents:16>, [
    [<immersiveengineering:material:21>, <calculator:redstoneingot>, <immersiveengineering:material:21>],
    [<immersiveengineering:material:21>, <stevescarts:modulecomponents:9>, <immersiveengineering:material:21>], 
    [<immersiveengineering:material:21>, <calculator:redstoneingot>, <immersiveengineering:material:21>]
    ]);

recipes.remove(<stevescarts:cartmodule:14>);
recipes.addShaped("basic farmer", <stevescarts:cartmodule:14>.withTag({Data: 100 as byte}), [
    [<silentgems:sickle>, <stevescarts:modulecomponents:14>, <silentgems:sickle>], 
    [null, <stevescarts:modulecomponents:9>, null], 
    [null, <ore:ingotGold>, null]
    ]);

recipes.addShaped("side chest", <stevescarts:cartmodule:2>, [
    [null, null, null], 
    [null, <minecraft:hopper>, <minecraft:chest>], 
    [null, null, null]
    ]);

recipes.addShaped("top chest", <stevescarts:cartmodule:3>, [
    [null, <minecraft:chest>, null], 
    [null, <minecraft:hopper>, null], 
    [null, null, null]
    ]);

recipes.addShaped("front chest", <stevescarts:cartmodule:4>, [
    [null, <minecraft:hopper>, null], 
    [null, <minecraft:chest>, null], 
    [null, null, null]
    ]);

recipes.addShaped("internal storage", <stevescarts:cartmodule:5>, [
    [null, null, null],
    [<minecraft:planks>, <minecraft:chest>, <minecraft:planks>], 
    [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]
    ]);

recipes.remove(cleaningTube);
recipes.addShaped("fluid cleaning tube", cleaningTube * 3, [
    [<ore:dyeGreen>, <minecraft:iron_ingot>, <ore:dyeGreen>], 
    [<ore:dyeGreen>, null, <ore:dyeGreen>], 
    [<ore:dyeGreen>, <minecraft:iron_ingot>, <ore:dyeGreen>]
    ]);

recipes.addShaped("Alt Simple PCB", <stevescarts:modulecomponents:9> * 4, [
    [null, <calculator:redstoneingot>, null],
    [<calculator:reinforcedironingot>, <ore:plateGold>, <calculator:reinforcedironingot>], 
    [null, <calculator:redstoneingot>, null]
    ]);

recipes.addShaped("Solar eng", <stevescarts:cartmodule:56>, [
    [<extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>],
    [<magneticraft:copper_coil>, <stevescarts:cartmodule>, <magneticraft:copper_coil>], 
    [null, null, null]
    ]);

recipes.addShaped("Basic solar eng", <stevescarts:cartmodule:45>, [
    [<extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>],
    [<magneticraft:copper_coil>, <stevescarts:cartmodule:44>, <magneticraft:copper_coil>], 
    [null, null, null]
    ]);

recipes.remove(<stevescarts:modulecomponents:20>);
recipes.addShaped("hardened mesh", <stevescarts:modulecomponents:20>, [
    [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>],
    [<minecraft:iron_bars>, <stevescarts:modulecomponents:19>, <minecraft:iron_bars>], 
    [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>]
    ]);

recipes.remove(<stevescarts:cartmodule:18>);
recipes.addShaped("fertilizer", <stevescarts:cartmodule:18>, [
    [<forestry:fertilizer_compound>, <forestry:fertilizer_compound>, <forestry:fertilizer_compound>],
    [<minecraft:leather>, <minecraft:dispenser>, <minecraft:leather>], 
    [null, null, null]
    ]);

recipes.remove(<stevescarts:cartmodule:18>);
recipes.addShaped("wood cutting core", <stevescarts:modulecomponents:17>, [
    [<ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>],
    [<ore:treeSapling>, <forestry:chipsets:1>, <ore:treeSapling>], 
    [<ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>]
    ]);

recipes.addShaped("cargo manager", <stevescarts:blockcargomanager>, [
    [<minecraft:iron_ingot>, <minecraft:chest>, <minecraft:iron_ingot>],
    [<minecraft:stone>, <immersiveengineering:material:27>, <minecraft:stone>], 
    [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
    ]);