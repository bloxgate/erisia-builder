var heavyGoldPlate = <magneticraft:heavy_plates:1>;
var skystoneDust = <appliedenergistics2:material:45>;
var goldGear = <thermalfoundation:material:25>;
var dnaBucket = <forge:bucketfilled>.withTag({FluidName: "liquiddna", Amount: 1000});
var dnaCan = <forestry:can:1>.withTag({Fluid: {FluidName: "liquiddna", Amount: 1000}});
var rockyTungsten = <magneticraft:rocky_chunks:5>;
var crystalOilBucket = <forge:bucketfilled>.withTag({FluidName: "crystaloil", Amount: 1000});
var wolframiteOre = <magneticraft:ores:3>;
var heavyLeadPlate = <magneticraft:heavy_plates:3>;
var hempFabric = <immersiveengineering:material:5>;
var meshFabric = <magneticraft:crafting:6>;

<magneticraft:dusts>.addTooltip("Cannot be used in crafting recipes");

recipes.remove(<ore:ingotTungsten>);
recipes.remove(wolframiteOre);
recipes.removeByRecipeName("thermalfoundation:dusts_2");

/*=========================
Recipe Changes - Magneticraft
=========================*/

recipes.remove(<magneticraft:crushing_table>);
recipes.addShaped("crushing table", <magneticraft:crushing_table>, [
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], 
    [null, <ore:plankTreatedWood>, null], 
    [<ore:logWood>, <ore:logWood>, <ore:logWood>]
    ]);

recipes.addShapeless(<magneticraft:rocky_chunks:5> * 2, [
    <ore:oreTungsten>, <contenttweaker:oreinjectiondna>
    ]);

recipes.addShapeless(<magneticraft:chunks:5> * 2, [
    <ore:oreTungsten>, <contenttweaker:oreinjectionaero>
    ]);

recipes.addShapeless("tungsten block to ingot", <magneticraft:ingots:5> * 9, [
    <ore:blockTungsten>
    ]);

recipes.remove(meshFabric);
recipes.addShaped("mesh fabric", meshFabric, [
    [<minecraft:string>, hempFabric, <minecraft:string>], 
    [hempFabric, <minecraft:string>, hempFabric], 
    [<minecraft:string>, hempFabric, <minecraft:string>]
    ]);

recipes.addShapeless(<chisel:limestone2:7>, [
    <magneticraft:limestone>
    ]);

recipes.addShapeless(<magneticraft:limestone>, [
    <chisel:limestone2:7>
    ]);

recipes.addShapeless(<magneticraft:guide_book>, [
    <minecraft:book>, <minecraft:redstone>
    ]);

recipes.remove(<magneticraft:copper_tank>);
recipes.addShaped(<magneticraft:copper_tank>, [
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [<ore:blockGlass>, null, <ore:blockGlass>], 
    [<ore:blockGlass>, <ore:plateCopper>, <ore:blockGlass>]
    ]);

recipes.remove(<magneticraft:multiblock_parts:3>);
recipes.addShaped(<magneticraft:multiblock_parts:3> * 6, [
    [<magneticraft:nuggets:5>, <ore:plateGold>, <magneticraft:nuggets:5>],
    [<ore:plateGold>, <minecraft:stone>, <ore:plateGold>], 
    [<magneticraft:nuggets:5>, <ore:plateGold>, <magneticraft:nuggets:5>]
    ]);

recipes.remove(<magneticraft:thermopile>);
recipes.addShaped(<magneticraft:thermopile>, [
    [<ore:ingotSteel>, <ore:plateCopper>, <ore:ingotSteel>],
    [<ore:plateCopper>, <magneticraft:multiblock_parts>, <ore:plateCopper>], 
    [<ore:ingotSteel>, <ore:plateCopper>, <ore:ingotSteel>]
    ]);

recipes.remove(<magneticraft:electric_furnace>);
recipes.addShaped(<magneticraft:electric_furnace>, [
    [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>],
    [<minecraft:brick_block>, null, <minecraft:brick_block>], 
    [<minecraft:brick_block>, <ore:plateCopper>, <minecraft:brick_block>]
    ]);

recipes.remove(<magneticraft:battery_item_medium>);
recipes.addShaped(<magneticraft:battery_item_medium>, [
    [null, <ore:ingotCopper>, null],
    [<magneticraft:battery_item_low>, <ore:plateLead>, <magneticraft:battery_item_low>], 
    [<magneticraft:battery_item_low>, <ore:plateLead>, <magneticraft:battery_item_low>]
    ]);

recipes.remove(<magneticraft:multiblock_column>);
recipes.addShaped(<magneticraft:multiblock_column> * 2, [
    [<ore:plateLead>, <minecraft:iron_ingot>, <ore:plateLead>],
    [<ore:plateLead>, <ore:stone>, <ore:plateLead>], 
    [<ore:plateLead>, <minecraft:iron_ingot>, <ore:plateLead>]
    ]);

recipes.remove(<magneticraft:battery_item_low>);
recipes.addShaped(<magneticraft:battery_item_low>, [
    [<ore:nuggetIron>, <ore:nuggetCopper>, <ore:nuggetIron>],
    [<ore:plateLead>, <ore:dustSulfur>, <ore:plateLead>], 
    [<ore:plateLead>, <ore:dustSulfur>, <ore:plateLead>]
    ]);

recipes.remove(<magneticraft:battery>);
recipes.addShaped(<magneticraft:battery>, [
    [<magneticraft:battery_item_low>, <magneticraft:battery_item_low>, <magneticraft:battery_item_low>],
    [<ore:plateIron>, <magneticraft:multiblock_parts:2>, <ore:plateIron>], 
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
    ]);

recipes.remove(<magneticraft:combustion_chamber>);
recipes.addShaped(<magneticraft:combustion_chamber>, [
    [<minecraft:brick>, <ore:plateIron>, <minecraft:brick>],
    [<minecraft:brick>, null, <minecraft:iron_ingot>], 
    [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>]
    ]);

recipes.remove(<magneticraft:wind_turbine>);
recipes.addShaped(<magneticraft:wind_turbine>, [
    [<magneticraft:crafting:6>, <ore:plateIron>, <magneticraft:crafting:6>],
    [<ore:plateIron>, <magneticraft:multiblock_parts>, <ore:plateIron>], 
    [<magneticraft:crafting:6>, <ore:plateIron>, <magneticraft:crafting:6>]
    ]);

recipes.remove(<magneticraft:steam_boiler>);
recipes.addShaped(<magneticraft:steam_boiler>, [
    [<minecraft:iron_ingot>, <ore:plateIron>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], 
    [<minecraft:iron_ingot>, <ore:plateIron>, <minecraft:iron_ingot>]
    ]);

recipes.remove(<magneticraft:iron_pipe>);
recipes.addShaped(<magneticraft:iron_pipe> * 12, [
    [null, <ore:plateIron>, null],
    [<ore:plateIron>, <ore:blockGlass>, <ore:plateIron>], 
    [null, <ore:plateIron>, null]
    ]);

recipes.remove(<magneticraft:tube_light>);
recipes.addShaped(<magneticraft:tube_light>, [
    [null, null, null],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
    [<ore:nuggetIron>, <minecraft:glowstone_dust>, <ore:nuggetIron>]
    ]);

recipes.remove(<magneticraft:multiblock_parts:5>);
recipes.addShaped(<magneticraft:multiblock_parts:5>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, null, <ore:plateIron>], 
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
    ]);

recipes.remove(<magneticraft:multiblock_parts>);
recipes.addShaped(<magneticraft:multiblock_parts> * 2, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<minecraft:iron_ingot>, <magneticraft:crafting:2>, <minecraft:iron_ingot>], 
    [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]
    ]);

recipes.remove(<magneticraft:copper_coil>);
recipes.addShaped(<magneticraft:copper_coil>, [
    [null, <thermalfoundation:material:128>, null],
    [<thermalfoundation:material:128>, <ore:plateIron>, <thermalfoundation:material:128>], 
    [null, <thermalfoundation:material:128>, null]
    ]);

recipes.remove(<magneticraft:crafting:2>);
recipes.addShaped(<magneticraft:crafting:2>*2, [
    [<ore:ingotLead>, <ore:plateIron>, <ore:nuggetCopper>],
    [<magneticraft:copper_coil>, <minecraft:redstone>, <ore:ingotIron>], 
    [<ore:ingotLead>, <ore:plateIron>, <ore:nuggetCopper>]
    ]);

recipes.remove(<magneticraft:crafting:5>);
recipes.addShaped(<magneticraft:crafting:5>, [
    [<ore:plateIron>, <minecraft:string>, <ore:plateIron>],
    [<minecraft:string>, <ore:plateIron>, <minecraft:string>], 
    [<ore:plateIron>, <minecraft:string>, <ore:plateIron>]
    ]);

recipes.remove(<magneticraft:water_generator>);
recipes.addShaped(<magneticraft:water_generator>, [
    [<ore:plateIron>, <ore:blockGlass>, <ore:plateIron>],
    [<ore:blockGlass>, <minecraft:water_bucket>, <ore:blockGlass>], 
    [<ore:plateIron>, <ore:blockGlass>, <ore:plateIron>]
    ]);

recipes.addShaped(<magneticraft:multiblock_parts:4>, [
    [<minecraft:iron_ingot>, <magneticraft:copper_coil>, <minecraft:iron_ingot>],
    [<ore:plateLead>, <magneticraft:copper_coil>, <ore:plateLead>], 
    [<minecraft:iron_ingot>, <magneticraft:copper_coil>, <minecraft:iron_ingot>]
    ]);

recipes.remove(<magneticraft:electric_pole_transformer>);
recipes.addShaped(<magneticraft:electric_pole_transformer>, [
    [null, <magneticraft:connector>, null],
    [<ore:plateLead>, <ore:ingotCopper>, <ore:plateLead>], 
    [<ore:plateLead>, <ore:ingotCopper>, <ore:plateLead>]
    ]);

/*=========================
Crushing Table
=========================*/
mods.magneticraft.CrushingTable.removeRecipe(<contenttweaker:osmaticsteelore>);
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:ores:2>);
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:ores:3>);
mods.magneticraft.CrushingTable.removeRecipe(<mekanism:oreblock>);
//mods.magneticraft.CrushingTable.removeRecipe(<minecraft:sandstone>);
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:osmaticsteelore>, <contenttweaker:osmaticsteeldust>, false);
mods.magneticraft.CrushingTable.addRecipe(<minecraft:sandstone>, <minecraft:sand>, false); 
mods.magneticraft.CrushingTable.addRecipe(<minecraft:red_sandstone>, <minecraft:sand:1>, false);
mods.magneticraft.CrushingTable.addRecipe(<minecraft:gold_block>, heavyGoldPlate, false);
mods.magneticraft.CrushingTable.addRecipe(heavyGoldPlate, goldGear, false); 
mods.magneticraft.CrushingTable.addRecipe(<appliedenergistics2:sky_stone_block>, skystoneDust, false);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:storage:3>, heavyLeadPlate, true);
mods.magneticraft.CrushingTable.addRecipe(<calculator:circuitdamaged>, <minecraft:redstone>, true);
mods.magneticraft.CrushingTable.addRecipe(<silentgems:gemblockdark:10>, <calculator:largetanzanite>, false);
mods.magneticraft.CrushingTable.addRecipe(<silentgems:gemblock:11>, <calculator:largeamethyst>, false);
mods.magneticraft.CrushingTable.addRecipe(<randomthings:lavacharm>, <minecraft:blaze_powder> * 2, true);
mods.magneticraft.CrushingTable.addRecipe(<minecraft:glass_bottle>, <contenttweaker:glassshards>, false);

/*=========================
Sluice Box
=========================*/
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:5>);

/*=========================
Grinder
=========================*/
//mods.magneticraft.Grinder.removeRecipe(<mekanism:oreblock>);