var steelCase = <mekanism:basicblock:8>;
var enoriBlock = <actuallyadditions:block_crystal:5>;

recipes.remove(<mekanismgenerators:generator>);

<ore:foodSalt>.add(<mekanism:salt>);

/*=========================
Recipe Changes - Mekanism
=========================*/

recipes.remove(steelCase);
recipes.addShaped("steel casing", steelCase, [
    [<ore:ingotEnderium>, <ore:ingotSteel>, <calculator:redstoneingot>],
    [<ore:ingotSteel>, enoriBlock, <ore:ingotSteel>],
    [<calculator:redstoneingot>, <ore:ingotSteel>,<ore:ingotEnderium>]
    ]);

recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped("metallurgic infuser", <mekanism:machineblock:8>, [
    [<immersiveengineering:material:9>, <immersiveengineering:sheetmetal:1>, <immersiveengineering:sheetmetal:1>], 
    [<ore:blockSteel>, <mekanism:basicblock:8>, <immersiveengineering:sheetmetal:1>], 
    [<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>]
    ]);

recipes.remove(<mekanism:machineblock:9>);
recipes.addShaped("purificiation chamber", <mekanism:machineblock:9>, [
    [<mekanism:enrichedalloy>, <mekanism:controlcircuit:1>, <mekanism:enrichedalloy>], 
    [<ore:plateOsmium>, <contenttweaker:obsidiancase>, <ore:plateOsmium>], 
    [<mekanism:enrichedalloy>, <mekanism:controlcircuit:1>, <mekanism:enrichedalloy>]
    ]);

recipes.remove(<mekanism:machineblock2:7>);
recipes.addShaped("chem washer", <mekanism:machineblock2:7>, [
    [<mekanism:controlcircuit>, <minecraft:bucket>, <mekanism:controlcircuit>], 
    [<mekanism:enrichedalloy>, <contenttweaker:obsidiancase>, <mekanism:enrichedalloy>], 
    [<mekanism:controlcircuit>, <extrautils2:drum:2>, <mekanism:controlcircuit>]
    ]);

recipes.remove(<mekanism:machineblock2:10>);
recipes.addShaped("prc", <mekanism:machineblock2:10>, [
    [<ore:blockSteel>, <minecraft:piston>, <ore:blockSteel>], 
    [<mekanism:controlcircuit>, <mekanism:machineblock>, <mekanism:controlcircuit>], 
    [<mekanism:compressedcarbon>, <contenttweaker:obsidiancase>, <mekanism:compressedcarbon>]
    ]);

recipes.remove(<mekanism:machineblock2:8>);
recipes.addShaped("chemical crystallizer", <mekanism:machineblock2:8>, [
    [<mekanism:controlcircuit:2>, <mekanism:gastank>, <mekanism:controlcircuit:2>], 
    [<mekanism:atomicalloy>, <contenttweaker:obsidiancase>, <mekanism:atomicalloy>], 
    [<mekanism:controlcircuit:2>, <mekanism:gastank>, <mekanism:controlcircuit:2>]
    ]);

recipes.remove(<mekanism:machineblock3:3>);
recipes.addShaped("mek oredict", <mekanism:machineblock3:3>, [
    [<ore:ingotSteel>, <mekanism:dictionary>, <ore:ingotSteel>], 
    [<mekanism:controlcircuit>, <contenttweaker:obsidiancase>, <mekanism:controlcircuit>], 
    [<ore:ingotSteel>, <calculator:reinforcedchest>, <ore:ingotSteel>]
    ]);

recipes.remove(<mekanism:machineblock3:1>);
recipes.addShaped("solar neutron", <mekanism:machineblock3:1>, [
    [<mekanism:reinforcedalloy>, <mekanism:polyethene:2>, <mekanism:reinforcedalloy>], 
    [<mekanism:controlcircuit:2>, <contenttweaker:obsidiancase>, <mekanism:controlcircuit:2>], 
    [<forestry:thermionic_tubes:2>, <forestry:thermionic_tubes:2>, <forestry:thermionic_tubes:2>]
    ]);

recipes.remove(<mekanism:machineblock:13>);
recipes.addShaped(<mekanism:machineblock:13>, [
    [<ore:ingotSteel>, <extrautils2:decorativeglass>, <ore:ingotSteel>],
    [<minecraft:chest>, <immersiveengineering:material:27>, <minecraft:chest>], 
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
    ]);

recipes.removeByRecipeName("mekanism:machineblock2_11");
recipes.addShaped(<mekanism:machineblock2:11>, [
    [<jaopca:item_sticklead>, <ore:ingotAluminium>, <jaopca:item_sticklead>],
    [<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
    [<jaopca:item_sticklead>, <ore:ingotAluminium>, <jaopca:item_sticklead>]
    ]);

recipes.addShaped("cheap plastic block", <mekanism:plasticblock:7>, [
    [<industrialforegoing:dryrubber>, <industrialforegoing:dryrubber>, <industrialforegoing:dryrubber>],
    [<industrialforegoing:dryrubber>, <industrialforegoing:dryrubber>, <industrialforegoing:dryrubber>], 
    [<industrialforegoing:dryrubber>, <industrialforegoing:dryrubber>, <industrialforegoing:dryrubber>]
    ]);

recipes.remove(<mekanism:configurator>);
recipes.addShaped("mek wrench", <mekanism:configurator>, [
    [null, <jaopca:item_sticklapis>, <ore:nuggetIron>],
    [<jaopca:item_sticklapis>, <immersiveengineering:material:20>, <jaopca:item_sticklapis>], 
    [<ore:ingotSteel>, <jaopca:item_sticklapis>, null]
    ]);

recipes.addShaped("turbine glass from casing", <mekanism:basicblock:10> * 4, [
    [null, <mekanismgenerators:generator:10>, null],
    [<mekanismgenerators:generator:10>, <minecraft:glass>, <mekanismgenerators:generator:10>], 
    [null, <mekanismgenerators:generator:10>, null]
    ]);

recipes.remove(<mekanism:basicblock2:7>);
recipes.addShaped("boiler case", <mekanism:basicblock2:7>, [
    [<ore:ingotSteel>, null, <ore:ingotSteel>],
    [<ore:ingotIron>, null, <ore:ingotIron>], 
    [<ore:ingotSteel>, null, <ore:ingotSteel>]
    ]);

recipes.remove(<mekanism:machineblock:1>);
recipes.addShaped(<mekanism:machineblock:1>, [
    [<mekanism:controlcircuit:1>, <mekanism:compressedcarbon>, <mekanism:controlcircuit:1>],
    [<ore:plateSignalum>, <contenttweaker:obsidiancase>, <ore:plateSignalum>], 
    [<mekanism:controlcircuit:1>, <mekanism:compressedcarbon>, <mekanism:controlcircuit:1>]
    ]);

recipes.addShaped(<mekanism:basicblock:11>, [
    [null, <mekanism:basicblock:9>, null],
    [<mekanism:basicblock:9>, <immersiveengineering:material:27>, <mekanism:basicblock:9>], 
    [null, <mekanism:basicblock:9>, null]
    ]);


/*=========================
Crusher
=========================*/
mods.mekanism.crusher.removeRecipe(<mekanism:otherdust:6>);
mods.mekanism.crusher.addRecipe(<mekanism:ingot>, <mekanism:otherdust:5>);
mods.mekanism.crusher.addRecipe(<contenttweaker:osmaticsteelore>, <contenttweaker:osmaticsteeldust> * 2);


/*=========================
Enrichment
=========================*/
mods.mekanism.enrichment.removeRecipe(<magneticraft:ores:3>);
mods.mekanism.enrichment.removeRecipe(<thermalfoundation:ore:7>);
mods.mekanism.enrichment.removeRecipe(<jaopca:item_dustdirtytungsten>);
mods.mekanism.enrichment.removeRecipe(<jaopca:item_dustdirtycobalt>);
mods.mekanism.enrichment.addRecipe(<jaopca:item_dustdirtytungsten>, <magneticraft:dusts:5>);
mods.mekanism.enrichment.addRecipe(<jaopca:item_dustdirtycobalt>, <magneticraft:dusts:4>);

/*=========================
Infuser
=========================*/
mods.mekanism.infuser.addRecipe("OBSIDIAN", 100, <mekanism:basicblock:8>, <contenttweaker:obsidiancase>);

//make infuser use same ingot as everthing else
mods.mekanism.infuser.removeRecipe(<mekanism:ingot:2>);
mods.mekanism.infuser.addRecipe("TIN", 10, <thermalfoundation:material:128>, <thermalfoundation:material:163>);

/*=========================
Osmium Compressor
=========================*/
mods.mekanism.compressor.addRecipe(<mekanism:ingot:1>, <gas:liquidOsmium>, <contenttweaker:osmaticsteel>);

/*=========================
Precision Sawmill
=========================*/
mods.mekanism.sawmill.addRecipe(<jaopca:item_stickosmium>, <contenttweaker:screws> * 4);
mods.mekanism.sawmill.addRecipe(<jaopca:item_sticknickel>, <contenttweaker:screws> * 4);