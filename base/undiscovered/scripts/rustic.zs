var dCream = <darkutils:material:2>;
var graphiteDust = <bigreactors:dustmetals:2>;
var graphitIngot = <bigreactors:ingotmetals:2>;
var vodkaBottle = <binniecore:glass:1>.withTag({Fluid: {FluidName: "binnie.vodka", Amount: 1000}});
var vodkaBucket = <forge:bucketfilled>.withTag({FluidName: "binnie.vodka", Amount: 1000});
var liquidTube = <stevescarts:modulecomponents:65>;
var crushedGold = <actuallyadditions:item_dust:1>;
var oreBerry = <rustic:ironberries>;
var yeast = <extratrees:misc:5>;

<ore:listAllmushroom>.add(<rustic:deathstalk_mushroom>);
<ore:listAllmushroom>.add(<rustic:mooncap_mushroom>);
<ore:listAllfruit>.remove(oreBerry);
<ore:listAllberry>.remove(oreBerry);

<rustic:book>.maxStackSize = 1;

/*=========================
Recipe Changes - Rustic
=========================*/

recipes.remove(<rustic:barrel>);
recipes.addShaped("barrel", <rustic:barrel>, [
    [<ore:plankWood>, <ore:slabWood>, <ore:plankWood>],
    [<ore:plankWood>, null, <ore:plankWood>],
    [<ore:plankWood>, <ore:slabWood>, <ore:plankWood>]
    ]);

recipes.remove(<rustic:crushing_tub>);
recipes.addShaped("crushing tub", <rustic:crushing_tub>, [
    [null, null, null],
    [<ore:plankWood>, <ore:slabWood>, <ore:plankWood>],
    [<ore:plankWood>, <actuallyadditions:block_misc:4>, <ore:plankWood>]
    ]);

recipes.remove(<rustic:condenser>);
recipes.addShaped("condenser", <rustic:condenser>, [
    [null, <minecraft:brick>, null],
    [<minecraft:brick>, <minecraft:bucket>, <minecraft:brick>],
    [<minecraft:brick>, <minecraft:brick_block>, <minecraft:brick>]
    ]);

recipes.remove(<rustic:retort>);
recipes.addShaped("retort", <rustic:retort>, [
    [null, <minecraft:brick>, null],
    [null, <rustic:liquid_barrel>, null],
    [null,<minecraft:brick>, null]
    ]);

recipes.remove(<rustic:liquid_barrel>);
recipes.addShaped("liquid barrel", <rustic:liquid_barrel>, [
    [<ore:logWood>, null, <ore:logWood>],
    [<ore:logWood>, null, <ore:logWood>],
    [<ore:logWood>, <ore:slabWood>, <ore:logWood>]
    ]);

recipes.addShaped("drying basin", <rustic:evaporating_basin>, [
    [null, null, null], 
    [<minecraft:brick_block>, null, <minecraft:brick_block>], 
    [null, <minecraft:brick_block>, null]
    ]);

recipes.remove(<magneticraft:feeding_trough>);
recipes.addShaped(<magneticraft:feeding_trough>, [
    [<immersiveengineering:treated_wood_slab>, null, <immersiveengineering:treated_wood_slab>],
    [<immersiveengineering:treated_wood>, null, <immersiveengineering:treated_wood>], 
    [<immersiveengineering:material:2>, <immersiveengineering:treated_wood>, <immersiveengineering:material:2>]
    ]);

recipes.addShapeless("rustic bee 2", <rustic:bee>, [
    <forestry:bee_princess_ge>
    ]);

recipes.remove(<rustic:condenser_advanced>);
recipes.addShaped(<rustic:condenser_advanced>, [
    [null, <minecraft:netherbrick>, null],
    [<minecraft:netherbrick>, <rustic:condenser>, <minecraft:netherbrick>], 
    [<minecraft:nether_brick>, <minecraft:iron_block>, <minecraft:nether_brick>]
    ]);

recipes.remove(<rustic:retort_advanced>);
recipes.addShaped(<rustic:retort_advanced>, [
    [null, <minecraft:nether_brick>, null],
    [null, <rustic:retort>, null], 
    [null, <minecraft:nether_brick>, null]
    ]);


    
/*=========================
Crushing Tub
=========================*/
mods.rustic.CrushingTub.addRecipe(<liquid:ironberryjuice> * 1500, <rustic:dust_tiny_iron>, <minecraft:iron_ore>);
mods.rustic.CrushingTub.addRecipe(<liquid:crude_oil> * 50, <minecraft:clay_ball>, <minecraft:dirt>);
mods.rustic.CrushingTub.addRecipe(<liquid:heavywater> * 5, <minecraft:brick>, <minecraft:clay_ball>);
mods.rustic.CrushingTub.addRecipe(<liquid:heavywater> * 10, <minecraft:brick> * 3, <minecraft:clay>);
mods.rustic.CrushingTub.addRecipe(<liquid:heavywater> * 5, dCream, <extrautils2:compresseddirt>);
mods.rustic.CrushingTub.addRecipe(<liquid:coal> * 5, graphiteDust, graphitIngot);
//mods.rustic.CrushingTub.addRecipe(<liquid:resin> * 100, <minecraft:log:3>, <minecraft:planks:3>);
//mods.rustic.CrushingTub.addRecipe(<liquid:gold> * 250, <minecraft:gold_ore>, crushedGold);
mods.rustic.CrushingTub.addRecipe(<liquid:coal> * 10, <thermalfoundation:material:768>, <minecraft:coal>);
mods.rustic.CrushingTub.addRecipe(<liquid:redstone> * 100, <minecraft:redstone> * 3, <thermalfoundation:material:893>);
mods.rustic.CrushingTub.addRecipe(<liquid:binnie.mash.wheat> * 50, yeast * 4, <contenttweaker:moldybread>);
mods.rustic.CrushingTub.addRecipe(<liquid:oliveoil> * 250, null, <extratrees:food:35>);
mods.rustic.CrushingTub.addRecipe(<liquid:oliveoil> * 250, null, <harvestcraft:oliveitem>);

/*=========================
Evaporating Basin
=========================*/
mods.rustic.EvaporatingBasin.addRecipe(<evilcraft:condensed_blood>, <liquid:evilcraftblood> * 500);
mods.rustic.EvaporatingBasin.addRecipe(<harvestcraft:saltitem>, <liquid:water> * 100);
mods.rustic.EvaporatingBasin.addRecipe(<thermalfoundation:material:199>, <liquid:iridium> * 100);
mods.rustic.EvaporatingBasin.addRecipe(<thermalfoundation:material:1026>, <liquid:aerotheum> * 1000);
mods.rustic.EvaporatingBasin.addRecipe(<contenttweaker:resinplate>, <liquid:sap> * 500);
mods.rustic.EvaporatingBasin.addRecipe(<contenttweaker:resinplate>, <liquid:resin> * 500);
mods.rustic.EvaporatingBasin.addRecipe(<minecraft:redstone>, <liquid:redstone> * 500);
mods.rustic.EvaporatingBasin.addRecipe(<harvestcraft:honeyitem>, <liquid:honey> * 250);
mods.rustic.EvaporatingBasin.addRecipe(<extrabees:propolis:7>, <liquid:creosote> * 500);
mods.rustic.EvaporatingBasin.addRecipe(<jaopca:item_clumpmithril>, <liquid:mithril> * 1000);


/*=========================
Condenser
=========================*/
mods.rustic.Condenser.addRecipe(<contenttweaker:ironslag>, <rustic:dust_tiny_iron>, <rustic:dust_tiny_iron>);
//mods.rustic.Condenser.addRecipe(vodkaBottle, vodkaBucket, liquidTube);

/*=========================
Advanced Condenser
=========================*/
mods.rustic.Condenser.addRecipe(<randomthings:imbue:1>, null, [<minecraft:poisonous_potato>, <minecraft:rotten_flesh>, <rustic:deathstalk_mushroom>]);
mods.rustic.Condenser.addRecipe(<randomthings:imbue:2>, null, [<randomthings:beans:1>, <extrautils2:magicapple>, <minecraft:experience_bottle>]);
mods.rustic.Condenser.addRecipe(<randomthings:bottleofair>, <rustic:horsetail>, [<binniecore:cylinder>, <xreliquary:mob_ingredient:12>]);