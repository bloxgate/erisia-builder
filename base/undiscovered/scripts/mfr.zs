
recipes.remove(<mekanism:machineblock:8>);
recipes.remove(<industrialforegoing:ore_processor>); //only process redstone/diamonds meh

mods.jei.JEI.addDescription(<liquid:meat>, "Used in the Meat Feeder to automatically restore hunger");

/*=========================
Recipe Changes - MFR
=========================*/

recipes.remove(<teslacorelib:machine_case>);
recipes.addShaped("mfr basic case", <teslacorelib:machine_case>, [
    [<ore:ingotInvar>, <ore:ingotAluminium>, <ore:ingotInvar>], 
    [<ore:ingotAluminium>, <immersiveengineering:material:9>, <ore:ingotAluminium>], 
    [<ore:ingotInvar>, <ore:ingotAluminium>, <ore:ingotInvar>]
    ]);

recipes.remove(<thermalexpansion:machine:7>);
recipes.addShaped("machine case", <contenttweaker:expertcase>, [
    [<thermalfoundation:material:135>, <ore:wireElectrum>, <thermalfoundation:material:135>], 
    [<ore:wireElectrum>, <actuallyadditions:block_crystal_empowered>, <ore:wireElectrum>], 
    [<thermalfoundation:material:135>, <ore:wireElectrum>, <thermalfoundation:material:135>]
    ]);

recipes.addShaped("adv mfr case", <contenttweaker:advancedcase>, [
    [<forestry:thermionic_tubes:10>, <forestry:crafting_material:1>, <forestry:thermionic_tubes:10>], 
    [<forestry:crafting_material:1>, <ore:blockLead>, <forestry:crafting_material:1>], 
    [<forestry:thermionic_tubes:10>, <forestry:crafting_material:1>, <forestry:thermionic_tubes:10>]
    ]);

recipes.addShapeless("syngas mesh", <forestry:crafting_material:1>, [
    <magneticraft:crafting:6>, <forestry:can:1>.withTag({Fluid: {FluidName: "syngas", Amount: 1000}})
    ]);

recipes.remove(<industrialforegoing:material_stonework_factory>);
recipes.addShaped("mfr stoneworks", <industrialforegoing:material_stonework_factory>, [
    [<industrialforegoing:plastic>, <minecraft:piston>, <industrialforegoing:plastic>], 
    [<minecraft:iron_pickaxe>, <contenttweaker:advancedcase>, <minecraft:iron_pickaxe>], 
    [<minecraft:water_bucket>, <minecraft:redstone_block>, <minecraft:lava_bucket>]
    ]);

recipes.remove(<industrialforegoing:potion_enervator>);
recipes.addShaped("mfr potions", <industrialforegoing:potion_enervator>, [
    [<industrialforegoing:plastic>, <minecraft:brewing_stand>, <industrialforegoing:plastic>], 
    [<thermalfoundation:material:25>, <contenttweaker:advancedcase>, <thermalfoundation:material:25>], 
    [<minecraft:repeater>, <thermalfoundation:material:25>, <minecraft:repeater>]
    ]);

recipes.remove(<industrialforegoing:animal_growth_increaser>);
recipes.addShaped("mfr animal growth", <industrialforegoing:animal_growth_increaser>, [
    [<industrialforegoing:plastic>, <ore:cropWheat>, <industrialforegoing:plastic>], 
    [<ore:cropWheat>, <contenttweaker:advancedcase>, <ore:cropWheat>], 
    [<magneticraft:feeding_trough>, <thermalfoundation:material:25>, <magneticraft:feeding_trough>]
    ]);

recipes.remove(<industrialforegoing:lava_fabricator>);
recipes.addShaped("mfr lava factory", <industrialforegoing:lava_fabricator>, [
    [<industrialforegoing:plastic>, <minecraft:obsidian>, <industrialforegoing:plastic>], 
    [<minecraft:magma_cream>, <contenttweaker:advancedcase>, <minecraft:magma_cream>], 
    [<minecraft:blaze_rod>, <minecraft:redstone_block>, <minecraft:blaze_rod>]
    ]);

recipes.remove(<industrialforegoing:enchantment_invoker>);
recipes.addShaped("mfr enchanter", <industrialforegoing:enchantment_invoker>, [
    [<industrialforegoing:plastic>, <ore:bookshelf>, <industrialforegoing:plastic>], 
    [<minecraft:diamond>, <contenttweaker:advancedcase>, <minecraft:diamond>], 
    [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]
    ]);

recipes.remove(<industrialforegoing:mob_relocator>);
recipes.addShaped("mfr mob killer", <industrialforegoing:mob_relocator>, [
    [<industrialforegoing:plastic>, <evilcraft:spikey_claws>, <industrialforegoing:plastic>], 
    [<minecraft:piston>, <contenttweaker:advancedcase>, <minecraft:piston>], 
    [<thermalfoundation:material:290>, <minecraft:redstone_block>, <thermalfoundation:material:290>]
    ]);

recipes.remove(<industrialforegoing:mob_slaughter_factory>);
recipes.addShaped("mfr mob juicer", <industrialforegoing:mob_slaughter_factory>, [
    [<industrialforegoing:plastic>, <xreliquary:mob_ingredient:10>, <industrialforegoing:plastic>], 
    [<calculator:reinforcedironsword>, <contenttweaker:advancedcase>, <calculator:reinforcedironsword>], 
    [<thermalfoundation:material:292>, <harvestcraft:juiceritem>, <thermalfoundation:material:292>]
    ]);

recipes.remove(<industrialforegoing:black_hole_tank>);
recipes.addShaped("mfr dsu tank", <industrialforegoing:black_hole_tank>, [
    [<industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>], 
    [<minecraft:ender_eye>, <evilcraft:dark_tank>, <minecraft:ender_eye>], 
    [<mekanism:machineblock2:11>, <contenttweaker:advancedcase>, <magneticraft:copper_tank>]
    ]);

recipes.remove(<industrialforegoing:black_hole_unit>);
recipes.addShaped("mfr dsu", <industrialforegoing:black_hole_unit>, [
    [<industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>], 
    [<minecraft:ender_eye>, <storagedrawers:upgrade_storage:4>, <minecraft:ender_eye>], 
    [<immersiveengineering:wooden_device0>, <contenttweaker:advancedcase>, <actuallyadditions:block_giant_chest_medium>]
    ]);

recipes.remove(<industrialforegoing:laser_drill>);
recipes.addShaped("mfr laser drill", <industrialforegoing:laser_drill>, [
    [<industrialforegoing:plastic>, <industrialforegoing:laser_lens>, <industrialforegoing:plastic>], 
    [<thermalfoundation:glass_alloy:6>, <actuallyadditions:block_laser_relay_extreme>, <thermalfoundation:glass_alloy:6>], 
    [<thermalfoundation:material:295>, <contenttweaker:expertcase>, <thermalfoundation:material:295>]
    ]);

recipes.remove(<industrialforegoing:laser_base>);
recipes.addShaped("mfr laser base", <industrialforegoing:laser_base>, [
    [<industrialforegoing:plastic>, <thermalfoundation:material:166>, <industrialforegoing:plastic>], 
    [<thermalfoundation:glass_alloy:6>, <thermalfoundation:material:166>, <thermalfoundation:glass_alloy:6>], 
    [<thermalfoundation:material:294>, <contenttweaker:expertcase>, <thermalfoundation:material:294>]
    ]);

recipes.remove(<industrialforegoing:oredictionary_converter>);
recipes.addShaped("mfr oredict converter", <industrialforegoing:oredictionary_converter>, [
    [<industrialforegoing:plastic>, <stevescarts:modulecomponents:49>, <industrialforegoing:plastic>], 
    [<extrautils2:decorativesolidwood:1>, <contenttweaker:expertcase>, <extrautils2:decorativesolidwood:1>], 
    [<thermalfoundation:coin:64>, <thermalfoundation:coin:66>, <thermalfoundation:coin:1>]
    ]);

recipes.remove(<industrialforegoing:mob_duplicator>);
recipes.addShaped("mfr mob spawner", <industrialforegoing:mob_duplicator>, [
    [<industrialforegoing:plastic>, <minecraft:dragon_egg>, <industrialforegoing:plastic>], 
    [<minecraft:magma_cream>, <contenttweaker:expertcase>, <minecraft:magma_cream>], 
    [<actuallyadditions:item_crystal_empowered:4>, <calculator:redstoneingot>, <actuallyadditions:item_crystal_empowered:4>]
    ]);

recipes.remove(<industrialforegoing:black_hole_controller>);
recipes.addShaped("mfr dsu controller", <industrialforegoing:black_hole_controller>, [
    [<industrialforegoing:plastic>, <industrialforegoing:black_hole_unit>, <industrialforegoing:plastic>], 
    [<minecraft:shulker_shell>, <contenttweaker:expertcase>, <minecraft:shulker_shell>], 
    [<industrialforegoing:plastic>, <actuallyadditions:block_crystal:3>, <industrialforegoing:plastic>]
    ]);

recipes.remove(<industrialforegoing:energy_field_provider>);
recipes.addShaped("mrf wireless energy", <industrialforegoing:energy_field_provider>, [
    [<calculator:redstoneingot>, <industrialforegoing:energy_field_addon>, <calculator:redstoneingot>], 
    [<calculator:energymodule>, <thermalfoundation:material:293>, <calculator:energymodule>], 
    [<thermalfoundation:material:135>, <thermalfoundation:material:293>, <thermalfoundation:material:135>]
    ]);

recipes.remove(<teslacorelib:base_addon>);
recipes.addShaped("mfr upgrade base", <teslacorelib:base_addon>, [
    [<ore:rodCopper>, <ore:wireElectrum>, <ore:rodCopper>], 
    [<ore:wireElectrum>, <jaopca:item_plateapatite>, <ore:wireElectrum>], 
    [<ore:rodCopper>, <ore:wireElectrum>, <ore:rodCopper>]
    ]);

recipes.remove(<industrialforegoing:petrified_fuel_generator>);
recipes.addShaped("mfr furnace gen", <industrialforegoing:petrified_fuel_generator>, [
    [<industrialforegoing:plastic>, <calculator:firediamond>, <industrialforegoing:plastic>], 
    [<thermalfoundation:material:292>, <contenttweaker:advancedcase>, <thermalfoundation:material:292>], 
    [<industrialforegoing:plastic>, <magneticraft:electric_furnace>, <industrialforegoing:plastic>]
    ]);



/*=========================
Laser Drill
=========================*/
//mods.industrialforegoing.LaserDrill.remove(<magneticraft:ores:2>);

/*=========================
Sludge Refiner
=========================*/
mods.industrialforegoing.SludgeRefiner.add(<contenttweaker:crystalsludge>, 4);
