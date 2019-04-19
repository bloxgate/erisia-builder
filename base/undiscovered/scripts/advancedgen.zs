
mods.jei.JEI.addDescription(<advgenerators:turbine_controller>, ["Acceptable Fuel","Gasoline 150 rf/mb", "Diesel 500 rf/mb", "Biodiesel 600 rf/mb", "Biofuel 800 rf/mb", "Vodka 800 rf/mb","Ethanol 800 rf/mb", "Crystal Oil 850 rf/mb", "Neutral Spirit 900 rf/mb", "Syngas 1000 rf/mb", "Liquifacted Coal 1000 rf/mb", "Naphta 1250 rf/mb", "Empowered Oil 1350 rf/mb", "Refined Fuel 2000 rf/mb", "Liquid Ethene 6000 rf/mb"]);

/*=========================
Recipe Changes - Advanced Gens
=========================*/

recipes.remove(<advgenerators:controller>);
recipes.addShaped("circuit", <advgenerators:controller>, [
    [<industrialforegoing:plastic>, <appliedenergistics2:material:5>, <industrialforegoing:plastic>], 
    [<appliedenergistics2:material:5>, <minecraft:quartz_block>, <appliedenergistics2:material:5>], 
    [<industrialforegoing:plastic>, <appliedenergistics2:material:5>, <industrialforegoing:plastic>]
    ]);

recipes.remove(<advgenerators:iron_wiring> * 2);
recipes.addShaped(<advgenerators:iron_wiring>, [
    [null, null, <ore:stickTreatedWood>],
    [null, <immersiveengineering:wirecoil:5>, null], 
    [<ore:stickTreatedWood>, null, null]
    ]);

recipes.remove(<advgenerators:item_input>);
recipes.addShaped(<advgenerators:item_input>, [
    [<advgenerators:iron_frame>, null, <advgenerators:iron_frame>],
    [null, <extrautils2:largishchest>, null], 
    [<advgenerators:iron_frame>, null, <advgenerators:iron_frame>]
    ]);

recipes.remove(<advgenerators:fuel_tank>);
recipes.addShaped(<advgenerators:fuel_tank>, [
    [<advgenerators:iron_frame>, <minecraft:glass_pane>, <advgenerators:iron_frame>],
    [<minecraft:glass_pane>, <extracells:certustank>, <minecraft:glass_pane>], 
    [<advgenerators:iron_frame>, <advgenerators:iron_tubing>, <advgenerators:iron_frame>]
    ]);

recipes.remove(<advgenerators:fluid_output_select>);
recipes.addShaped(<advgenerators:fluid_output_select>, [
    [<advgenerators:iron_frame>, null, <advgenerators:iron_frame>],
    [null, <extendedcrafting:material:2>, null], 
    [<advgenerators:iron_frame>, <thermaldynamics:servo:2>, <advgenerators:iron_frame>]
    ]);

recipes.remove(<advgenerators:fluid_input>);
recipes.addShaped(<advgenerators:fluid_input>, [
    [<advgenerators:iron_frame>, <rustic:liquid_barrel>, <advgenerators:iron_frame>],
    [null, <extendedcrafting:material:2>, null], 
    [<advgenerators:iron_frame>, null, <advgenerators:iron_frame>]
    ]);

recipes.remove(<advgenerators:power_io>);
recipes.addShaped(<advgenerators:power_io>, [
    [<ore:ingotSilver>, <ore:plateInvar>, <ore:ingotSilver>],
    [<advgenerators:iron_wiring>, <thermalexpansion:capacitor>, <advgenerators:iron_wiring>], 
    [<ore:ingotSilver>, <ore:plateInvar>, <ore:ingotSilver>]
    ]);

recipes.remove(<advgenerators:efficiency_upgrade_tier1>);
recipes.addShaped(<advgenerators:efficiency_upgrade_tier1>, [
    [<advgenerators:iron_frame>, <mekanism:gastank>, <advgenerators:iron_frame>],
    [<advgenerators:pressure_valve>, <immersiveengineering:metal_device0:6>, <advgenerators:iron_tubing>], 
    [<advgenerators:iron_frame>, <mekanism:machineblock2:11>, <advgenerators:iron_frame>]
    ]);

recipes.remove(<advgenerators:pressure_valve>);
recipes.addShaped(<advgenerators:pressure_valve>, [
    [null, <calculator:reinforcedironingot>, null],
    [<advgenerators:iron_tubing>, <advgenerators:iron_tubing>, <advgenerators:iron_tubing>], 
    [null, <calculator:reinforcedironingot>, null]
    ]);

recipes.remove(<advgenerators:iron_tubing>);
recipes.addShaped(<advgenerators:iron_tubing> * 4, [
    [null, null, <immersiveengineering:material>],
    [<rustic:chain>, <rustic:chain>, <rustic:chain>], 
    [<immersiveengineering:material>, null, null]
    ]);

recipes.remove(<advgenerators:iron_frame>);
recipes.addShaped(<advgenerators:iron_frame>, [
    [<contenttweaker:screws>, <ore:stickIron>, <contenttweaker:screws>],
    [<ore:stickIron>, null, <ore:stickIron>], 
    [<contenttweaker:screws>, <ore:stickIron>, <contenttweaker:screws>]
    ]);
