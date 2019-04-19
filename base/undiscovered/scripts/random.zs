import crafttweaker.item.IItemDefinition;

var scrapBag = <scrap:scrap>.withTag({TABLE: "scrap:scrap", PLATE: "d1a77f", GEAR: "d0c2ba", NAME: "scrap"});
var liquidTube = <stevescarts:modulecomponents:65>;
var vodkaBottle = <binniecore:glass:1>.withTag({Fluid: {FluidName: "binnie.vodka", Amount: 1000}});
var vodkaBucket = <forge:bucketfilled>.withTag({FluidName: "binnie.vodka", Amount: 1000});
var aeroBucket = <forge:bucketfilled>.withTag({FluidName: "aerotheum", Amount: 1000});
var dnaBucket = <forge:bucketfilled>.withTag({FluidName: "liquiddna", Amount: 1000});
val solidHeart = <contenttweaker:solidheart>.definition;
solidHeart.setContainerItem(solidHeart); //should keep the item from being used in crafting or being eaten by ae2

mods.jei.JEI.addDescription(<contenttweaker:entitykiller>, "It kills stuff");
mods.jei.JEI.addDescription(<contenttweaker:bqmupdate>, "Run once to sync new quests after updating pack versions");
mods.jei.JEI.addDescription(scrapBag, "Contains random junk and broken parts. Right click to open.");
mods.jei.JEI.addDescription(<scrap:broken.plate:*>, "Found in piles of scrap");
mods.jei.JEI.addDescription(<contenttweaker:lostcityportal>, "The portal to the lost city dimension can be opened by placing a bed on top of two blocks of empowered restonia crystals. The bed must also be surround by 6 skulls. When properly made, right clicking the pillow will teleport you to the lost city dimension.");
mods.jei.JEI.addDescription(<appliedenergistics2:material:45>, "Needs a steel hammer to be crafted on the crushing table.");
mods.jei.JEI.addDescription(<forestry:peat>, "Created by letting bog earth soak next to a water source");
mods.jei.JEI.addDescription(<liquid:gasoline>, "Created by processing oil in an Immersive Petroleum distillation tower");
mods.jei.JEI.addDescription(<liquid:lubricant>, "Created by processing oil in an Immersive Petroleum distillation tower");
mods.jei.JEI.addDescription(<liquid:diesel>, "Created by processing oil in an Immersive Petroleum distillation tower");
mods.jei.JEI.addDescription(<akashictome:tome>, "Can hold many different books and journals together when combined in a crafting grid. Right click to morph book, left click to revert held book back to tome.");
mods.jei.JEI.addDescription(<harvestcraft:well>, "Infinite water, cannot be piped out.");
mods.jei.JEI.addDescription(<contenttweaker:butterflyspray>, "Kills all butterflies in the world.");
mods.jei.JEI.addDescription(<harvestcraft:waterfilter>, "Needs to be surrounded on 5 sides by water and filled with woven cloth");
mods.jei.JEI.hide(<contenttweaker:mthand>);
mods.jei.JEI.addItem(<psi:psi_decorative:1>);
mods.jei.JEI.addItem(<psi:psi_decorative:2>);
mods.jei.JEI.addItem(<psi:psi_decorative:7>);
mods.jei.JEI.addItem(<psi:psi_decorative:8>);



<ore:brokenPlate>.add(<scrap:broken.plate:*>);
<ore:plankWood>.add(<contenttweaker:holyplank>);
<cookingforblockheads:sink>.addTooltip(format.red("Needs water pumped in"));
<extrautils2:passivegenerator:6>.addTooltip(format.red("CANNOT BE MOVED ONCE PLACED"));
<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}).addTooltip(format.red("Disabled"));
<thermalexpansion:machine>.addTooltip(format.red("Disabled"));
<thermalexpansion:device:8>.addTooltip(format.red("Disabled"));


//Temp removed for crashin shit
recipes.remove(<bibliocraft:framedchest:*>); 

/*=========================
Recipe Changes - Other
=========================*/

recipes.remove(<ironchest:iron_chest:4>);
recipes.remove(<ironchest:iron_chest:1>);
recipes.remove(<ironchest:iron_chest:2>);
recipes.remove(<ironchest:iron_chest:5>);
recipes.remove(<ironchest:iron_chest:6>);

recipes.remove(<ironchest:iron_gold_chest_upgrade>);
recipes.addShaped("iron to gold chest", <ironchest:iron_gold_chest_upgrade>, [
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], 
    [<ore:plateGold>, <minecraft:iron_block>, <ore:plateGold>], 
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]
    ]);

recipes.remove(<ironchest:gold_diamond_chest_upgrade>);
recipes.addShaped("gold to diamond chest", <ironchest:gold_diamond_chest_upgrade> * 2, [
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>], 
    [<ore:plateDiamond>, <minecraft:gold_block>, <ore:plateDiamond>], 
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]
    ]);

recipes.remove(<ironchest:copper_silver_chest_upgrade>);
recipes.addShaped("copper to silver chest", <ironchest:copper_silver_chest_upgrade>, [
    [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>], 
    [<ore:plateSilver>, <ore:blockCopper>, <ore:plateSilver>], 
    [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>]
    ]);

recipes.remove(<ironchest:silver_gold_chest_upgrade>);
recipes.addShaped("silver to gold chest", <ironchest:silver_gold_chest_upgrade>, [
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], 
    [<ore:plateGold>, <ore:blockSilver>, <ore:plateGold>], 
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]
    ]);

recipes.remove(<ironchest:copper_iron_chest_upgrade>);
recipes.addShaped("copper to iron chest", <ironchest:copper_iron_chest_upgrade>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
    [<ore:plateIron>, <ore:blockCopper>, <ore:plateIron>], 
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
    ]);

recipes.remove(<storagedrawers:upgrade_template>);
recipes.addShaped("drawer upgrade", <storagedrawers:upgrade_template>*2, [
    [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], 
    [<ore:stickIron>, <ore:drawerBasic>, <ore:stickIron>], 
    [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]
    ]);

recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.addShaped("iron drawer", <storagedrawers:upgrade_storage:1>, [
    [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], 
    [<ore:plateIron>, <storagedrawers:upgrade_template>, <ore:plateIron>], 
    [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]
    ]);

recipes.remove(<storagedrawers:upgrade_storage:2>);
recipes.addShaped("gold drawer", <storagedrawers:upgrade_storage:2>, [
    [<ore:rodGold>, <ore:rodGold>, <ore:rodGold>], 
    [<ore:plateGold>, <storagedrawers:upgrade_template>, <ore:plateGold>], 
    [<ore:rodGold>, <ore:rodGold>, <ore:rodGold>]
    ]);

recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.addShaped("diamond drawer", <storagedrawers:upgrade_storage:3>, [
    [<ore:rodDiamond>, <ore:rodDiamond>, <ore:rodDiamond>], 
    [<ore:plateDiamond>, <storagedrawers:upgrade_template>, <ore:plateDiamond>], 
    [<ore:rodDiamond>, <ore:rodDiamond>, <ore:rodDiamond>]
    ]);

recipes.remove(<storagedrawers:upgrade_storage:4>);
recipes.addShaped("emerald drawer", <storagedrawers:upgrade_storage:4>, [
    [<ore:rodEmerald>, <ore:rodEmerald>, <ore:rodEmerald>], 
    [<ore:plateEmerald>, <storagedrawers:upgrade_template>, <ore:plateEmerald>], 
    [<ore:rodEmerald>, <ore:rodEmerald>, <ore:rodEmerald>]
    ]);

recipes.addShaped("drawer void", <storagedrawers:upgrade_void>, [
    [null, <ore:dyeBlack>], 
    [<storagedrawers:upgrade_template>, null]
    ]);

recipes.remove(<storagedrawers:upgrade_conversion>);
recipes.addShaped("drawer oredict", <storagedrawers:upgrade_conversion>, [
    [<forestry:thermionic_tubes:11>, <calculator:circuitboard:8>, <forestry:thermionic_tubes:11>], 
    [<calculator:circuitboard:8>, <storagedrawers:upgrade_template>, <calculator:circuitboard:8>], 
    [<forestry:thermionic_tubes:11>, <calculator:circuitboard:8>, <forestry:thermionic_tubes:11>]
    ]);

recipes.addShaped("drawer oredict2", <storagedrawers:upgrade_conversion>, [
    [<forestry:thermionic_tubes:11>, <calculator:circuitboard:5>, <forestry:thermionic_tubes:11>], 
    [<calculator:circuitboard:5>, <storagedrawers:upgrade_template>, <calculator:circuitboard:5>], 
    [<forestry:thermionic_tubes:11>, <calculator:circuitboard:5>, <forestry:thermionic_tubes:11>]
    ]);

recipes.remove(<grapplemod:repeller>);
recipes.addShaped("magnetic flight", <grapplemod:repeller>, [
    [null, <actuallyadditions:item_crystal:1>, null], 
    [<actuallyadditions:item_crystal:5>, <ore:ingotTungsten>, <actuallyadditions:item_crystal:5>], 
    [null, <actuallyadditions:item_crystal:1>, null]
    ]);

recipes.addShapeless(<contenttweaker:heartcast>, [
    <contenttweaker:resinplate>, <contenttweaker:solidheart>
    ]);

recipes.addShapeless(<contenttweaker:heartcast>, [
    <forestry:wax_cast>, <contenttweaker:solidheart>
    ]);

recipes.addShapeless(<redstonepaste:redstonepaste>, [
    <evilcraft:dull_dust>, <ore:dyeRed>, <ore:slimeball>
    ]);

recipes.addShapeless(<contenttweaker:holyplank> * 4, [
    <contenttweaker:holylog>
    ]);

recipes.addShaped("repaired iron plate", <thermalfoundation:material:32>, [
    [<contenttweaker:screws>, <ore:brokenPlateIron>, <contenttweaker:screws>], 
    [<ore:brokenPlateIron>, null, <ore:brokenPlateIron>], 
    [<contenttweaker:screws>, <ore:brokenPlateIron>, <contenttweaker:screws>]
    ]);

recipes.addShaped("repaired invar plate", <thermalfoundation:material:354>, [
    [<contenttweaker:screws>, <ore:brokenPlateInvar>, <contenttweaker:screws>], 
    [<ore:brokenPlateInvar>, null, <ore:brokenPlateInvar>], 
    [<contenttweaker:screws>, <ore:brokenPlateInvar>, <contenttweaker:screws>]
    ]);

recipes.addShaped("repaired silver plate", <thermalfoundation:material:322>, [
    [<contenttweaker:screws>, <ore:brokenPlateSilver>, <contenttweaker:screws>], 
    [<ore:brokenPlateSilver>, null, <ore:brokenPlateSilver>], 
    [<contenttweaker:screws>, <ore:brokenPlateSilver>, <contenttweaker:screws>]
    ]);

recipes.addShaped("repaired iron gear", <thermalfoundation:material:24>, [
    [<contenttweaker:screws>, <ore:brokenGearIron>, <contenttweaker:screws>], 
    [<ore:brokenGearIron>, null, <ore:brokenGearIron>], 
    [<contenttweaker:screws>, <ore:brokenGearIron>, <contenttweaker:screws>]
    ]);

recipes.addShaped("repaired copper gear", <thermalfoundation:material:256>, [
    [<contenttweaker:screws>, <ore:brokenGearCopper>, <contenttweaker:screws>], 
    [<ore:brokenGearCopper>, null, <ore:brokenGearCopper>], 
    [<contenttweaker:screws>, <ore:brokenGearCopper>, <contenttweaker:screws>]
    ]);

recipes.addShaped("repaired iron rod", <silentgems:craftingmaterial:7> * 2, [
    [null, null, <contenttweaker:brokenrod>], 
    [null, <contenttweaker:brokenrod>, null], 
    [<contenttweaker:brokenrod>, null, null]
    ]);

recipes.addShapeless(<harvestcraft:grapejellyitem>, [
    <harvestcraft:saucepanitem>, <harvestcraft:jellyfishrawitem>, <ore:listAllsugar>
    ]);

recipes.addShapeless(scrapBag * 2, [
    <contenttweaker:bagofjunk>
    ]);

recipes.addShaped("quest updater", <contenttweaker:bqmupdate>, [
    [null, <minecraft:stick>, null], 
    [<minecraft:stick>, <minecraft:dirt>, <minecraft:stick>], 
    [null, null, null]
    ]);

recipes.remove(<xtones:lamp_flat>);
recipes.addShaped(<xtones:lamp_flat> * 2, [
    [null, null, null],
    [<advgenerators:iron_frame>, <ore:glowstone>, <advgenerators:iron_frame>], 
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]
    ]);

recipes.addShaped(<chisel:factory> * 16, [
    [<minecraft:stone>, <bigreactors:ingotmetals:2>, <minecraft:stone>],
    [<bigreactors:ingotmetals:2>, null, <bigreactors:ingotmetals:2>], 
    [<minecraft:stone>, <bigreactors:ingotmetals:2>, <minecraft:stone>]
    ]);

recipes.remove(<danknull:dank_null_panel:5>);
recipes.addShaped(<danknull:dank_null_panel:5>, [
    [<actuallyadditions:block_crystal:4>, <minecraft:coal_block>, <actuallyadditions:block_crystal:4>],
    [<minecraft:coal_block>, <minecraft:stained_glass_pane:5>, <minecraft:coal_block>], 
    [<actuallyadditions:block_crystal:4>, <minecraft:coal_block>, <actuallyadditions:block_crystal:4>]
    ]);

recipes.remove(<danknull:dank_null_panel:4>);
recipes.addShaped(<danknull:dank_null_panel:4>, [
    [<minecraft:stained_glass_pane:9>, <minecraft:coal_block>, <minecraft:stained_glass_pane:9>],
    [<minecraft:coal_block>, <botania:storage:3>, <minecraft:coal_block>], 
    [<minecraft:stained_glass_pane:9>, <minecraft:coal_block>, <minecraft:stained_glass_pane:9>]
    ]);

recipes.remove(<danknull:dank_null_panel:3>);
recipes.addShaped(<danknull:dank_null_panel:3>, [
    [<minecraft:stained_glass_pane:4>, <minecraft:coal_block>, <minecraft:stained_glass_pane:4>],
    [<minecraft:coal_block>, <calculator:material:2>, <minecraft:coal_block>], 
    [<minecraft:stained_glass_pane:4>, <minecraft:coal_block>, <minecraft:stained_glass_pane:4>]
    ]);

recipes.remove(<danknull:dank_null_panel:2>);
recipes.addShaped(<danknull:dank_null_panel:2>, [
    [<minecraft:stained_glass_pane>, <minecraft:coal_block>, <minecraft:stained_glass_pane>],
    [<minecraft:coal_block>, <calculator:material:3>, <minecraft:coal_block>], 
    [<minecraft:stained_glass_pane>, <minecraft:coal_block>, <minecraft:stained_glass_pane>]
    ]);

recipes.remove(<danknull:dank_null_panel:1>);
recipes.addShaped(<danknull:dank_null_panel:1>, [
    [<minecraft:stained_glass_pane:3>, <minecraft:coal_block>, <minecraft:stained_glass_pane:3>],
    [<minecraft:coal_block>, <minecraft:lapis_block>, <minecraft:coal_block>], 
    [<minecraft:stained_glass_pane:3>, <minecraft:coal_block>, <minecraft:stained_glass_pane:3>]
    ]);

recipes.remove(<enderstorage:ender_storage:1>);
recipes.addShaped(<enderstorage:ender_storage:1>, [
    [<minecraft:blaze_rod>, <minecraft:wool>, <minecraft:blaze_rod>],
    [<thermalfoundation:glass:3>, <appliedenergistics2:material:11>, <thermalfoundation:glass:3>], 
    [<minecraft:blaze_rod>, <darkutils:material:1>, <minecraft:blaze_rod>]
    ]);

recipes.remove(<enderstorage:ender_storage>);
recipes.addShaped(<enderstorage:ender_storage>, [
    [<minecraft:blaze_rod>, <minecraft:wool>, <minecraft:blaze_rod>],
    [<actuallyadditions:block_crystal:3>, <minecraft:ender_chest>, <actuallyadditions:block_crystal:3>], 
    [<minecraft:blaze_rod>, <darkutils:material:1>, <minecraft:blaze_rod>]
    ]);

recipes.remove(<enderstorage:ender_pouch>);
recipes.addShaped(<enderstorage:ender_pouch>, [
    [<botania:manaresource:16>, <harvestcraft:hardenedleatheritem>, <botania:manaresource:16>],
    [<harvestcraft:hardenedleatheritem>, <darkutils:material:1>, <harvestcraft:hardenedleatheritem>], 
    [<botania:manaresource:16>, <thermalfoundation:rockwool:14>, <botania:manaresource:16>]
    ]);

recipes.addShaped(<contenttweaker:mthand>, [
    [<minecraft:cobblestone>, null, null],
    [<minecraft:stick>, null, null], 
    [<minecraft:dirt>, null, null]
    ]);

recipes.addShaped(<contenttweaker:bundle_of_sticks>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>], 
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
    ]);

recipes.addShapeless(<minecraft:comparator>, [
    <redstonepaste:stickycomparator>, <harvestcraft:freshwateritem>
    ]);

recipes.addShapeless(<minecraft:repeater>, [
    <redstonepaste:stickyrepeater>, <harvestcraft:freshwateritem>
    ]);    

recipes.addShapeless(<genetics:misc:2> * 64, [
    <contenttweaker:compressed_dye>
    ]);

recipes.addShaped(<harvestcraft:royaljellyitem>, [
    [null, <minecraft:dye:4>, null],
    [<minecraft:dye:4>, <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}), <minecraft:dye:4>], 
    [null, <minecraft:dye:4>, null]
    ]);

recipes.addShaped(<harvestcraft:royaljellyitem>, [
    [null, <minecraft:dye:4>, null],
    [<minecraft:dye:4>, <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "for.honey", Amount: 1000}}), <minecraft:dye:4>], 
    [null, <minecraft:dye:4>, null]
    ]);

recipes.addShaped(<contenttweaker:butterflyspray>, [
    [null, <immersiveengineering:metal:1>, null],
    [<immersiveengineering:metal:1>, <forestry:can>, <immersiveengineering:metal:1>], 
    [<immersiveengineering:metal:1>, <forge:bucketfilled>.withTag({FluidName: "evilcraftpoison", Amount: 1000}), <immersiveengineering:metal:1>]
    ]);
recipes.addShaped(<contenttweaker:butterflyspray>, [
    [null, <immersiveengineering:metal:1>, null],
    [<immersiveengineering:metal:1>, <forestry:can>, <immersiveengineering:metal:1>], 
    [<immersiveengineering:metal:1>, <extrabees:honey_drop:2>, <immersiveengineering:metal:1>]
    ]);

recipes.addShaped("empty injector", <contenttweaker:oreinjection>, [
    [null, <ore:rodStone>, <evilcraft:dark_spike>],
    [null, <minecraft:glass_bottle>, <ore:rodStone>], 
    [<ore:stickIron>, null, null]
    ]);

recipes.addShaped("vodka injector", <contenttweaker:oreinjectionvodka>, [
    [null, vodkaBucket, null],
    [null, liquidTube, null],
    [null, <contenttweaker:oreinjection>, null]
    ]);

recipes.addShapeless("vodka bottle injector", <contenttweaker:oreinjectionvodka>, [
    vodkaBottle, <contenttweaker:oreinjection>
    ]);

recipes.addShaped("aero injector", <contenttweaker:oreinjectionaero>, [
    [null, <contenttweaker:oreinjection>, null],
    [null, liquidTube, null],
    [null, aeroBucket, null]
    ]);

recipes.addShaped("dna injector", <contenttweaker:oreinjectiondna>, [
    [dnaBucket],
    [liquidTube],
    [<contenttweaker:oreinjection>]
    ]);

recipes.addShapeless(<harvestcraft:vinegaritem>, [
    <harvestcraft:potitem>, <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "wildberryjuice", Amount: 1000}})
    ]);

recipes.addShapeless(<harvestcraft:vinegaritem>, [
    <harvestcraft:potitem>, <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "grapejuice", Amount: 1000}})
    ]);

recipes.addShaped(<extrautils2:decorativesolid:4> * 2, [
    [<contenttweaker:glassshards>, <contenttweaker:glassshards>, <contenttweaker:glassshards>],
    [<contenttweaker:glassshards>, <minecraft:sand>, <contenttweaker:glassshards>], 
    [<contenttweaker:glassshards>, <contenttweaker:glassshards>, <contenttweaker:glassshards>]
    ]);

recipes.addShaped(<minecraft:glass>, [
    [<contenttweaker:glassshards>, <contenttweaker:glassshards>, <contenttweaker:glassshards>],
    [<contenttweaker:glassshards>, <contenttweaker:glassshards>, <contenttweaker:glassshards>], 
    [<contenttweaker:glassshards>, <contenttweaker:glassshards>, <contenttweaker:glassshards>]
    ]);

recipes.addShaped("alum pressure plate", <minecraft:heavy_weighted_pressure_plate>, [
    [<ore:ingotAluminum>, <ore:ingotAluminum>]
    ]);

recipes.addShaped("osmium pressure plate", <minecraft:heavy_weighted_pressure_plate>, [
    [<ore:ingotOsmium>, <ore:ingotOsmium>]
    ]);

recipes.addShapeless("empty tank evil", <evilcraft:dark_tank>, [
    <evilcraft:dark_tank>.marked("tank")
    ],
    function (out, ins, cInfo) {
        return out.withTag({capacity: ins.tank.tag.capacity});
    },
    function(out,cInfo,player){1;});
    
recipes.addShapeless("empty mek tank", <mekanism:machineblock2:11>, [
    <mekanism:machineblock2:11>.marked("tank")
    ],
    function (out, ins, cInfo) {
        return out.withTag({tier: ins.tank.tag.tier});
    },
    function(out,cInfo,player){1;});


recipes.addShapeless("empty tank certus", <mob_grinding_utils:tank>, [
    <mob_grinding_utils:tank>
    ]);
/*
recipes.addShapeless("empty te tank", <thermalexpansion:tank>, [
    <thermalexpansion:tank>.marked("tank")
    ],
    function (out, ins, cInfo) {
        return out.withTag({Level: ins.tank.tag.Level});
    },
    function(out,cInfo,player){1;});

recipes.addShapeless("empty tank portable", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Level: 0 as byte}), [
    <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Level: 0 as byte})
    ]);
seems broke, upper tiers worked here as well
recipes.addShapeless("empty tank mek", <mekanism:machineblock2:11>.withTag({tier: 0}), [
    <mekanism:machineblock2:11>.withTag({tier: 0})
    ]);
*/

recipes.remove(<harvestcraft:almondbutteritem>);
recipes.addShapeless(<harvestcraft:almondbutteritem>, [
    <harvestcraft:potitem>, <extratrees:food:9>
    ]);