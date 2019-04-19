
mods.jei.JEI.addDescription(<harvestcraft:garliccoinitem>, "Used as currency in Pam's Market");

/*=========================
Recipe Changes - Cooking
=========================*/

recipes.remove(<cookingforblockheads:recipe_book:2>);
recipes.addShapeless(<cookingforblockheads:recipe_book:2>, [
    <ore:listAllveggie>, <ore:listAllfruit>, <ore:listAllmeatcooked>, <cookingforblockheads:recipe_book:1>
    ]);

recipes.remove(<cookingforblockheads:oven>);
recipes.addShaped("oven", <cookingforblockheads:oven>, [
    [null, null, null], 
    [<minecraft:iron_nugget>, <rustic:condenser>, <minecraft:iron_nugget>], 
    [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]
    ]);
