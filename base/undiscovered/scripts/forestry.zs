var reinforcedCase = <genetics:misc:0>;
var stickyBall = <forestry:propolis:1>;
var moistener = <forestry:moistener:0>;
var treatedScaffolding = <immersiveengineering:wooden_decoration:1>;
var copperGear = <thermalfoundation:material:256>;
var ieTurntable = <immersiveengineering:wooden_device0:6>;
var steelGear = <thermalfoundation:material:288>;
var ironGear = <thermalfoundation:material:24>;
var constantanGear = <thermalfoundation:material:292>;
var mekFluidTank = <mekanism:machineblock2:11>;
var goldClay = <contenttweaker:goldclay>;
var externalHeater = <immersiveengineering:metal_device1:1>;
var zombieHeart = <xreliquary:mob_ingredient:6>;
var bucketAppleJuice = <forge:bucketfilled>.withTag({FluidName: "applejuice", Amount: 1000});
var bucketOliveOil = <forge:bucketfilled>.withTag({FluidName: "oliveoil", Amount: 1000});
var basicCircuit = <forestry:chipsets>.withTag({T: 0 as short});
var hardenedFluiduct = <thermaldynamics:duct_16:2>;
var thickenedGlass = <extrautils2:decorativeglass>;
var treatedCrate = <immersiveengineering:wooden_device0>;
var redstoneWire = <immersiveengineering:wirecoil:5>;
var tinPlate = <thermalfoundation:material:321>;
var goldGear = <thermalfoundation:material:25>;
var scrapBag = <scrap:scrap>.withTag({TABLE: "scrap:scrap", PLATE: "d1a77f", GEAR: "d0c2ba", NAME: "scrap"});

<ore:stickyBalls>.add(<forestry:propolis:*>);

/*=========================
Recipe Changes - Forestry
=========================*/

recipes.remove(moistener);
recipes.addShaped("moistener", moistener, [
    [<extrautils2:compresseddirt>, <minecraft:bucket>, <extrautils2:compresseddirt>],
    [<ore:logWood>, reinforcedCase, <ore:logWood>],
    [<extrautils2:compresseddirt>, <minecraft:bucket>, <extrautils2:compresseddirt>]
    ]);

recipes.remove(<forestry:engine_peat>);
recipes.addShaped("peat engine", <forestry:engine_peat>, [
    [<forestry:bituminous_peat>, <forestry:bituminous_peat>, <forestry:bituminous_peat>],
    [null, <ore:blockGlass>, null],
    [<ore:gearWood>, <minecraft:piston>, <ore:gearWood>]
    ]);

recipes.addShapeless(stickyBall * 4, [
    bucketAppleJuice
    ]);

recipes.addShapeless(<forestry:propolis> * 1, [
    bucketOliveOil
    ]);

recipes.remove(<forestry:squeezer>);
recipes.addShaped("squeezer", <forestry:squeezer>, [
    [<ore:ingotTin>, <rustic:crushing_tub>, <ore:ingotTin>], 
    [goldGear, <forestry:sturdy_machine>, goldGear], 
    [<ore:ingotTin>, <minecraft:piston>, <ore:ingotTin>]
    ]);

recipes.remove(<forestry:centrifuge>);
recipes.addShaped("centrifuge", <forestry:centrifuge>, [
    [treatedScaffolding, steelGear, treatedScaffolding], 
    [treatedScaffolding, <forestry:sturdy_machine>, treatedScaffolding], 
    [treatedScaffolding, ieTurntable, treatedScaffolding]
    ]);

recipes.remove(<forestry:still>);
recipes.addShaped("still", <forestry:still>, [
    [<minecraft:glass>, <waterstrainer:strainer_survivalist_solid>, <minecraft:glass>], 
    [ironGear, reinforcedCase, ironGear], 
    [<minecraft:glass>, <minecraft:lava_bucket>, <minecraft:glass>]
    ]);

recipes.remove(<forestry:fabricator>);
recipes.addShaped("thermionic fab", <forestry:fabricator>, [
    [thickenedGlass, <minecraft:crafting_table>, thickenedGlass], 
    [basicCircuit, <forestry:hardened_machine>, hardenedFluiduct], 
    [thickenedGlass, treatedCrate, thickenedGlass]
    ]);
    
recipes.remove(<forestry:fermenter>);
recipes.addShaped(<forestry:fermenter>, [
    [<immersiveengineering:treated_wood>, <magneticraft:copper_tank>, <immersiveengineering:treated_wood>],
    [<thermalfoundation:material:292>, <genetics:misc>, <thermalfoundation:material:292>], 
    [<immersiveengineering:treated_wood>, <rustic:brewing_barrel>, <immersiveengineering:treated_wood>]
    ]);

recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped("sturdy casing", <forestry:sturdy_machine>, [
    [goldClay, <ore:ingotCopper>, goldClay], 
    [<ore:ingotNickel>, goldGear, <ore:ingotNickel>], 
    [goldClay, <ore:ingotCopper>, goldClay]
    ]);

recipes.remove(<forestry:carpenter>);
recipes.addShaped("carpenter", <forestry:carpenter>, [
    [<ore:ingotCopper>, <bibliocraft:framingsaw>, <ore:ingotCopper>], 
    [<immersiveengineering:treated_wood>, reinforcedCase, <immersiveengineering:treated_wood>], 
    [<magneticraft:copper_tank>, <ore:ingotCopper>, <magneticraft:copper_tank>]
    ]);

recipes.remove(<forestry:engine_clockwork>);
recipes.addShaped("clockwork engine", <forestry:engine_clockwork>, [
    [<ore:logWood>, <ore:logWood>, <ore:logWood>], 
    [null, <ore:blockGlass>, null], 
    [<calculator:crankhandle>, <minecraft:piston>, <minecraft:clock>]
    ]);

recipes.remove(<forestry:bituminous_peat>);
recipes.addShaped("bituminous peat", <forestry:bituminous_peat>, [
    [null, <forestry:ash>, null], 
    [<forestry:peat>, <ore:stickyBalls>, <forestry:peat>], 
    [null, <forestry:ash>, null]
    ]);

recipes.addShaped(<minecraft:mycelium>, [
    [<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>],
    [<calculator:soil>, <calculator:soil>, <calculator:soil>], 
    [<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>]
    ]);

recipes.remove(<forestry:smoker>);
recipes.addShaped(<forestry:smoker>, [
    [<minecraft:leather>, <minecraft:stick>, <ore:ingotTin>],
    [<minecraft:leather>, <forestry:ash>, <ore:ingotTin>], 
    [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]
    ]);
    

/*=========================
Carpenter
=========================*/
mods.forestry.Carpenter.addRecipe(goldClay, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>], 
    [<minecraft:clay_ball>, <minecraft:clay_ball>]
    ], 20, <fluid:honey> * 250);

mods.forestry.Carpenter.addRecipe(goldClay, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>], 
    [<minecraft:clay_ball>, <minecraft:clay_ball>]
    ], 20, <fluid:for.honey> * 250);

mods.forestry.Carpenter.removeRecipe(basicCircuit);
mods.forestry.Carpenter.addRecipe(basicCircuit, [
    [<minecraft:dye:4>, tinPlate, <minecraft:dye:4>], 
    [<minecraft:dye:4>, redstoneWire, <minecraft:dye:4>], 
    [<minecraft:dye:4>, tinPlate, <minecraft:dye:4>]
    ], 30, <liquid:water> * 250);

/*=========================
Squeezer
=========================*/
mods.forestry.Squeezer.removeRecipe(<liquid:juice>, [<rustic:grapes>]);
mods.forestry.Squeezer.addRecipe(<liquid:evilcraftblood> * 250, [zombieHeart], 15);
mods.forestry.Squeezer.addRecipe(<liquid:ice> * 500, [<minecraft:packed_ice>], 40);
mods.forestry.Squeezer.addRecipe(<liquid:seed.oil> * 100, [<extrabees:honey_drop:7>], 10);
mods.forestry.Squeezer.addRecipe(<liquid:cryotheum> * 100, [<extrabees:honey_drop:5>], 40);


/*=========================
Centrifuge
(Array of Output + %, InputStack, Time in Ticks)
=========================*/
mods.forestry.Centrifuge.removeRecipe(<extrabees:honey_comb>);
mods.forestry.Centrifuge.removeRecipe(<extrabees:honey_comb:23>);
mods.forestry.Centrifuge.removeRecipe(<extrabees:honey_comb:11>);
mods.forestry.Centrifuge.removeRecipe(<forestry:bee_combs:15>);
mods.forestry.Centrifuge.addRecipe([scrapBag * 4 % 100, <minecraft:redstone> * 3 % 85, <extrabees:misc:22> % 20], <contenttweaker:scrapelec>, 80);
mods.forestry.Centrifuge.addRecipe([<calculator:soil> % 90, <forestry:fertilizer_bio> % 20, <immersiveengineering:seed> % 10, <extrautils2:redorchid> % 2], <actuallyadditions:item_misc:21>, 50);
mods.forestry.Centrifuge.addRecipe([<appliedenergistics2:material:5> % 50, <evilcraft:dull_dust> % 40, <appliedenergistics2:crystal_seed> % 5], <appliedenergistics2:material:2>, 100);
mods.forestry.Centrifuge.addRecipe([<appliedenergistics2:material:5> % 35, <evilcraft:dull_dust> % 20, <appliedenergistics2:crystal_seed> % 2], <actuallyadditions:item_dust:5>, 100);
mods.forestry.Centrifuge.addRecipe([<traverse:dead_grass> % 100, <calculator:soil> % 50, <forestry:beeswax> % 50, <forestry:honey_drop> % 30], <extrabees:honey_comb>, 80);
mods.forestry.Centrifuge.addRecipe([<xreliquary:mob_ingredient> % 70, <xreliquary:mob_ingredient:1> % 30, <forestry:beeswax> % 30, <forestry:honey_drop> % 25], <extrabees:honey_comb:23>, 80);
mods.forestry.Centrifuge.addRecipe([<minecraft:cobblestone> % 100, <minecraft:stone> % 75, <appliedenergistics2:sky_stone_block> % 40, <forestry:beeswax> % 40, <forestry:honey_drop> % 25], <extrabees:honey_comb:11>, 80);
mods.forestry.Centrifuge.addRecipe([<minecraft:vine> % 80, <rustic:marsh_mallow> % 50, <forestry:beeswax> % 50, <forestry:honey_drop> % 40], <forestry:bee_combs:15>, 80);

/*=========================
Moistener
=========================*/
mods.forestry.Moistener.addRecipe(<contenttweaker:moldybread>, <minecraft:bread>, 60);

/*=========================
Thermionic Fabricator
=========================*/
mods.forestry.ThermionicFabricator.addCast(<thermaldynamics:duct_16:2> * 3, [
    [<immersiveengineering:material:3>, <thermaldynamics:duct_16>, <immersiveengineering:material:3>],
    [<immersiveengineering:material:3>, <thermaldynamics:duct_16>, <immersiveengineering:material:3>],
    [<immersiveengineering:material:3>, <thermaldynamics:duct_16>, <immersiveengineering:material:3>]
    ], <liquid: glass> * 1000);

