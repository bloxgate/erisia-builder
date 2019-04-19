var rusticHealthPot = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 0}]});
var starmetalOre = <astralsorcery:blockcustomore:1>;
var starmetalIngot = <astralsorcery:itemcraftingcomponent:1>;



mods.jei.JEI.addDescription(<evilcraft:inverted_potentia:1>, "Created by when inverted potentia is struck by lightning or thrown on an environmental accumulator during a thunder storm. (Check Psi smite trick to call lightning directly or Evilcraft Sceptre of Thunder to change the weather to a thunderstorm)");
mods.jei.JEI.addDescription(<evilcraft:vengeance_essence>, "Dropped by mob spirits when killed with a piercing vengeance focus");

/*=========================
Recipe Changes - Evilcraft
=========================*/

recipes.removeByRecipeName("evilcraft:blood_extractor");
recipes.addShaped("blood extractor", <evilcraft:blood_extractor>, [
    [null, <evilcraft:spikey_claws>, null],
    [null, rusticHealthPot, null],
    [null, <silentgems:craftingmaterial:7>, null]
    ]);

recipes.remove(<evilcraft:blood_infuser>);
recipes.addShaped("blood infuser", <evilcraft:blood_infuser>, [
    [<evilcraft:condensed_blood>, <minecraft:red_nether_brick>, <evilcraft:condensed_blood>], 
    [<minecraft:red_nether_brick>, <minecraft:furnace>, <minecraft:red_nether_brick>], 
    [<evilcraft:condensed_blood>, <evilcraft:blood_infusion_core>, <evilcraft:condensed_blood>]
    ]);

recipes.remove(<evilcraft:bowl_of_promises>);
recipes.addShaped("filled bowl of promises", <evilcraft:bowl_of_promises>, [
    [<evilcraft:bowl_of_promises:1>, <evilcraft:dark_gem_crushed>], 
    [<evilcraft:dark_gem_crushed>, <botania:manaresource:1>]
    ]);

recipes.remove(<evilcraft:promise>);
recipes.addShaped("promise t1", <evilcraft:promise>, [
    [<ore:materialBowlOfPromises0>, <evilcraft:promise_acceptor>], 
    [<astralsorcery:itemrockcrystalsimple>, null]
    ]);

recipes.remove(<evilcraft:promise:1>);
recipes.addShaped("promise t2", <evilcraft:promise:1>, [
    [<ore:materialBowlOfPromises1>, <evilcraft:promise_acceptor:1>], 
    [<astralsorcery:itemcelestialcrystal>, null]
    ]);

recipes.remove(<evilcraft:promise:2>);
recipes.addShaped("promise t3", <evilcraft:promise:2>, [
    [<ore:materialBowlOfPromises2>, <evilcraft:promise_acceptor:2>], 
    [<psi:material:2>, null]
    ]);

recipes.remove(<evilcraft:inverted_potentia>);
recipes.addShaped("inv potentia", <evilcraft:inverted_potentia>, [
    [null, <evilcraft:dark_power_gem>, null],
    [<ore:ingotPsi>, <evilcraft:potentia_sphere>, <ore:ingotPsi>],
    [null, <evilcraft:dark_power_gem>, null]
    ]);

recipes.remove(<evilcraft:biome_extract>);
recipes.addShaped("biome bottle", <evilcraft:biome_extract>, [
    [null, <evilcraft:undead_plank>, null],
    [<botania:managlass>, <evilcraft:weather_container>, <botania:managlass>],
    [<botania:managlass>, <botania:managlass>, <botania:managlass>]
    ]);

recipes.remove(<evilcraft:sanguinary_environmental_accumulator>);
recipes.addShaped("environmental accumulator", <evilcraft:sanguinary_environmental_accumulator>, [
    [<evilcraft:dark_blood_brick>, <industrialforegoing:laser_lens_inverted:14>, <evilcraft:dark_blood_brick>],
    [<psi:psi_decorative:1>, <evilcraft:environmental_accumulation_core>, <psi:psi_decorative:1>],
    [<evilcraft:dark_blood_brick>, <evilcraft:blood_infusion_core>, <evilcraft:dark_blood_brick>]
    ]);

recipes.remove(<evilcraft:spirit_furnace>);
recipes.addShaped("spirit furnace", <evilcraft:spirit_furnace>, [
    [<evilcraft:dark_blood_brick>, <ore:attunedCrystal>, <evilcraft:dark_blood_brick>],
    [<evilcraft:dark_blood_brick>, <evilcraft:blood_infusion_core>, <evilcraft:dark_blood_brick>],
    [<evilcraft:dark_blood_brick>, <botania:firerod>, <evilcraft:dark_blood_brick>]
    ]);
recipes.addShaped("spirit furnace 2", <evilcraft:spirit_furnace>, [
    [<evilcraft:dark_blood_brick>, <botania:firerod>, <evilcraft:dark_blood_brick>],
    [<evilcraft:dark_blood_brick>, <evilcraft:blood_infusion_core>, <evilcraft:dark_blood_brick>],
    [<evilcraft:dark_blood_brick>, <ore:attunedCrystal>, <evilcraft:dark_blood_brick>]
    ]);

recipes.remove(<evilcraft:sanguinary_pedestal>);
recipes.addShaped(<evilcraft:sanguinary_pedestal>, [
    [<evilcraft:dark_gem>, <evilcraft:dark_gem>, <evilcraft:dark_gem>],
    [<evilcraft:hardened_blood_shard>, <evilcraft:dark_tank>, <evilcraft:hardened_blood_shard>], 
    [<astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>]
    ]);

recipes.remove(<evilcraft:weather_container>);
recipes.addShaped("weather bottle", <evilcraft:weather_container>, [
    [null, <evilcraft:dark_gem>, null],
    [null, <minecraft:glass_bottle>, null], 
    [null, <psi:material>, null]
    ]);

recipes.addShaped("Infinite water gen", <evilcraft:eternal_water_block>, [
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:paneGlass>, <evilcraft:bucket_eternal_water>, <ore:paneGlass>], 
    [<ore:paneGlass>, <evilcraft:dark_block>, <ore:paneGlass>]
    ]);




/*=========================
Blood Infuser
(inputIngredient, inputFluid, tier, outputStack, duration, xp) 
=========================*/
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<minecraft:redstone>);
mods.evilcraft.BloodInfuser.removeRecipesWithOutput(<evilcraft:undead_sapling>);
mods.evilcraft.BloodInfuser.addRecipe(starmetalOre, <liquid:evilcraftblood> * 1250, 1, starmetalIngot, 80, 6);
mods.evilcraft.BloodInfuser.addRecipe(<ore:dustAstralStarmetal>, <liquid:evilcraftblood> * 1500, 1, starmetalIngot, 80, 6);
mods.evilcraft.BloodInfuser.addRecipe(<minecraft:redstone_ore>, <liquid:evilcraftblood> * 10000, 2, <thermalfoundation:ore_fluid:2>, 100, 6);
mods.evilcraft.BloodInfuser.addRecipe(<evilcraft:dull_dust>, <liquid:evilcraftblood> * 100, 1, <minecraft:redstone>, 40, 2);
mods.evilcraft.BloodInfuser.addRecipe(<botania:manaresource:3>, <liquid:evilcraftblood> * 2000, 0, <evilcraft:undead_sapling>, 90, 5);
mods.evilcraft.BloodInfuser.addRecipe(<minecraft:lit_pumpkin>, <liquid:evilcraftblood> * 5000, 1, <botania:felpumpkin>, 90, 5);