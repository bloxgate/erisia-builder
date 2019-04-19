<ore:listAllmushroom>.add(<randomthings:glowingmushroom>);
<ore:grassSeed>.add(<randomthings:grassseeds:*>);

recipes.remove(<randomthings:customworkbench>);

/*=========================
Recipe Changes - Random Things
=========================*/

recipes.addShapeless(<randomthings:glowingmushroom>, [
    <silentgems:glowrosefertilizer>, <botania:mushroom:*>
    ]);

recipes.addShaped("end rod", <minecraft:end_rod>, [
    [null, <minecraft:blaze_rod>], 
    [null, <astralsorcery:blockcollectorcrystal>]
    ]);

recipes.remove(<randomthings:ingredient:6>);
recipes.addShapeless("lubricant bottle", <randomthings:ingredient:6>, [
    <forge:bucketfilled>.withTag({FluidName: "lubricant", Amount: 1000})
    ]);

recipes.remove(<randomthings:igniter>);
recipes.addShaped("igniter", <randomthings:igniter>, [
    [<chisel:lavastone1:*>, <ore:cobblestone>, <ore:cobblestone>], 
    [<silentgems:craftingmaterial:7>, <minecraft:flint>, <ore:cobblestone>], 
    [<chisel:lavastone1:*>, <ore:cobblestone>, <ore:cobblestone>]
    ]);
recipes.addShaped("igniter2", <randomthings:igniter>, [
    [<chisel:lavastone:*>, <ore:cobblestone>, <ore:cobblestone>], 
    [<silentgems:craftingmaterial:7>, <minecraft:flint>, <ore:cobblestone>], 
    [<chisel:lavastone:*>, <ore:cobblestone>, <ore:cobblestone>]
    ]);

recipes.addShaped(<randomthings:fertilizeddirt> * 2, [
    [<calculator:soil>, <calculator:soil>, <calculator:soil>],
    [<actuallyadditions:item_fertilizer>, <actuallyadditions:item_fertilizer>, <actuallyadditions:item_fertilizer>], 
    [<minecraft:dirt:1>, <minecraft:dirt:1>, <minecraft:dirt:1>]
    ]);

recipes.removeShapeless(<minecraft:ghast_tear>);
recipes.addShapeless(<minecraft:ghast_tear>, [
    <xreliquary:mob_ingredient:3>, <randomthings:ingredient:2>, <xreliquary:mob_ingredient:3>, <randomthings:ingredient:2>
    ]);

recipes.remove(<randomthings:stableenderpearl>);
recipes.addShaped("stable pearl", <randomthings:stableenderpearl>, [
    [null, <ore:gemDark>, null], 
    [<ore:gemLapis>, <minecraft:ender_pearl>, <ore:gemLapis>], 
    [null, <ore:gemDark>, null]
    ]);
