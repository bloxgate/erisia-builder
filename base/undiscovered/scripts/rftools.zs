var steelComponent = <immersiveengineering:material:9>;
var stevesHardener = <stevescarts:modulecomponents:19>;
var steelRod = <immersiveengineering:material:2>;
var vacuumTube = <immersiveengineering:material:26>;
var tungstonIngot = <magneticraft:ingots:5>;

recipes.remove(<rftools:coalgenerator>);

/*=========================
Recipe Changes - RFTools
=========================*/

recipes.remove(<rftools:machine_frame>);
recipes.addShaped("machine frame", <rftools:machine_frame>, [
    [stevesHardener, <ore:scaffoldingSteel>, null],
    [<ore:scaffoldingSteel>, tungstonIngot, <ore:scaffoldingSteel>],
    [null, <ore:scaffoldingSteel>, stevesHardener]
    ]);

recipes.remove(<rftools:syringe>);
recipes.addShaped("syringe", <rftools:syringe>, [
    [null, <evilcraft:dark_spike>, null], 
    [null, steelRod, null], 
    [null, vacuumTube, null]
    ]);

recipes.remove(<rftools:machine_base>);
recipes.addShaped("machine frame slab", <rftools:machine_base>, [
    [null, null, null], 
    [<actuallyadditions:item_misc:5>, <actuallyadditions:item_misc:5>, <actuallyadditions:item_misc:5>], 
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
    ]);

recipes.remove(<rftools:shape_card:2>);
recipes.addShaped("rf quarry card", <rftools:shape_card:2>, [
    [<ore:plateIridium>, <actuallyadditions:block_phantom_booster>, <ore:plateIridium>], 
    [<forestry:thermionic_tubes:12>, <rftools:shape_card>, <forestry:thermionic_tubes:12>], 
    [<ore:plateIridium>, <actuallyadditions:block_phantom_booster>, <ore:plateIridium>]
    ]);

recipes.remove(<rftools:modular_storage>);
recipes.addShaped(<rftools:modular_storage>, [
    [<minecraft:redstone>, <forestry:chipsets:1>, <minecraft:redstone>],
    [<minecraft:quartz>, <rftools:machine_base>, <minecraft:quartz>], 
    [<minecraft:redstone>, <minecraft:quartz>, <minecraft:redstone>]
    ]);

recipes.remove(<rftools:storage_scanner>);
recipes.addShaped(<rftools:storage_scanner>, [
    [<darkutils:material:1>, <calculator:flawlessdiamond>, <extrautils2:ingredients:1>],
    [<xnet:connector>, <rftools:machine_base>, <xnet:connector>], 
    [<extrautils2:ingredients:1>, <calculator:flawlessdiamond>, <darkutils:material:1>]
    ]);

recipes.remove(<rftools:storage_control_module>);
recipes.addShaped(<rftools:storage_control_module>, [
    [<extendedcrafting:material:3>, <extendedcrafting:handheld_table>, <extendedcrafting:material:3>],
    [<thermalfoundation:material:322>, <jaopca:item_geartungsten>, <thermalfoundation:material:322>], 
    [<extendedcrafting:material:3>, <thermalfoundation:material:322>, <extendedcrafting:material:3>]
    ]);

recipes.remove(<xnet:advanced_connector>);
recipes.addShaped(<xnet:advanced_connector>, [
    [<jaopca:item_sticklead>, <extrautils2:endershard>, <jaopca:item_sticklead>],
    [<extrautils2:endershard>, <forestry:thermionic_tubes:5>, <extrautils2:endershard>], 
    [<jaopca:item_sticklead>, <extrautils2:endershard>, <jaopca:item_sticklead>]
    ]);

recipes.remove(<xnet:router>);
recipes.addShaped(<xnet:router>, [
    [<minecraft:hopper>, <immersiveengineering:wooden_device0:5>, <minecraft:hopper>],
    [<ore:plateLead>, <forestry:chipsets>, <ore:plateLead>], 
    [<ore:plateLead>, <rftools:machine_base>, <ore:plateLead>]
    ]);

recipes.remove(<xnet:controller>);
recipes.addShaped(<xnet:controller>, [
    [<minecraft:comparator>, <minecraft:observer>, <minecraft:comparator>],
    [<ore:plateLead>, <forestry:chipsets>, <ore:plateLead>], 
    [<ore:plateLead>, <rftools:machine_base>, <ore:plateLead>]
    ]);

recipes.remove(<xnet:connector>);
recipes.addShaped(<xnet:connector>, [
    [<immersiveengineering:material:3>, <extrautils2:decorativeglass>, <immersiveengineering:material:3>],
    [<extrautils2:decorativeglass>, <forestry:thermionic_tubes:11>, <extrautils2:decorativeglass>], 
    [<immersiveengineering:material:3>, <extrautils2:decorativeglass>, <immersiveengineering:material:3>]
    ]);

recipes.removeByRecipeName("rftools:storage_module_tablet");
recipes.addShaped(<rftools:storage_module_tablet>, [
    [<ore:nuggetCopper>, <minecraft:emerald>, <ore:nuggetCopper>],
    [<minecraft:redstone>, <minecraft:quartz_block>, <minecraft:redstone>], 
    [<ore:nuggetCopper>, <minecraft:redstone>, <ore:nuggetCopper>]
    ]);

recipes.remove(<rftools:screen_controller>);
recipes.addShaped(<rftools:screen_controller>, [
    [<calculator:reinforcedironingot>, <forestry:chipsets:1>, <calculator:reinforcedironingot>],
    [<minecraft:redstone>, <rftools:machine_base>, <minecraft:redstone>], 
    [<calculator:reinforcedironingot>, <minecraft:redstone>, <calculator:reinforcedironingot>]
    ]);

recipes.remove(<rftools:powercell_card>);
recipes.addShaped(<rftools:powercell_card>, [
    [<calculator:redstoneingot>, <calculator:redstoneingot>, <calculator:redstoneingot>],
    [<randomthings:ingredient:3>, <thermalfoundation:material:264>, <randomthings:ingredient:3>], 
    [<calculator:redstoneingot>, <calculator:redstoneingot>, <calculator:redstoneingot>]
    ]);

recipes.remove(<rftools:powercell_simple>);
recipes.addShaped(<rftools:powercell_simple>, [
    [<botania:quartztypered>, <calculator:weakeneddiamond>, <botania:quartztypered>],
    [<calculator:weakeneddiamond>, <rftools:machine_base>, <calculator:weakeneddiamond>], 
    [<botania:quartztypered>, <calculator:weakeneddiamond>, <botania:quartztypered>]
    ]);
