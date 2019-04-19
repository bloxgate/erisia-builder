/*=========================
Recipe Changes - Water Strainer
=========================*/

recipes.remove(<waterstrainer:strainer_base>);
recipes.addShaped("strainer base", <waterstrainer:strainer_base>, [
    [<minecraft:stick>, null, <minecraft:stick>],
    [<ore:plankWood>, <rustic:barrel>, <ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
    ]);

recipes.remove(<waterstrainer:garden_trowel>);
recipes.addShaped("strainer trowel", <waterstrainer:garden_trowel>, [
    [null, <minecraft:iron_ingot>],
    [null, <minecraft:stick>],
    ]);

recipes.remove(<waterstrainer:net:1>);
recipes.addShaped(<waterstrainer:net:1>, [
    [<minecraft:string>, <minecraft:string>, <minecraft:string>],
    [<minecraft:string>, <magneticraft:crafting:6>, <minecraft:string>], 
    [<minecraft:string>, <minecraft:string>, <minecraft:string>]
    ]);