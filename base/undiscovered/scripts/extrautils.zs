var leadedConcrete = <immersiveengineering:stone_decoration:7>;
var treatedStick = <immersiveengineering:material>;
var breakerSwitch = <immersiveengineering:connector:9>;
var ieCircuit = <immersiveengineering:material:27>;
var redstoneGear = <extrautils2:ingredients:1>;

recipes.remove(<extrautils2:suncrystal:250>);
recipes.remove(<extrautils2:endershard>);
recipes.remove(<extrautils2:angelring>);
//recipes.remove(<flyringbaublemod:angelring>);
recipes.remove(<extrautils2:angelring:4>);
recipes.remove(<extrautils2:angelring:5>);
recipes.remove(<extrautils2:angelring:3>);
recipes.remove(<extrautils2:angelring:2>);
recipes.remove(<extrautils2:angelring:1>);
//recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), true);
//recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}), true);
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), true);
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}), true);
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}), true);
/*=========================
Recipe Changes - Extra Utils
=========================*/

recipes.remove(<extrautils2:machine>, true);
recipes.addShaped("exu machine block", <extrautils2:machine>, [
    [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
    [<ore:plateSteel>, leadedConcrete, <ore:plateSteel>],
    [<calculator:reinforcedironingot>, <calculator:reinforcedironingot>, <calculator:reinforcedironingot>]
    ]);

recipes.remove(<extrautils2:glasscutter>);
recipes.addShaped("glass cutter", <extrautils2:glasscutter>, [
    [null, null, <calculator:reinforcedironingot>], 
    [null, treatedStick, <calculator:reinforcedironingot>], 
    [<calculator:reinforcedironingot>, null, null]
    ]);

recipes.remove(<extrautils2:user>);
recipes.addShaped("mech user", <extrautils2:user>, [
    [<minecraft:dropper>, ieCircuit, null], 
    [breakerSwitch, null, null], 
    [null, null, null]
    ]);

recipes.remove(<extrautils2:crafter>);
recipes.addShaped("mech crafter", <extrautils2:crafter>, [
    [<minecraft:dropper>, redstoneGear, null], 
    [<extendedcrafting:handheld_table>, null, null], 
    [null, null, null]
    ]);

recipes.remove(<extrautils2:teleporter:1>);
recipes.addShaped("deep dark", <extrautils2:teleporter:1>, [
    [<astralsorcery:itemcraftingcomponent:1>, <botania:biomestonea:11>, <astralsorcery:itemcraftingcomponent:1>], 
    [<botania:biomestonea:11>, <ore:blockPsiDust>, <botania:biomestonea:11>], 
    [<astralsorcery:itemcraftingcomponent:1>, <botania:biomestonea:11>, <astralsorcery:itemcraftingcomponent:1>]
    ]);

recipes.remove(<extrautils2:quarry>);
recipes.addShaped("exu2 quarry", <extrautils2:quarry>, [
    [<thermalfoundation:storage:8>, <psi:psi_decorative:7>, <thermalfoundation:storage:8>], 
    [<psi:psi_decorative:7>, <draconicevolution:awakened_core>, <psi:psi_decorative:7>], 
    [<thermalfoundation:storage:8>, <psi:psi_decorative:7>, <thermalfoundation:storage:8>]
    ]);

recipes.remove(<extrautils2:resonator>);
recipes.addShaped("resonator", <extrautils2:resonator>, [
    [<immersiveengineering:wirecoil:5>, <extendedcrafting:material>, <immersiveengineering:wirecoil:5>], 
    [<calculator:reinforcedironingot>, <extrautils2:ingredients>, <calculator:reinforcedironingot>], 
    [<calculator:reinforcedironingot>, <calculator:reinforcedironingot>, <calculator:reinforcedironingot>]
    ]);

recipes.remove(<extrautils2:pipe>);
recipes.addShaped("exu2 pipe", <extrautils2:pipe>*16, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
    [<extrautils2:decorativeglass>, <minecraft:redstone_block>, <extrautils2:decorativeglass>], 
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
    ]);
/*
recipes.addShapeless("angel wings", <flyringbaublemod:angelring:1>, [
    <flyringbaublemod:angelring>, <silentgems:craftingmaterial:16>
    ]);

recipes.addShapeless("angel fairy wings", <flyringbaublemod:angelring:2>, [
    <flyringbaublemod:angelring>, <botania:cosmetic:8>
    ]);

recipes.addShapeless("angel devil wings", <flyringbaublemod:angelring:3>, [
    <flyringbaublemod:angelring>, <ore:ingotDemonicMetal>
    ]);

recipes.addShapeless("angel dark wings", <flyringbaublemod:angelring:5>, [
    <flyringbaublemod:angelring>, <xreliquary:mob_ingredient:5>
    ]);

recipes.addShapeless("angel gold wings", <flyringbaublemod:angelring:4>, [
    <flyringbaublemod:angelring>, <silentgems:craftingmaterial:17>
    ]);
*/
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}), true);
recipes.addShaped("survival gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}), [
    [<immersiveengineering:stone_decoration:7>, <immersiveengineering:stone_decoration:7>, <immersiveengineering:stone_decoration:7>], 
    [<immersiveengineering:stone_decoration:7>, <immersiveengineering:material:8>, <immersiveengineering:stone_decoration:7>], 
    [<minecraft:redstone>, <minecraft:furnace>, <minecraft:redstone>]
    ]);

recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}), true);
recipes.addShaped("exu furnace gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), [
    [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>], 
    [<minecraft:iron_block>, <extrautils2:machine>, <minecraft:iron_block>], 
    [<minecraft:redstone_block>, <magneticraft:electric_furnace>, <minecraft:redstone_block>]
    ]);

recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}), true);
recipes.addShaped("overclocked gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}), [
    [<jaopca:item_platelapis>, <jaopca:item_platelapis>, <jaopca:item_platelapis>], 
    [<jaopca:item_platelapis>, <minecraft:gold_block>, <jaopca:item_platelapis>], 
    [<calculator:material:9>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <calculator:material:9>]
    ]);

recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}), true);
recipes.addShaped("netherstar gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}), [
    [<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>], 
    [<extrautils2:simpledecorative:2>, <actuallyadditions:item_misc:19>, <extrautils2:simpledecorative:2>], 
    [<calculator:material:9>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <calculator:material:9>]
    ]);

recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), true);
recipes.addShaped("exu slime gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), [
    [<randomthings:compressedslimeblock>, <randomthings:compressedslimeblock>, <randomthings:compressedslimeblock>], 
    [<harvestcraft:gummybearsitem>, <cookingforblockheads:milk_jar>, <harvestcraft:gummybearsitem>], 
    [<minecraft:redstone>, <extrautils2:machine>, <minecraft:redstone>]
    ]);

recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}), true);
recipes.addShaped("exu pink gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}), [
    [<minecraft:concrete:6>, <minecraft:concrete:6>, <minecraft:concrete:6>], 
    [<ore:dyePink>, <ore:blockWoolPink>, <ore:dyePink>], 
    [<minecraft:redstone>, <extrautils2:machine>, <minecraft:redstone>]
    ]);

recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), true);
recipes.addShaped("exu explosive gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), [
    [<minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>], 
    [<minecraft:fire_charge>, <minecraft:tnt>, <minecraft:fire_charge>], 
    [<ore:dustSulfur>, <extrautils2:machine>, <ore:dustSulfur>]
    ]);

recipes.remove(<extrautils2:indexer>);
recipes.addShaped(<extrautils2:indexer>, [
    [<extrautils2:decorativesolid:3>, <extrautils2:ingredients>, <extrautils2:decorativesolid:3>],
    [<calculator:flawlessdiamond>, <extrautils2:screen>, <calculator:flawlessdiamond>], 
    [<extrautils2:decorativesolid:3>, <extrautils2:ingredients>, <extrautils2:decorativesolid:3>]
    ]);

recipes.remove(<extrautils2:indexerremote>);
recipes.addShaped(<extrautils2:indexerremote>, [
    [<thermalfoundation:material:354>, <extrautils2:ingredients:2>, <thermalfoundation:material:354>],
    [<thermalfoundation:material:354>, <extrautils2:screen>, <thermalfoundation:material:354>], 
    [<thermalfoundation:material:354>, <jaopca:item_geartungsten>, <thermalfoundation:material:354>]
    ]);

recipes.remove(<extrautils2:bagofholding>);
recipes.addShaped(<extrautils2:bagofholding>, [
    [<harvestcraft:hardenedleatheritem>, <ore:plateGold>, <harvestcraft:hardenedleatheritem>],
    [<extrautils2:decorativesolidwood:1>, <actuallyadditions:block_giant_chest>, <extrautils2:decorativesolidwood:1>], 
    [<harvestcraft:hardenedleatheritem>, <ore:plateGold>, <harvestcraft:hardenedleatheritem>]
    ]);

recipes.addShaped("moon stone", <extrautils2:ingredients:5>, [
    [<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:2>],
    [<astralsorcery:itemcraftingcomponent:2>, <minecraft:diamond>, <astralsorcery:itemcraftingcomponent:2>], 
    [<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:2>]
    ]);
