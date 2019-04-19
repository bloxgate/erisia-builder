#packmode peaceful

/*=========================
Peaceful Mode - Recipe Changes
These changes are intended for those playing without mobs and are disable by default.
To enable these recipes, run the command /packmode peaceful
=========================*/

//crush flint to gunpowder
mods.rustic.CrushingTub.addRecipe(<liquid:coal> * 5, <minecraft:gunpowder>, <minecraft:flint>);
mods.magneticraft.CrushingTable.addRecipe(<minecraft:flint>, <minecraft:gunpowder>, false);

//nether rod smelts to blaze rod
recipes.addShaped(<contenttweaker:netherrod>, [
    [null, <jaopca:item_stickquartz>, <minecraft:nether_wart>],
    [<jaopca:item_stickquartz>, <minecraft:nether_wart>, <jaopca:item_stickquartz>], 
    [<minecraft:nether_wart>, <jaopca:item_stickquartz>, null]
    ]);
furnace.addRecipe(<minecraft:blaze_rod>, <contenttweaker:netherrod>);

//meats crush to liquid meat, dry into rotten flesh (also free bones)
mods.rustic.CrushingTub.addRecipe(<liquid:meat> * 250, <minecraft:bone>, <minecraft:mutton>);
mods.rustic.CrushingTub.addRecipe(<liquid:meat> * 250, <minecraft:bone>, <minecraft:porkchop>);
mods.rustic.CrushingTub.addRecipe(<liquid:meat> * 250, <minecraft:bone>, <minecraft:beef>);
mods.rustic.CrushingTub.addRecipe(<liquid:meat> * 250, <minecraft:bone>, <minecraft:chicken>);
mods.rustic.CrushingTub.addRecipe(<liquid:meat> * 250, <minecraft:bone>, <minecraft:rabbit>);
mods.rustic.EvaporatingBasin.addRecipe(<minecraft:rotten_flesh>, <liquid:meat> * 250);

//ender air + slime = ender slime
recipes.addShapeless("peace ender slime", <silentgems:craftingmaterial:31>, [
    <ore:bEnderAirBottle>, <ore:slimeball>
    ]);

//silent gem + blue dye (lapis) + dark dust = ender pearl
recipes.addShapeless("peace ender pearl", <minecraft:ender_pearl>, [
    <ore:silentGem>, <evilcraft:dark_gem_crushed>, <ore:dyeBlue>
    ]);

//dragon fruit + ender air + ender essence = dragon breath
recipes.addShapeless("peace dragon breath", <minecraft:dragon_breath>, [
    <harvestcraft:dragonfruititem>, <ore:bEnderAirBottle>, <ore:gemEnderEssence>
    ]);

//platinum nuggets + demon metal = ghast tear
recipes.addShaped(<minecraft:ghast_tear>, [
    [null, <thermalfoundation:material:198>, null],
    [<thermalfoundation:material:198>, <extrautils2:ingredients:11>, <thermalfoundation:material:198>],
    [null, <thermalfoundation:material:198>, null]
    ]);

//soul sand + crushed dark gem + black quartz heml = wither skelly skull
recipes.addShaped(<minecraft:skull:1>, [
    [<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>],
    [<evilcraft:dark_gem_crushed>, <actuallyadditions:item_helm_quartz>, <evilcraft:dark_gem_crushed>],
    [<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>]
    ]);

//enderman heart + zombie heart + shifting star + leaded concrete = petrified dragon heart
recipes.addShaped(<contenttweaker:solidheart>, [
    [<immersiveengineering:stone_decoration:7>, <immersiveengineering:stone_decoration:7>, <immersiveengineering:stone_decoration:7>],
    [<xreliquary:mob_ingredient:11>, <astralsorcery:itemshiftingstar>, <xreliquary:mob_ingredient:6>], 
    [<immersiveengineering:stone_decoration:7>, <immersiveengineering:stone_decoration:7>, <immersiveengineering:stone_decoration:7>]
    ]);

//crush potion of harming to ectoplasm
mods.rustic.CrushingTub.addRecipe(<liquid:evilcraftpoison> * 25, <randomthings:ingredient:2>, <minecraft:potion>.withTag({Potion: "minecraft:harming"}));
mods.magneticraft.CrushingTable.addRecipe(<minecraft:potion>.withTag({Potion: "minecraft:harming"}), <randomthings:ingredient:2>, false);

//creepy botania eye + ghast tear + wither skull + ectoplasm = nether star
recipes.addShaped(<minecraft:nether_star>, [
    [null, <minecraft:skull:1>, null],
    [<minecraft:ghast_tear>, <botania:thirdeye>, <minecraft:ghast_tear>], 
    [null, <randomthings:ingredient:2>, null]
    ]);

//lol devil egg
recipes.addShaped(<harvestcraft:deviledeggitem>, [
    [null, <botania:cosmetic:19>, null],
    [null, <minecraft:egg>, null], 
    [null, null, <botania:cosmetic:13>]
    ]);

//buncha stilly stuff = dragon egg
recipes.addShaped(<minecraft:dragon_egg>, [
    [<jaopca:block_blockenderessence>, <harvestcraft:deviledeggitem>, <jaopca:block_blockenderessence>],
    [<evilcraft:dark_power_gem>, <silentgems:craftingmaterial:2>, <evilcraft:dark_power_gem>], 
    [<jaopca:block_blockenderessence>, <rftools:syringe>, <jaopca:block_blockenderessence>]
    ]);

//shear meat for bones
var craftingShears = <minecraft:shears>.anyDamage().transformDamage(1);
recipes.addShapeless("peace bones", <minecraft:bone>, [
    <ore:listAllmeatraw>, craftingShears
    ]);

//shear dry blood into eyes (just like irl!)
recipes.addShapeless("peace spider eyes", <minecraft:spider_eye> * 2, [
    <evilcraft:condensed_blood>, craftingShears
    ]);

//terrasteel + netherstar + some other junk = gaia spirit
recipes.addShaped(<botania:manaresource:5> * 2, [
    [<botania:rune:13>, <botania:manaresource:4>, <botania:rune:13>],
    [<botania:manaresource:7>, <minecraft:nether_star>, <botania:manaresource:7>], 
    [<evilcraft:vein_sword>, <botania:manaresource:4>, <evilcraft:vein_sword>]
    ]);

//hat + black + fancy potion vial = witches hat
recipes.addShapeless("peace witch hat", <xreliquary:witch_hat>, [
    <minecraft:leather_helmet>, <ore:dyeBlack>, <xreliquary:potion>
    ]);

//spirit killer + cow egg + spikes = little bit of vegence
<evilcraft:piercing_vengeance_focus>.addTooltip(format.red("Not consumed in crafting"));
var focusCrafting = <evilcraft:piercing_vengeance_focus>.giveBack();
recipes.addShaped(<evilcraft:vengeance_essence> * 2, [
    [<evilcraft:dark_spike>, focusCrafting, <evilcraft:dark_spike>],
    [<evilcraft:dark_spike>, <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}}), <evilcraft:dark_spike>], 
    [<evilcraft:dark_spike>, <evilcraft:dark_spike>, <evilcraft:dark_spike>]
    ]);

//spirit killer + vindicator egg + spikes = lot of vegence
recipes.addShaped(<evilcraft:vengeance_essence> * 32, [
    [<evilcraft:dark_spike>, focusCrafting, <evilcraft:dark_spike>],
    [<evilcraft:dark_spike>, <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:vindication_illager"}}), <evilcraft:dark_spike>], 
    [<evilcraft:dark_spike>, <evilcraft:dark_spike>, <evilcraft:dark_spike>]
    ]);

//ghast tear + ender pearl + end air = shulker pear
recipes.addShapeless("peace shulker pearl", <darkutils:shulker_pearl>, [
    <minecraft:ender_pearl>, <minecraft:ghast_tear>, <ore:bEnderAirBottle>
    ]);

//shulker pearls + skystone chest = shulker shell
recipes.addShapeless("peace shulker shell", <minecraft:shulker_shell>, [
    <darkutils:shulker_pearl>, <appliedenergistics2:sky_stone_chest>, <darkutils:shulker_pearl>
    ]);

//super expensive stuff = chaos shard
recipes.addShaped(<draconicevolution:chaos_shard>, [
    [<extendedcrafting:material:24>, <extendedcrafting:storage:2>, <extendedcrafting:material:24>],
    [<extendedcrafting:material:24>, <draconicevolution:awakened_core>, <extendedcrafting:material:24>], 
    [<ore:spinnyBoi>, <extendedcrafting:material:32>, <ore:spinnyBoi>]
    ]);

//wither dust + honey drop = drop of evil
recipes.addShapeless("peace drop of evil", <extrautils2:ingredients:10>, [
    <forestry:honey_drop>, <darkutils:material>
    ]);

//dull dust + soulsand = wither dust
recipes.addShaped(<darkutils:material>, [
    [null, <minecraft:soul_sand>, null],
    [<minecraft:soul_sand>, <evilcraft:dull_dust>, <minecraft:soul_sand>], 
    [null, <minecraft:soul_sand>, null]
    ]);

//ghast tearp + chorus flower = ender tear
recipes.addShaped(<evilcraft:ender_tear>, [
    [<minecraft:chorus_flower>, <minecraft:chorus_flower>, <minecraft:chorus_flower>],
    [<minecraft:chorus_flower>, <minecraft:ghast_tear>, <minecraft:chorus_flower>], 
    [<minecraft:chorus_flower>, <minecraft:chorus_flower>, <minecraft:chorus_flower>]
    ]);

//RFTool Syringes, the useful ones anyway
recipes.addShaped("zombie syringe", <rftools:syringe>.withTag({mobName: "Zombie", level: 10, mobId: "minecraft:zombie"}), [
    [<xreliquary:mob_ingredient:6>, null],
    [null, <rftools:syringe>]
    ]);

recipes.addShaped("ghast syringe", <rftools:syringe>.withTag({mobName: "Ghast", level: 10, mobId: "minecraft:ghast"}), [
    [<minecraft:ghast_tear>, null],
    [null, <rftools:syringe>]
    ]);

recipes.addShaped("cave spider syringe", <rftools:syringe>.withTag({mobName: "CaveSpider", level: 10, mobId: "minecraft:cave_spider"}), [
    [<xreliquary:mob_ingredient:2>, null],
    [null, <rftools:syringe>]
    ]);

recipes.addShaped("guardian syringe", <rftools:syringe>.withTag({mobName: "Guardian", level: 10, mobId: "minecraft:guardian"}), [
    [<xreliquary:mob_ingredient:16>, null],
    [null, <rftools:syringe>]
    ]);

recipes.addShaped("blaze syringe", <rftools:syringe>.withTag({mobName: "Blaze", level: 10, mobId: "minecraft:blaze"}), [
    [<xreliquary:mob_ingredient:7>, null],
    [null, <rftools:syringe>]
    ]);

recipes.addShaped("enderman syringe", <rftools:syringe>.withTag({mobName: "Enderman", level: 10, mobId: "minecraft:enderman"}), [
    [<xreliquary:mob_ingredient:11>, null],
    [null, <rftools:syringe>]
    ]);

recipes.addShaped("pigman syringe", <rftools:syringe>.withTag({mobName: "PigZombie", level: 10, mobId: "minecraft:zombie_pigman"}), [
    [<xreliquary:mob_ingredient:6>, <minecraft:porkchop>],
    [<minecraft:porkchop>, <rftools:syringe>]
    ]);

recipes.addShaped("shulker syringe", <rftools:syringe>.withTag({mobName: "Shulker", level: 10, mobId: "minecraft:shulker"}), [
    [<darkutils:shulker_pearl>, null],
    [null, <rftools:syringe>]
    ]);