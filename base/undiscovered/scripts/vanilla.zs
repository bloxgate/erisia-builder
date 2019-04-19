var ironPlate = <ore:plateIron>;
var starmetalIngot = <astralsorcery:itemcraftingcomponent:1>;
var tungstenNug = <magneticraft:nuggets:5>;
var rockyTungsten = <magneticraft:rocky_chunks:5>;
var bloodBucket = <forge:bucketfilled>.withTag({FluidName: "evilcraftblood", Amount: 1000});

<minecraft:wooden_pickaxe>.maxDamage = 15;
<minecraft:wooden_axe>.maxDamage = 15;
<minecraft:wooden_shovel>.maxDamage = 15;
<minecraft:wooden_sword>.maxDamage = 15;
<minecraft:wooden_hoe>.maxDamage = 15;

<minecraft:stone_pickaxe>.maxDamage = 50;
<minecraft:stone_axe>.maxDamage = 50;
<minecraft:stone_shovel>.maxDamage = 50;
<minecraft:stone_sword>.maxDamage = 50;
<minecraft:stone_hoe>.maxDamage = 50;

<minecraft:iron_pickaxe>.maxDamage = 100;
<minecraft:iron_axe>.maxDamage = 100;
<minecraft:iron_shovel>.maxDamage = 100;
<minecraft:iron_sword>.maxDamage = 100;
<minecraft:iron_hoe>.maxDamage = 100;

<minecraft:golden_pickaxe>.maxDamage = 64;
<minecraft:golden_axe>.maxDamage = 64;
<minecraft:golden_shovel>.maxDamage = 64;
<minecraft:golden_sword>.maxDamage = 64;
<minecraft:golden_hoe>.maxDamage = 64;

<minecraft:diamond_pickaxe>.maxDamage = 220;
<minecraft:diamond_axe>.maxDamage = 220;
<minecraft:diamond_shovel>.maxDamage = 220;
<minecraft:diamond_sword>.maxDamage = 220;
<minecraft:diamond_hoe>.maxDamage = 220;

furnace.remove(starmetalIngot);
furnace.remove(<ore:ingotElectrum>);
furnace.remove(<ore:ingotIridium>);
furnace.remove(<ore:ingotTungsten>);
furnace.remove(<ore:ingotIridium>);
furnace.remove(<bigreactors:brore>);
furnace.remove(<appliedenergistics2:material:5>);
furnace.remove(<minecraft:iron_ingot>, <minecraft:iron_ore>);
furnace.remove(<minecraft:gold_ingot>, <minecraft:gold_ore>);
furnace.remove(<thermalfoundation:material:128>, <thermalfoundation:ore>);
furnace.remove(<immersiveengineering:metal:1>, <immersiveengineering:ore:1>);

furnace.addRecipe(tungstenNug * 2, rockyTungsten);
furnace.addRecipe(<contenttweaker:ironslag>, <minecraft:iron_ore>);
furnace.addRecipe(<contenttweaker:goldslag>, <minecraft:gold_ore>);
furnace.addRecipe(<thermalfoundation:material:135>, <thermalfoundation:material:71>);
furnace.addRecipe(<magneticraft:crafting>, <thermalfoundation:material:771>);
furnace.addRecipe(<contenttweaker:resinplate>, <forestry:can:1>.withTag({Fluid: {FluidName: "sap", Amount: 1000}}));
furnace.addRecipe(<contenttweaker:resinplate>, <forestry:can:1>.withTag({Fluid: {FluidName: "resin", Amount: 1000}}));
furnace.addRecipe(<minecraft:redstone> * 2, <redstonepaste:redstonepaste>);
furnace.addRecipe(<minecraft:iron_nugget>, <scrap:broken.plate>);
furnace.addRecipe(<minecraft:iron_nugget>, <scrap:broken.gear>);
furnace.addRecipe(<minecraft:iron_nugget>, <contenttweaker:brokenrod>);
furnace.addRecipe(<thermalfoundation:material:192>, <scrap:broken.gear:2>);
furnace.addRecipe(<thermalfoundation:material:226>, <scrap:broken.plate:13>);
furnace.addRecipe(<thermalfoundation:material:194>, <scrap:broken.plate:4>);
furnace.addRecipe(<jaopca:item_nuggetquartzblack>, <appliedenergistics2:material:2>);
furnace.addRecipe(<contenttweaker:osmaticsteel>, <contenttweaker:osmaticsteeldust>);
furnace.addRecipe(<thermalfoundation:material:135>, <contenttweaker:irradiated_iridium>);
furnace.addRecipe(<magneticraft:ingots:5>, <magneticraft:dusts:5>);
furnace.setFuel(<contenttweaker:bundle_of_sticks>, 1200);
furnace.setFuel(<extrabees:propolis:7>, 1000);
furnace.setFuel(<extrabees:honey_drop>, 6400);

recipes.remove(<magneticraft:rocky_chunks:5>);
recipes.remove(<jaopca:item_dustdirtytungsten>);

vanilla.seeds.removeSeed(<extrautils2:redorchid>);
vanilla.seeds.addSeed(<extrautils2:redorchid> % 1);

val floatyBoi = <minecraft:elytra>.definition;
floatyBoi.setContainerItem(floatyBoi);

/*=========================
Recipe Changes - Vanilla
=========================*/

recipes.remove(<minecraft:chest>);
recipes.addShaped("chest", <minecraft:chest>, [
    [<ore:plankWood>, <ore:logWood>, <ore:plankWood>],
    [<ore:plankWood>, <rustic:chain>, <ore:plankWood>],
    [<ore:plankWood>, <ore:logWood>, <ore:plankWood>]
    ]);

recipes.remove(<minecraft:furnace>);
recipes.addShaped("furnace", <minecraft:furnace>, [
    [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
    [<minecraft:stone>, <minecraft:iron_ingot>, <minecraft:stone>],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
    ]);

recipes.remove(<minecraft:bucket>);
recipes.addShaped("bucket", <minecraft:bucket>, [
    [ironPlate, null, ironPlate],
    [null, ironPlate, null]
    ]);
    
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless("tech flint steel", <minecraft:flint_and_steel>, [
    <minecraft:flint>, <ore:ingotSteel>
    ]);
recipes.addShapeless("magic flint steel", <minecraft:flint_and_steel>, [
    <minecraft:flint>, <evilcraft:dark_power_gem>
    ]);


recipes.addShaped("bucket broken plates", <minecraft:bucket>, [
    [<ore:brokenPlate>, null, <ore:brokenPlate>], 
    [null, <ore:brokenPlate>, null]
    ]);

recipes.addShaped("rotten pot block", <contenttweaker:rotten_pot_block>, [
    [<minecraft:poisonous_potato>, <minecraft:poisonous_potato>, <minecraft:poisonous_potato>], 
    [<minecraft:poisonous_potato>, <minecraft:poisonous_potato>, <minecraft:poisonous_potato>], 
    [<minecraft:poisonous_potato>, <minecraft:poisonous_potato>, <minecraft:poisonous_potato>]
    ]);
    
recipes.addShapeless(<minecraft:iron_ingot>, [
    <contenttweaker:ironslag>, <contenttweaker:ironslag>
    ]);
    
recipes.addShapeless(<minecraft:gold_ingot>, [
    <contenttweaker:goldslag>, <contenttweaker:goldslag>
    ]);
    
recipes.addShapeless(<thermalfoundation:material:128>, [
    <contenttweaker:copperslag>, <contenttweaker:copperslag>
    ]);
    
recipes.addShapeless(<thermalfoundation:material:132>, [
    <contenttweaker:alumslag>, <contenttweaker:alumslag>
    ]);

recipes.addShapeless(<minecraft:wheat_seeds>, [
    <minecraft:wheat>
    ]);

recipes.addShaped("tin hopper", <minecraft:hopper>, [
    [<ore:ingotTin>, null, <ore:ingotTin>], 
    [<ore:ingotTin>, <minecraft:chest>, <ore:ingotTin>], 
    [null, <ore:ingotTin>, null]
    ]);

recipes.remove(<minecraft:fire_charge>);
recipes.addShapeless(<minecraft:fire_charge> * 3, [
    <forestry:can:1>.withTag({Fluid: {FluidName: "lava", Amount: 1000}}), <ore:coal>, <ore:gunpowder>
    ]);

recipes.addShaped(<minecraft:dirt:1>, [
    [<calculator:soil>, <calculator:soil>, <calculator:soil>],
    [<calculator:soil>, <minecraft:gravel>, <calculator:soil>], 
    [<calculator:soil>, <calculator:soil>, <calculator:soil>]
    ]);

recipes.addShaped(<minecraft:iron_bars> * 4, [
    [<contenttweaker:brokenrod>, <contenttweaker:brokenrod>, <contenttweaker:brokenrod>],
    [<contenttweaker:screws>, <contenttweaker:screws>, <contenttweaker:screws>], 
    [<contenttweaker:brokenrod>, <contenttweaker:brokenrod>, <contenttweaker:brokenrod>]
    ]);

recipes.addShaped(<minecraft:chest>, [
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>],
    [<immersiveengineering:treated_wood>, <actuallyadditions:block_misc:4>, <immersiveengineering:treated_wood>], 
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]
    ]);

recipes.addShapedMirrored("creo oil torch", <minecraft:torch> * 6, [
    [null, <extrabees:propolis:7>],
    [null, <minecraft:stick>]
    ]);

recipes.addShaped(<minecraft:end_crystal>, [
    [<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>],
    [<appliedenergistics2:quartz_glass>, <astralsorcery:itemshiftingstar>, <appliedenergistics2:quartz_glass>], 
    [<appliedenergistics2:quartz_glass>, <darkutils:wither_block:4>, <appliedenergistics2:quartz_glass>]
    ]);