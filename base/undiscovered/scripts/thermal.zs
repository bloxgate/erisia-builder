import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

var redstonClathrate = <thermalfoundation:material:893>;
var resonateClathrate = <thermalfoundation:material:895>;
var geode = <thermalfoundation:geode>;
var emeraldNug = <thermalfoundation:material:17>;
var receptionCoil = <thermalfoundation:material:513>;
var goldElectronTube = <forestry:thermionic_tubes:4>;
var basicFluxCapacitor = <thermalexpansion:capacitor>; //<thermalexpansion:capacitor>.withTag({Energy: 0})
var conductanceCoil = <thermalfoundation:material:515>;
var wirelessRF = <extrautils2:powertransmitter>;
var transmissionCoil = <thermalfoundation:material:514>;
var cableConnector = <immersiveengineering:connector:6>;
var hvCoilBlock = <immersiveengineering:metal_decoration0:2>;
var iridiumGear = <thermalfoundation:material:263>;
var blackIron = <extendedcrafting:material>;
var tinGear = <ore:gearTin>;
var refinedHardner = <stevescarts:modulecomponents:19>;
var hardenedGlass = <thermalfoundation:glass:3>;
var wolframiteOre = <magneticraft:ores:3>;
var iridiumOre = <thermalfoundation:ore:7>;
var platinumOre = <thermalfoundation:ore:6>;
var richSlag = <thermalfoundation:material:865>;
var cinnabar = <thermalfoundation:material:866>;
var vodkaBottle = <binniecore:glass:1>.withTag({Fluid: {FluidName: "binnie.vodka", Amount: 1000}});
var enderEgg = <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:enderman"}});

var copperBlocks = [
    <mekanism:basicblock:12>, 
    <forestry:resource_storage:1>, 
    <thermalfoundation:storage>, 
    <immersiveengineering:storage>
    ] as IItemStack[];
var alumBlocks = [
    <thermalfoundation:storage:4>, 
    <immersiveengineering:storage:1>
    ] as IItemStack[];
var leadBlocks = [
    <immersiveengineering:storage:2>, 
    <thermalfoundation:storage:3>
    ] as IItemStack[];
var silverBlocks = [
    <thermalfoundation:storage:2>, 
    <immersiveengineering:storage:3>
    ] as IItemStack[];
var nickBlocks = [
    <thermalfoundation:storage:5>, 
    <immersiveengineering:storage:4>
    ] as IItemStack[];
var conBlocks = [
    <immersiveengineering:storage:6>, 
    <thermalfoundation:storage_alloy:4>
    ] as IItemStack[];
var eleBlocks = [
    <immersiveengineering:storage:7>, 
    <thermalfoundation:storage_alloy:1>
    ] as IItemStack[];
var steelBlocks = [
    <thermalfoundation:storage_alloy>, 
    <mekanism:basicblock:5>, 
    <immersiveengineering:storage:8>, 
    <bigreactors:blockmetals:5>
    ] as IItemStack[];

recipes.remove(<thermalexpansion:machine>); //redstone furnace
recipes.remove(<thermalfoundation:material:71>);
recipes.remove(<thermalfoundation:material:135>);
recipes.remove(<thermalexpansion:device:8>); //xp collector
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:256>); //Redstone furnace augments
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:257>); 
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:258>); 


/*=========================
Recipe Changes - Thermal
=========================*/
/*
recipes.addShaped("geode", geode, [
    [<botania:manaresource:18>, <botania:manaresource:18>, <botania:manaresource:18>],
    [redstonClathrate, <botania:manaresource:18>, resonateClathrate],
    [<botania:manaresource:18>, <botania:manaresource:18>, <botania:manaresource:18>]
    ]);
*/

recipes.addShaped("te enchated frame", <contenttweaker:enchantedframe>, [
    [<ore:lightPlateTungsten>, <extrautils2:ingredients:12>, <ore:lightPlateTungsten>], 
    [<extrautils2:ingredients:12>, <thermalexpansion:frame>, <extrautils2:ingredients:12>], 
    [<ore:lightPlateTungsten>, <extrautils2:ingredients:12>, <ore:lightPlateTungsten>]
    ]);

recipes.remove(<thermalexpansion:frame>);
recipes.addShaped("te frame", <thermalexpansion:frame>, [
    [blackIron, null, blackIron], 
    [<thermalfoundation:material:136>, iridiumGear, <thermalfoundation:material:136>], 
    [blackIron, null, blackIron]
    ]);

recipes.remove(receptionCoil);
recipes.addShaped("reception coil", receptionCoil, [
    [null, null, goldElectronTube], 
    [null, <thermaldynamics:duct_0:1>, null], 
    [goldElectronTube, null, null]
    ]);

recipes.remove(conductanceCoil);
recipes.addShaped("conductance coil", conductanceCoil, [
    [null, null, <ore:plateElectrum>], 
    [null, wirelessRF, null], 
    [<ore:plateElectrum>, null, null]
    ]);

recipes.remove(transmissionCoil);
recipes.addShaped("transmission coil", transmissionCoil, [
    [null, null, cableConnector], 
    [null, hvCoilBlock, null], 
    [cableConnector, null, null]
    ]);

recipes.addShaped("hardened glass", hardenedGlass, [
    [refinedHardner, <calculator:reinforcedironingot>, refinedHardner], 
    [<calculator:reinforcedironingot>, <minecraft:glass>, <calculator:reinforcedironingot>], 
    [refinedHardner, <calculator:reinforcedironingot>, refinedHardner]
    ]);

recipes.remove(<thermalexpansion:machine:7>);
recipes.addShaped("fractioning still", <thermalexpansion:machine:7>, [
    [null, <ore:gearNickel>, null], 
    [<ore:plateInvar>, <contenttweaker:cheapframe>, <ore:plateInvar>], 
    [<extrautils2:flattransfernode:1>, <thermalfoundation:material:513>, <extrautils2:flattransfernode:1>]
    ]);

recipes.remove(<thermalexpansion:machine:10>);
recipes.addShaped("thermal centrifuge", <thermalexpansion:machine:10>, [
    [null, <advgenerators:turbine_rotor_steel>, null], 
    [<ore:ingotConstantan>, <contenttweaker:cheapframe>, <ore:ingotConstantan>], 
    [<ore:gearBronze>, <thermalfoundation:material:513>, <ore:gearBronze>]
    ]);

recipes.remove(<thermalexpansion:machine:1>);
recipes.addShaped("te pulverizer", <thermalexpansion:machine:1>, [
    [null, <ore:plateSignalum>, null], 
    [<ore:ingotTungsten>, <contenttweaker:enchantedframe>, <ore:ingotTungsten>], 
    [<ore:gearElectrum>, <thermalfoundation:material:513>, <ore:gearElectrum>]
    ]);

recipes.remove(<thermalexpansion:machine:6>);
recipes.addShaped("te magma melter", <thermalexpansion:machine:6>, [
    [null, <thermalfoundation:material:515>, null], 
    [<evilcraft:burning_gem_stone>, <contenttweaker:enchantedframe>, <evilcraft:burning_gem_stone>], 
    [<ore:gearInvar>, <thermalfoundation:material:513>, <ore:gearInvar>]
    ]);

recipes.remove(<thermalexpansion:machine:5>);
recipes.addShaped("te compactor", <thermalexpansion:machine:5>, [
    [null, <forestry:thermionic_tubes:6>, null], 
    [<minecraft:piston>, <contenttweaker:enchantedframe>, <minecraft:piston>], 
    [<ore:plateSteel>, <thermalfoundation:material:513>, <ore:plateSteel>]
    ]);

recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped("te induction smelter", <thermalexpansion:machine:3>, [
    [null, <actuallyadditions:block_heat_collector>, null], 
    [<magneticraft:copper_tank>, <contenttweaker:enchantedframe>, <magneticraft:copper_tank>], 
    [<ore:gearSteel>, <thermalfoundation:material:513>, <ore:gearSteel>]
    ]);

recipes.addShaped("destablized redstone ore", <thermalfoundation:ore_fluid:2>, [
    [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], 
    [<thermalfoundation:material:893>, <thermalfoundation:material:1026>, <thermalfoundation:material:893>], 
    [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
    ]);

recipes.addShaped("te cheap frame", <contenttweaker:cheapframe>, [
    [<ore:ingotSteel>, <chisel:factory:*>, <ore:ingotSteel>], 
    [<chisel:factory:*>, <jaopca:item_geardark>, <chisel:factory:*>], 
    [<ore:ingotSteel>, <chisel:factory:*>, <ore:ingotSteel>]
    ]);

recipes.remove(<thermalexpansion:machine:2>);
recipes.addShaped("te sawmill", <thermalexpansion:machine:2>, [
    [null, <stevescarts:modulecomponents:84>, null], 
    [<actuallyadditions:block_misc:4>, <contenttweaker:cheapframe>, <actuallyadditions:block_misc:4>], 
    [<ore:gearTin>, <thermalfoundation:material:513>, <ore:gearTin>]
    ]);

recipes.addShapeless(<contenttweaker:platslurry>, [
    <thermalfoundation:ore:6>, <contenttweaker:oreinjectionvodka>
    ]);

recipes.addShapeless("iridium block to ingot", <thermalfoundation:material:135> * 9, [
    <ore:blockIridium>
    ]);

recipes.addShapeless("iridium nug to ingot", <thermalfoundation:material:135>, [
    <thermalfoundation:material:199>, <thermalfoundation:material:199>, <thermalfoundation:material:199>,
    <thermalfoundation:material:199>, <thermalfoundation:material:199>, <thermalfoundation:material:199>,
    <thermalfoundation:material:199>, <thermalfoundation:material:199>, <thermalfoundation:material:199>
    ]);

recipes.remove(<thermalexpansion:dynamo>);
recipes.addShaped("steam dynamo", <thermalexpansion:dynamo>, [
    [null, <thermalfoundation:material:514>, null], 
    [<ore:gearCopper>, <ore:ingotBlackIron>, <ore:gearCopper>], 
    [<ore:ingotBlackIron>, <thermalexpansion:frame>, <ore:ingotBlackIron>]
    ]);

recipes.remove(<thermalexpansion:dynamo:1>);
recipes.addShaped("lava dynamo", <thermalexpansion:dynamo:1>, [
    [null, <thermalfoundation:material:514>, null], 
    [<ore:gearInvar>, <ore:ingotDemonicMetal>, <ore:gearInvar>], 
    [<ore:ingotDemonicMetal>, <thermalexpansion:frame>, <ore:ingotDemonicMetal>]
    ]);

recipes.remove(<thermalexpansion:dynamo:2>);
recipes.addShaped("compression dynamo", <thermalexpansion:dynamo:2>, [
    [null, <thermalfoundation:material:514>, null], 
    [<ore:gearTin>, <ore:ingotLead>, <ore:gearTin>], 
    [<ore:ingotLead>, <contenttweaker:cheapframe>, <ore:ingotLead>]
    ]);

recipes.remove(<thermalexpansion:dynamo:4>);
recipes.addShaped("redstone dynamo", <thermalexpansion:dynamo:4>, [
    [null, <thermalfoundation:material:514>, null], 
    [<ore:gearElectrum>, <ore:ingotGold>, <ore:gearElectrum>], 
    [<ore:ingotGold>, <contenttweaker:cheapframe>, <ore:ingotGold>]
    ]);

recipes.remove(<thermaldynamics:duct_32:1>);
recipes.addShaped(<thermaldynamics:duct_32:1> * 6, [
    [<thermaldynamics:duct_32>, <thermaldynamics:duct_32>, <thermaldynamics:duct_32>],
    [<thermaldynamics:duct_32>, <thermaldynamics:duct_32>, <thermaldynamics:duct_32>], 
    [<ore:ingotLead>, null, null]
    ]);

recipes.addShaped(<thermaldynamics:duct_32:1> * 6, [
    [<jaopca:item_sticktin>, <ore:ingotLead>, <jaopca:item_sticktin>],
    [<jaopca:item_sticktin>, <ore:ingotLead>, <jaopca:item_sticktin>], 
    [<jaopca:item_sticktin>, <ore:ingotLead>, <jaopca:item_sticktin>]
    ]);

recipes.remove(<thermaldynamics:duct_32>);
recipes.addShaped(<thermaldynamics:duct_32> * 6, [
    [<thermaldynamics:duct_32:1>, <thermaldynamics:duct_32:1>, <thermaldynamics:duct_32:1>],
    [<thermaldynamics:duct_32:1>, <thermaldynamics:duct_32:1>, <thermaldynamics:duct_32:1>], 
    [<extrautils2:decorativeglass>, <extrautils2:decorativeglass>, <extrautils2:decorativeglass>]
    ]);

recipes.addShaped(<thermaldynamics:duct_32> * 4, [
    [<jaopca:item_sticktin>, <extrautils2:decorativeglass>, <jaopca:item_sticktin>],
    [<jaopca:item_sticktin>, <extrautils2:decorativeglass>, <jaopca:item_sticktin>], 
    [<jaopca:item_sticktin>, <extrautils2:decorativeglass>, <jaopca:item_sticktin>]
    ]);

recipes.remove(<thermaldynamics:duct_0>);
recipes.addShaped(<thermaldynamics:duct_0> * 4, [
    [<jaopca:item_sticklead>, <minecraft:redstone>, <jaopca:item_sticklead>],
    [<extrautils2:decorativeglass>, <minecraft:redstone>, <extrautils2:decorativeglass>], 
    [<jaopca:item_sticklead>, <minecraft:redstone>, <jaopca:item_sticklead>]
    ]);

recipes.remove(<thermalexpansion:frame:128>);
recipes.addShaped(<thermalexpansion:frame:128>, [
    [<thermalfoundation:material:130>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:130>],
    [<appliedenergistics2:quartz_glass>, <thermalfoundation:material:262>, <appliedenergistics2:quartz_glass>], 
    [<thermalfoundation:material:130>, <thermalfoundation:material:515>, <thermalfoundation:material:130>]
    ]);

recipes.addShaped("rich slag", <thermalfoundation:material:865>, [
    [<thermalfoundation:material:771>, <immersiveengineering:material:7>, <thermalfoundation:material:771>],
    [<thermalfoundation:material:771>, <immersiveengineering:material:7>, <thermalfoundation:material:771>],
    [<calculator:soil>, <calculator:soil>, <calculator:soil>]
    ]);

recipes.remove(<thermaldynamics:relay>);
recipes.addShaped(<thermaldynamics:relay> * 2, [
    [null, null, null],
    [<ore:nuggetElectrum>, <minecraft:quartz>, <ore:nuggetElectrum>], 
    [<thermalfoundation:material:131>, <minecraft:redstone>, <thermalfoundation:material:131>]
    ]);

recipes.remove(<thermalexpansion:augment:720>);
recipes.addShaped(<thermalexpansion:augment:720>, [
    [null, <jaopca:item_geartungsten>, null],
    [<ore:plateElectrum>, <thermalfoundation:material:515>, <ore:plateElectrum>], 
    [null, <minecraft:emerald>, null]
    ]);


/*=========================
Crucible
=========================*/    
mods.thermalexpansion.Crucible.removeRecipe(<minecraft:ender_pearl>);
mods.thermalexpansion.Crucible.addRecipe(<liquid:platinum> * 2000, <thermalfoundation:ore:6>, 500);
mods.thermalexpansion.Crucible.addRecipe(<liquid:cyanite> * 500, <bigreactors:dustmetals:1>, 1000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:ender> * 200, <minecraft:chorus_flower>, 2000);

/*=========================
Insolator
=========================*/
//mods.thermalexpansion.Insolator.removeRecipe(<thermalfoundation:material:71>, null);

/*=========================
Induction Smelter
=========================*/   
mods.thermalexpansion.InductionSmelter.removeRecipe(iridiumOre, <minecraft:sand:*>);
mods.thermalexpansion.InductionSmelter.removeRecipe(iridiumOre, richSlag);
mods.thermalexpansion.InductionSmelter.removeRecipe(iridiumOre, cinnabar);
mods.thermalexpansion.InductionSmelter.removeRecipe(wolframiteOre, <minecraft:sand:*>);
mods.thermalexpansion.InductionSmelter.removeRecipe(wolframiteOre, richSlag);
mods.thermalexpansion.InductionSmelter.removeRecipe(wolframiteOre, cinnabar);
mods.thermalexpansion.InductionSmelter.removeRecipe(<draconicevolution:draconium_ore>, <minecraft:sand:*>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<draconicevolution:draconium_ore>, richSlag);
mods.thermalexpansion.InductionSmelter.removeRecipe(<draconicevolution:draconium_ore>, cinnabar);
mods.thermalexpansion.InductionSmelter.removeRecipe(platinumOre, cinnabar);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:osmaticsteel>, <mekanism:ingot:1>, <appliedenergistics2:material:45>, 1500);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:ironslag>, <rustic:dust_tiny_iron>, <rustic:dust_tiny_iron>, 1000);

/*=========================
Pulverizer 
=========================*/   
mods.thermalexpansion.Pulverizer.removeRecipe(iridiumOre);
mods.thermalexpansion.Pulverizer.removeRecipe(<draconicevolution:draconium_ore>);
mods.thermalexpansion.Pulverizer.removeRecipe(platinumOre);
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:70> * 2, <thermalfoundation:ore:6>, 4000, <thermalfoundation:material:68>, 10);


/*=========================
Fluid Transposer
=========================*/ 
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:sand>, <liquid:redstone>);
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:snowball>, <liquid:redstone>);
mods.thermalexpansion.Transposer.addFillRecipe(<extrautils2:ingredients:12>, <extendedcrafting:material>, <liquid:experience> * 1000, 1000);
mods.thermalexpansion.Transposer.addFillRecipe(<draconicevolution:dragon_heart>, <contenttweaker:heartcast>, <liquid:dblood> * 1000, 5000);
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:2049>, <minecraft:packed_ice>, <liquid:gasoline> * 250, 500);
mods.thermalexpansion.Transposer.addFillRecipe(<bigreactors:ingotmetals:3>, <bigreactors:ingotmetals>, <liquid:cyanite> * 500, 5000);
mods.thermalexpansion.Transposer.addFillRecipe(<bigreactors:ingotmetals:3>, <bigreactors:ingotmetals>, <liquid:cryotheum> * 1000, 5000);
mods.thermalexpansion.Transposer.addFillRecipe(<silentgems:nodemover>, <silentgems:craftingmaterial:14>, <liquid:ice> * 4000, 5000);
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:fertilizer>, <calculator:soil>, <liquid:sewage> * 100, 5000);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:oreinjectionvodka>, <contenttweaker:oreinjection>, <liquid:binnie.vodka> * 1000, 5000);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:oreinjectionaero>, <contenttweaker:oreinjection>, <liquid:aerotheum> * 1000, 5000);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:oreinjectiondna>, <contenttweaker:oreinjection>, <liquid:liquiddna> * 1000, 5000);

/*=========================
Refinery
=========================*/    
mods.thermalexpansion.Refinery.addRecipe(<liquid:binnie.spirit.neutral> * 250, <thermalfoundation:material:1026>, <liquid:aerotheum> * 500, 2000);
mods.thermalexpansion.Refinery.addRecipe(<liquid:sludge> * 250, <contenttweaker:crystalsludge>%3, <liquid:sewage> * 1000, 3000);
mods.thermalexpansion.Refinery.addRecipe(<liquid:experience> * 250, <actuallyadditions:item_solidified_experience>%3, <liquid:xpjuice> * 1000, 10000);
mods.thermalexpansion.Refinery.addRecipe(<liquid:experience> * 250, <actuallyadditions:item_solidified_experience>%3, <liquid:essence> * 1000, 10000);
mods.thermalexpansion.Refinery.addRecipe(<liquid:mithril> * 100, <thermalfoundation:material:200>%90, <liquid:mithril> * 200, 5000);
mods.thermalexpansion.Refinery.addRecipe(<liquid:aerotheum> * 500, <thermalfoundation:material:1026>, <liquid:liquidlithium> * 1000, 2000);

/*=========================
Sawmill
=========================*/
for items in copperBlocks{
    mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal> * 8, items, 1200);
}
for items in alumBlocks{
    mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:1> * 8, items, 1200);
}
for items in leadBlocks{
    mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:2> * 8, items, 1200);
}
for items in silverBlocks{
    mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:3> * 8, items, 1200);
}
for items in nickBlocks{
    mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:4> * 8, items, 1200);
}
//mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:5> * 8, <immersiveengineering:storage:5>, 1200);
for items in conBlocks{
    mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:6> * 8, items, 1200);
}
for items in eleBlocks{
    mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:7> * 8, items, 1200);
}
for items in steelBlocks{
    mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:8>*8, items, 1200);
}
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:9> * 8, <minecraft:iron_block>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:10> * 8, <minecraft:gold_block>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<contenttweaker:screws> * 2, <jaopca:item_stickosmium>, 800);
mods.thermalexpansion.Sawmill.addRecipe(<contenttweaker:screws> * 2, <jaopca:item_sticknickel>, 800);

/*=========================
Centrifuge
=========================*/ 
mods.thermalexpansion.Centrifuge.removeRecipe(<extrabees:honey_comb>);
mods.thermalexpansion.Centrifuge.removeRecipe(<extrabees:honey_comb:23>);
mods.thermalexpansion.Centrifuge.removeRecipe(<extrabees:honey_comb:11>);
mods.thermalexpansion.Centrifuge.removeRecipe(<forestry:bee_combs:15>);
mods.thermalexpansion.Centrifuge.addRecipe([<minecraft:gravel> % 50, (<thermalfoundation:material:198> * 2) % 70, <jaopca:item_rockychunkplatinum> % 20], <contenttweaker:platslurry>, <liquid:platinum> * 1000, 1000);
mods.thermalexpansion.Centrifuge.addRecipe([enderEgg % 100], <minecraft:dragon_egg>, <liquid:dblood> * 1000, 20000);
mods.thermalexpansion.Centrifuge.addRecipe([<appliedenergistics2:material:5> % 50, <evilcraft:dull_dust> % 40, <appliedenergistics2:crystal_seed> % 5], <appliedenergistics2:material:2>, null, 1000);
mods.thermalexpansion.Centrifuge.addRecipe([<appliedenergistics2:material:5> % 35, <evilcraft:dull_dust> % 20, <appliedenergistics2:crystal_seed> % 2], <actuallyadditions:item_dust:5>, null, 1000);
mods.thermalexpansion.Centrifuge.addRecipe([<traverse:dead_grass> % 100, <calculator:soil> % 50, <forestry:beeswax> % 50, <forestry:honey_drop> % 30], <extrabees:honey_comb>, null, 2000);
mods.thermalexpansion.Centrifuge.addRecipe([<xreliquary:mob_ingredient> % 70, <xreliquary:mob_ingredient:1> % 30, <forestry:beeswax> % 30, <forestry:honey_drop> % 25], <extrabees:honey_comb:23>, null, 2000);
mods.thermalexpansion.Centrifuge.addRecipe([<minecraft:cobblestone> % 100, <minecraft:stone> % 75, <appliedenergistics2:sky_stone_block> % 40, <forestry:beeswax> % 40, <forestry:honey_drop> % 25], <extrabees:honey_comb:11>, null, 2000);
mods.thermalexpansion.Centrifuge.addRecipe([<minecraft:vine> % 80, <rustic:marsh_mallow> % 50, <forestry:beeswax> % 50, <forestry:honey_drop> % 40], <forestry:bee_combs:15>, null, 2000);

/* This doesnt actually works.... whyyyy
mods.thermalexpansion.Centrifuge.addRecipe([<forestry:honey_drop> % 75, <extrabees:propolis:1> % 60], <extrabees:honey_comb:3>, null, 2000);
mods.thermalexpansion.Centrifuge.addRecipe([<extrabees:honey_drop:5> % 80, <forestry:honey_drop> % 75], <extrabees:honey_comb:32>, null, 2000);
mods.thermalexpansion.Centrifuge.addRecipe([<forestry:beeswax> % 50, <forestry:honey_drop> % 25, <extrabees:misc:14> % 100], <extrabees:honey_comb:40>, null, 2000);
mods.thermalexpansion.Centrifuge.addRecipe([<forestry:beeswax> % 50, <forestry:honey_drop> % 25, <extrabees:misc:16> % 100], <extrabees:honey_comb:42>, null, 2000);
mods.thermalexpansion.Centrifuge.addRecipe([<forestry:beeswax> % 50, <forestry:honey_drop> % 25, <extrabees:misc:3> % 100], <extrabees:honey_comb:53>, null, 2000);


mods.thermalexpansion.Centrifuge.addRecipe([zzzzz % 50, zzzzz % 25, zzzzz % 40], zzzzzz, null, 2000);

mods.thermalexpansion.Centrifuge.addRecipe([zzzzz % 50, <forestry:honey_drop> % 75], zzzzzz, null, 2000);

mods.thermalexpansion.Centrifuge.addRecipe([<forestry:beeswax> % 50, <forestry:honey_drop> % 25, zzzzz % 100], zzzzzz, null, 2000);
*/


/*=========================
Energetic Infuser
=========================*/ 
mods.thermalexpansion.Infuser.addRecipe(<draconicevolution:draconium_block:1>, <draconicevolution:draconium_block>, 1500000);
mods.thermalexpansion.Infuser.addRecipe(<calculator:electricdiamond>, <calculator:firediamond>, 12000);


/*=========================
Compactor - Press 
=========================*/ 
mods.thermalexpansion.Compactor.addPressRecipe(<thermalfoundation:material:136>, <forestry:can:1>.withTag({Fluid: {FluidName: "mithril", Amount: 1000}}), 500);