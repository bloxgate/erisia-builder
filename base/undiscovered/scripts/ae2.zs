mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_axe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_hoe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_spade>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_pickaxe>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:certus_quartz_sword>);

/*=========================
Recipe Changes - AE2
=========================*/
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped("inscriber", <appliedenergistics2:inscriber>, [
    [<immersiveengineering:material:19>, <minecraft:sticky_piston>, <immersiveengineering:material:19>], 
    [<appliedenergistics2:material:12>, <rustic:cabinet>, <immersiveengineering:material:19>], 
    [<immersiveengineering:material:19>, <minecraft:sticky_piston>, <immersiveengineering:material:19>]
    ]);

recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped("crafting unit", <appliedenergistics2:crafting_unit>, [
    [<bigreactors:ingotmetals:3>, <appliedenergistics2:material:22>, <bigreactors:ingotmetals:3>], 
    [<appliedenergistics2:part:16>, <appliedenergistics2:material:23>, <appliedenergistics2:part:16>], 
    [<bigreactors:ingotmetals:3>, <appliedenergistics2:material:24>, <bigreactors:ingotmetals:3>]
    ]);

recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped("me chest", <appliedenergistics2:chest>, [
    [<minecraft:glass>, <appliedenergistics2:part:180>, <minecraft:glass>], 
    [<appliedenergistics2:part:16>, <immersiveengineering:wooden_device0>, <appliedenergistics2:part:16>], 
    [<silentgems:craftingmaterial:30>, <ore:crystalFluix>, <silentgems:craftingmaterial:30>]
    ]);

recipes.addShapeless("silicon", <appliedenergistics2:material:5> * 4, [
    <extrautils2:compressedsand>, <contenttweaker:oreinjectionvodka>
    ]);

recipes.addShaped("1k component", <appliedenergistics2:material:35>, [[<ore:rodTin>, <appliedenergistics2:material:1>, <ore:rodTin>], [<appliedenergistics2:material:1>, <advgenerators:controller>, <appliedenergistics2:material:1>], [<ore:rodTin>, <appliedenergistics2:material:1>, <ore:rodTin>]]);

recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped("mole assembler", <appliedenergistics2:molecular_assembler>, [
    [<thermalfoundation:material:136>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:136>], 
    [<appliedenergistics2:material:43>, <extendedcrafting:material:16>, <appliedenergistics2:material:44>], 
    [<thermalfoundation:material:136>, <appliedenergistics2:quartz_glass>, <thermalfoundation:material:136>]
    ]);

recipes.remove(<appliedenergistics2:matter_cannon>);
recipes.addShaped("ae gun", <appliedenergistics2:matter_cannon>, [
    [<ore:ingotSteel>, <ore:ingotSteel>, <xreliquary:gun_part:1>], 
    [<appliedenergistics2:material:35>, <immersiveengineering:material:1>, null], 
    [<ore:ingotSteel>, null, null]
    ]);

recipes.remove(<extracells:part.base:3>);
recipes.addShaped("fluid terminal", <extracells:part.base:3>, [
    [<minecraft:water_bucket>, <appliedenergistics2:part:180>, <minecraft:lava_bucket>],
    [null, null, null], 
    [null, null, null]
    ]);

recipes.addShaped("1k fluid drive", <extracells:storage.fluid>, [
    [<minecraft:bucket>, <minecraft:bucket>, <minecraft:bucket>], 
    [<minecraft:bucket>, <appliedenergistics2:material:35>, <minecraft:bucket>], 
    [<minecraft:bucket>, <appliedenergistics2:material:39>, <minecraft:bucket>]
    ]);

recipes.addShaped("me drive", <appliedenergistics2:drive>, [
    [<magneticraft:heavy_plates:3>, <immersiveengineering:material:27>, <magneticraft:heavy_plates:3>], 
    [<appliedenergistics2:part:16>, null, <appliedenergistics2:part:16>], 
    [<magneticraft:heavy_plates:3>, <immersiveengineering:material:27>, <magneticraft:heavy_plates:3>]
    ]);

recipes.remove(<appliedenergistics2:material:41>);
recipes.addShaped(<appliedenergistics2:material:41>, [
    [null, <appliedenergistics2:material:9>, null],
    [<magneticraft:ingots:5>, <appliedenergistics2:part:140>, <magneticraft:ingots:5>], 
    [null, <magneticraft:ingots:5>, null]
    ]);

recipes.addShaped(<extracells:part.base:1>, [
    [null, <pressure:input>, null],
    [null, <immersiveengineering:material:27>, null], 
    [null, <thermaldynamics:servo:2>, null]
    ]);

recipes.addShaped(<extracells:part.base>, [
    [null, <thermaldynamics:servo:2>, null],
    [null, <immersiveengineering:material:27>, null], 
    [null, <pressure:output>, null]
    ]);

recipes.addShaped(<extracells:part.base:5>, [
    [<silentgems:craftingmaterial:7>, <appliedenergistics2:material>, <silentgems:craftingmaterial:7>],
    [<industrialforegoing:block_destroyer>, <appliedenergistics2:part:180>, <appliedenergistics2:material>], 
    [<silentgems:craftingmaterial:7>, <appliedenergistics2:material>, <silentgems:craftingmaterial:7>]
    ]);

recipes.addShaped(<extracells:part.base:6>, [
    [<silentgems:craftingmaterial:7>, <appliedenergistics2:material>, <silentgems:craftingmaterial:7>],
    [<appliedenergistics2:material>, <appliedenergistics2:part:180>, <industrialforegoing:block_placer>], 
    [<silentgems:craftingmaterial:7>, <appliedenergistics2:material>, <silentgems:craftingmaterial:7>]
    ]);

recipes.remove(<extracells:certustank>);
recipes.addShaped(<extracells:certustank>, [
    [<jaopca:item_sticksilver>, <appliedenergistics2:quartz_glass>, <jaopca:item_sticksilver>],
    [<appliedenergistics2:quartz_glass>, null, <appliedenergistics2:quartz_glass>], 
    [<jaopca:item_sticksilver>, <appliedenergistics2:quartz_glass>, <jaopca:item_sticksilver>]
    ]);
