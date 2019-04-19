var graphiteDust = <bigreactors:dustmetals:2>;
var skystoneDust = <appliedenergistics2:material:45>;
var blackIron = <extendedcrafting:material>;
var liquidGlowstoneCan = <forestry:can:1>.withTag({Fluid: {FluidName: "glowstone", Amount: 1000}});
var flightRune = <silentgems:chaosrune>.withTag({chaos_buff: "silentgems:flight"});
var ironDrumBlood = <extrautils2:drum:1>.withTag({Fluid: {FluidName: "evilcraftblood", Amount: 256000}});
var vazkiiHead = <minecraft:skull:3>.withTag({SkullOwner: {Id: "8c826f34-113b-4238-a173-44639c53b6e6", Name:"Vazkii"}});
var ultimateGasPipe = <mekanism:transmitter:2>.withTag({tier: 3});
var lithiumTank = <mekanism:gastank>.withTag({tier: 1, mekData: {stored: {amount: 128000, gasName: "lithium"}}});
var dtTank = <mekanism:gastank>.withTag({tier: 1, mekData: {stored: {amount: 128000, gasName: "fusionfuel"}}});
var sulfurdioxideTank = <mekanism:gastank>.withTag({tier: 1, mekData: {stored: {amount: 128000, gasName: "sulfurdioxide"}}});
var sulfurtrioxideTank = <mekanism:gastank>.withTag({tier: 1, mekData: {stored: {amount: 128000, gasName: "sulfurtrioxide"}}});
var etheneTank = <mekanism:gastank>.withTag({tier: 1, mekData: {stored: {amount: 128000, gasName: "ethene"}}});
var hydrogenTank = <mekanism:gastank>.withTag({tier: 1, mekData: {stored: {amount: 128000, gasName: "hydrogen"}}});
var sodiumTank = <mekanism:gastank>.withTag({tier: 1, mekData: {stored: {amount: 128000, gasName: "sodium"}}});
var oxygenTank = <mekanism:gastank>.withTag({tier: 1, mekData: {stored: {amount: 128000, gasName: "oxygen"}}});
var creativeTank = <mekanism:gastank>.withTag({tier: 4});
var lavaDrum = <extrautils2:drum:1>.withTag({Fluid: {FluidName: "lava", Amount: 256000}});
var pinkSlimeDrum = <extrautils2:drum:1>.withTag({Fluid: {FluidName: "if.pink_slime", Amount: 256000}});
var concreteDrum = <extrautils2:drum:1>.withTag({Fluid: {FluidName: "concrete", Amount: 256000}});
var vodkaDrum = <extrautils2:drum:1>.withTag({Fluid: {FluidName: "binnie.vodka", Amount: 256000}});
var appleJuiceDrum = <extrautils2:drum:1>.withTag({Fluid: {FluidName: "binnie.juice.apple", Amount: 256000}});
var lubricantDrum = <extrautils2:drum:1>.withTag({Fluid: {FluidName: "lubricant", Amount: 256000}});
var starlightDrum = <extrautils2:drum:1>.withTag({Fluid: {FluidName: "astralsorcery.liquidstarlight", Amount: 256000}});
var mutagenDrum = <extrautils2:drum:1>.withTag({Fluid: {FluidName: "mutagen", Amount: 256000}});
var ultimateInduction = <mekanism:basicblock2:3>.withTag({tier: 3});
var crateSub = <forestry:resource_storage>;
//var elytra = <minecraft:elytra>.giveBack();
var elytra = <minecraft:elytra>;

<contenttweaker:solidheart>.addTooltip("Not consumed in crafting");

/*=========================
Recipe Changes - Extended Crafting
=========================*/

recipes.removeByRecipeName("extendedcrafting:black_iron_ingot");
recipes.addShaped(blackIron * 4, [
    [<minecraft:iron_ingot>, graphiteDust, <minecraft:iron_ingot>],
    [skystoneDust, <minecraft:iron_ingot>, skystoneDust], 
    [<minecraft:iron_ingot>, graphiteDust, <minecraft:iron_ingot>]
    ]);

/*=========================
5x5
mods.extendedcrafting.TableCrafting.addShaped(<output>, [
    [<>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>]
    ]);
=========================*/
mods.extendedcrafting.TableCrafting.addShaped(<bibliocraft:bookcasecreative>, [
    [<bibliocraft:bigbook>, <minecraft:bookshelf>, <minecraft:bookshelf>, <minecraft:bookshelf>, <bibliocraft:slottedbook>], 
    [<minecraft:bookshelf>, <bibliocraft:bookcase:*>, <minecraft:enchanted_book>, <bibliocraft:bookcase:*>, <minecraft:bookshelf>], 
    [<minecraft:bookshelf>, <bibliocraft:typesettingtable>, <minecraft:enchanted_book>, <bibliocraft:printingpress>, <minecraft:bookshelf>], 
    [<minecraft:bookshelf>, <bibliocraft:bookcase:*>, <minecraft:enchanted_book>, <bibliocraft:bookcase:*>, <minecraft:bookshelf>], 
    [<bibliocraft:biblioredbook>, <minecraft:bookshelf>, <minecraft:bookshelf>, <minecraft:bookshelf>, <bibliocraft:stockroomcatalog>]
    ]);


mods.extendedcrafting.TableCrafting.addShaped(<waterstrainer:super_worm>, [
    [<waterstrainer:worm>, <waterstrainer:worm>, <minecraft:dirt:2>, <actuallyadditions:item_worm>, <actuallyadditions:item_worm>], 
    [<waterstrainer:worm>, <minecraft:diamond_hoe>, <minecraft:dirt:2>, <calculator:flawlessdiamondhoe>, <actuallyadditions:item_worm>], 
    [<minecraft:mycelium>, <minecraft:mycelium>, <botany:trowel_diamond>, <sonarcore:reinforceddirtblock>, <sonarcore:reinforceddirtblock>], 
    [<actuallyadditions:item_worm>, <silentgems:hoe>, <randomthings:fertilizeddirt>, <actuallyadditions:item_hoe_crystal_light_blue>, <waterstrainer:worm>], 
    [<actuallyadditions:item_worm>, <actuallyadditions:item_worm>, <randomthings:fertilizeddirt>, <waterstrainer:worm>, <waterstrainer:worm>]
    ]);

mods.extendedcrafting.TableCrafting.addShaped(<thermalcultivation:watering_can:32000>.withTag({Water: 60000, Mode: 4}), [
    [<thermalfoundation:fertilizer:2>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <xreliquary:mob_ingredient:9>], 
    [<actuallyadditions:item_misc:23>, <magneticraft:water_generator>, crateSub, <magneticraft:water_generator>, <calculator:broccoliseeds>], 
    [<actuallyadditions:item_misc:23>, crateSub, <xreliquary:emperor_chalice>, crateSub, <calculator:broccoliseeds>], 
    [<actuallyadditions:item_misc:23>, <magneticraft:water_generator>, crateSub, <magneticraft:water_generator>, <calculator:broccoliseeds>], 
    [<xreliquary:mob_ingredient:9>, <rustic:apple_seeds>, <rustic:apple_seeds>, <rustic:apple_seeds>, <thermalfoundation:fertilizer:2>]
    ]);

/*=========================
7x7
mods.extendedcrafting.TableCrafting.addShaped(<output>, [
    [<>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>]
    ]);  
=========================*/

//5x5 recipes for 7x7 table
mods.extendedcrafting.TableCrafting.addShaped(<bibliocraft:bookcasecreative>, [
    [null, null, null, null, null, null, null], 
    [null, <bibliocraft:bigbook>, <minecraft:bookshelf>, <minecraft:bookshelf>, <minecraft:bookshelf>, <bibliocraft:slottedbook>, null], 
    [null, <minecraft:bookshelf>, <bibliocraft:bookcase:*>, <minecraft:enchanted_book>, <bibliocraft:bookcase:*>, <minecraft:bookshelf>, null], 
    [null, <minecraft:bookshelf>, <bibliocraft:typesettingtable>, <minecraft:enchanted_book>, <bibliocraft:printingpress>, <minecraft:bookshelf>, null], 
    [null, <minecraft:bookshelf>, <bibliocraft:bookcase:*>, <minecraft:enchanted_book>, <bibliocraft:bookcase:*>, <minecraft:bookshelf>, null], 
    [null, <bibliocraft:biblioredbook>, <minecraft:bookshelf>, <minecraft:bookshelf>, <minecraft:bookshelf>, <bibliocraft:stockroomcatalog>, null],
    [null, null, null, null, null, null, null]
    ]);


mods.extendedcrafting.TableCrafting.addShaped(<waterstrainer:super_worm>, [
    [null, null, null, null, null, null, null],
    [null, <waterstrainer:worm>, <waterstrainer:worm>, <minecraft:dirt:2>, <actuallyadditions:item_worm>, <actuallyadditions:item_worm>, null], 
    [null, <waterstrainer:worm>, <minecraft:diamond_hoe>, <minecraft:dirt:2>, <calculator:flawlessdiamondhoe>, <actuallyadditions:item_worm>, null], 
    [null, <minecraft:mycelium>, <minecraft:mycelium>, <botany:trowel_diamond>, <sonarcore:reinforceddirtblock>, <sonarcore:reinforceddirtblock>, null], 
    [null, <actuallyadditions:item_worm>, <silentgems:hoe>, <randomthings:fertilizeddirt>, <actuallyadditions:item_hoe_crystal_light_blue>, <waterstrainer:worm>, null], 
    [null, <actuallyadditions:item_worm>, <actuallyadditions:item_worm>, <randomthings:fertilizeddirt>, <waterstrainer:worm>, <waterstrainer:worm>, null],
    [null, null, null, null, null, null, null]
    ]);

mods.extendedcrafting.TableCrafting.addShaped(<thermalcultivation:watering_can:32000>.withTag({Water: 60000, Mode: 4}), [
    [null, null, null, null, null, null, null],
    [null, <thermalfoundation:fertilizer:2>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <xreliquary:mob_ingredient:9>, null], 
    [null, <actuallyadditions:item_misc:23>, <magneticraft:water_generator>, crateSub, <magneticraft:water_generator>, <calculator:broccoliseeds>, null], 
    [null, <actuallyadditions:item_misc:23>, crateSub, <xreliquary:emperor_chalice>, crateSub, <calculator:broccoliseeds>, null], 
    [null, <actuallyadditions:item_misc:23>, <magneticraft:water_generator>, crateSub, <magneticraft:water_generator>, <calculator:broccoliseeds>, null], 
    [null, <xreliquary:mob_ingredient:9>, <rustic:apple_seeds>, <rustic:apple_seeds>, <rustic:apple_seeds>, <thermalfoundation:fertilizer:2>, null],
    [null, null, null, null, null, null, null]
    ]);


//7x7 recipes
mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:passivegenerator:6>, [
    [<extrautils2:simpledecorative>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative:1>, <extrautils2:ineffableglass:3>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative>], 
    [<extrautils2:simpledecorative>, <extrautils2:simpledecorative:1>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative>], 
    [<extrautils2:simpledecorative>, <extrautils2:ineffableglass:3>, <extrautils2:passivegenerator:5>, <extrautils2:passivegenerator:7>, <extrautils2:passivegenerator:4>, <extrautils2:ineffableglass:3>, <extrautils2:simpledecorative>], 
    [<extrautils2:simpledecorative>, <extrautils2:ineffableglass:3>, <extrautils2:suncrystal>, <minecraft:dragon_egg>, <extrautils2:suncrystal>, <extrautils2:ineffableglass:3>, <extrautils2:simpledecorative>], 
    [<extrautils2:simpledecorative>, <extrautils2:ineffableglass:3>, <extrautils2:passivegenerator:3>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:2>, <extrautils2:ineffableglass:3>, <extrautils2:simpledecorative>], 
    [<extrautils2:simpledecorative>, <extrautils2:simpledecorative:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative>], 
    [<extrautils2:simpledecorative>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative:1>, <extrautils2:ineffableglass:3>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative>]
    ]);  

mods.extendedcrafting.TableCrafting.addShaped(<storagedrawers:upgrade_creative>, [
    [<storagedrawers:upgrade_template>, <storagedrawers:upgrade_template>, <storagedrawers:basicdrawers>, <storagedrawers:basicdrawers>, <storagedrawers:basicdrawers>, <storagedrawers:upgrade_template>, <storagedrawers:upgrade_template>], 
    [<storagedrawers:upgrade_template>, <storagedrawers:tape>, <actuallyadditions:block_giant_chest_large>, <actuallyadditions:block_giant_chest_large>, <actuallyadditions:block_giant_chest_large>, <storagedrawers:tape>, <storagedrawers:upgrade_template>], 
    [<storagedrawers:basicdrawers>, <industrialforegoing:black_hole_unit>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:compdrawers>, <storagedrawers:basicdrawers>], 
    [<storagedrawers:basicdrawers>, <industrialforegoing:black_hole_unit>, <storagedrawers:upgrade_storage:4>, <ironchest:iron_chest:5>, <storagedrawers:upgrade_storage:4>, <storagedrawers:compdrawers>, <storagedrawers:basicdrawers>], 
    [<storagedrawers:basicdrawers>, <industrialforegoing:black_hole_unit>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:compdrawers>, <storagedrawers:basicdrawers>], 
    [<storagedrawers:upgrade_template>, <storagedrawers:tape>, <binniecore:storage:5>, <binniecore:storage:5>, <binniecore:storage:5>, <storagedrawers:tape>, <storagedrawers:upgrade_template>], 
    [<storagedrawers:upgrade_template>, <storagedrawers:upgrade_template>, <storagedrawers:basicdrawers>, <storagedrawers:basicdrawers>, <storagedrawers:basicdrawers>, <storagedrawers:upgrade_template>, <storagedrawers:upgrade_template>]
    ]); 

mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:angelring>, [
    [<xreliquary:ender_staff>, <silentgems:craftingmaterial:17>, <silentgems:craftingmaterial:17>, <silentgems:craftingmaterial:17>, <silentgems:craftingmaterial:17>, <silentgems:craftingmaterial:17>, <xreliquary:angelic_feather>], 
    [<silentgems:craftingmaterial:18>, <actuallyadditions:item_wings_of_the_bats>, <actuallyadditions:block_misc:6>, elytra, <actuallyadditions:block_misc:6>, <rftools:flight_module>, <silentgems:craftingmaterial:18>], 
    [<silentgems:craftingmaterial:18>, <actuallyadditions:block_misc:6>, liquidGlowstoneCan, liquidGlowstoneCan, liquidGlowstoneCan, <actuallyadditions:block_misc:6>, <silentgems:craftingmaterial:18>], 
    [<silentgems:craftingmaterial:18>, <openglider:hang_glider_basic>, liquidGlowstoneCan, <botania:flighttiara>, liquidGlowstoneCan, <grapplemod:hookshot>, <silentgems:craftingmaterial:18>], 
    [<silentgems:craftingmaterial:18>, <actuallyadditions:block_misc:6>, liquidGlowstoneCan, liquidGlowstoneCan, liquidGlowstoneCan, <actuallyadditions:block_misc:6>, <silentgems:craftingmaterial:18>], 
    [<silentgems:craftingmaterial:18>, flightRune, <actuallyadditions:block_misc:6>, <mekanism:jetpack>, <actuallyadditions:block_misc:6>, <evilcraft:broom>, <silentgems:craftingmaterial:18>], 
    [<grapplemod:repeller>, <randomthings:plate_bouncy>, <randomthings:plate_bouncy>, <randomthings:plate_bouncy>, <randomthings:plate_bouncy>, <randomthings:plate_bouncy>, <grapplemod:launcheritem>]
    ]);

mods.extendedcrafting.TableCrafting.addShaped(<evilcraft:creative_blood_drop>, [
    [<evilcraft:blood_orb:1>, <evilcraft:garmonbozia>, <evilcraft:garmonbozia>, ironDrumBlood, <evilcraft:garmonbozia>, <evilcraft:garmonbozia>, <evilcraft:blood_orb:1>], 
    [<evilcraft:blood_infusion_core>, <evilcraft:vengeance_essence>, <evilcraft:vengeance_essence>, <evilcraft:inverted_potentia:1>, <evilcraft:vengeance_essence>, <evilcraft:vengeance_essence>, <evilcraft:blood_infusion_core>], 
    [<evilcraft:bowl_of_promises:5>, <evilcraft:vengeance_essence>, <evilcraft:corrupted_tear>, <evilcraft:corrupted_tear>, <evilcraft:corrupted_tear>, <evilcraft:vengeance_essence>, <evilcraft:bowl_of_promises:5>], 
    [<evilcraft:bowl_of_promises:5>, <evilcraft:promise_acceptor:2>, <evilcraft:promise:3>, <evilcraft:piercing_vengeance_focus>, <evilcraft:promise:4>, <evilcraft:promise_acceptor:2>, <evilcraft:bowl_of_promises:5>], 
    [<evilcraft:bowl_of_promises:5>, <evilcraft:vengeance_essence>, <evilcraft:corrupted_tear>, <evilcraft:corrupted_tear>, <evilcraft:corrupted_tear>, <evilcraft:vengeance_essence>, <evilcraft:bowl_of_promises:5>], 
    [<evilcraft:blood_infusion_core>, <evilcraft:vengeance_essence>, <evilcraft:vengeance_essence>, <evilcraft:inverted_potentia:1>, <evilcraft:vengeance_essence>, <evilcraft:vengeance_essence>, <evilcraft:blood_infusion_core>], 
    [<evilcraft:blood_orb:1>, <evilcraft:garmonbozia>, <evilcraft:garmonbozia>, ironDrumBlood, <evilcraft:garmonbozia>, <evilcraft:garmonbozia>, <evilcraft:blood_orb:1>]
    ]);

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:solidheart>, [
    [null, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, null, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, null], 
    [<immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>], 
    [<immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>], 
    [<immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <draconicevolution:dragon_heart>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>], 
    [null, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, null], 
    [null, null, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, null, null], 
    [null, null, null, <immersiveengineering:stone_decoration:5>, null, null, null]
    ]);

mods.extendedcrafting.TableCrafting.remove(<extendedcrafting:material:24>); 
mods.extendedcrafting.TableCrafting.addShaped(<extendedcrafting:material:24>, [
    [<jaopca:item_platediamond>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <jaopca:item_platediamond>], 
    [<jaopca:item_platediamond>, <extendedcrafting:material:140>, <silentgems:craftingmaterial:30>, <astralsorcery:itemcraftingcomponent:1>, <silentgems:craftingmaterial:30>, <extendedcrafting:material:140>, <jaopca:item_platediamond>], 
    [<jaopca:item_platediamond>, <extendedcrafting:material:140>, <randomthings:ingredient:3>, <astralsorcery:itemcraftingcomponent:1>, <randomthings:ingredient:3>, <extendedcrafting:material:140>, <jaopca:item_platediamond>], 
    [<jaopca:item_platediamond>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <jaopca:item_platediamond>], 
    [null, null, null, null, null, null, null], 
    [null, null, null, null, null, null, null], 
    [null, null, null, null, null, null, null]
    ]);  
    
/*=========================
9x9
mods.extendedcrafting.TableCrafting.addShaped(<output>, [
    [<>, <>, <>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>, <>, <>], 
    [<>, <>, <>, <>, <>, <>, <>, <>, <>]
    ]);  
=========================*/

//5x5 recipes for 9x9 table
mods.extendedcrafting.TableCrafting.addShaped(<bibliocraft:bookcasecreative>, [
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, <bibliocraft:bigbook>, <minecraft:bookshelf>, <minecraft:bookshelf>, <minecraft:bookshelf>, <bibliocraft:slottedbook>, null, null], 
    [null, null, <minecraft:bookshelf>, <bibliocraft:bookcase:*>, <minecraft:enchanted_book>, <bibliocraft:bookcase:*>, <minecraft:bookshelf>, null, null], 
    [null, null, <minecraft:bookshelf>, <bibliocraft:typesettingtable>, <minecraft:enchanted_book>, <bibliocraft:printingpress>, <minecraft:bookshelf>, null, null], 
    [null, null, <minecraft:bookshelf>, <bibliocraft:bookcase:*>, <minecraft:enchanted_book>, <bibliocraft:bookcase:*>, <minecraft:bookshelf>, null, null], 
    [null, null, <bibliocraft:biblioredbook>, <minecraft:bookshelf>, <minecraft:bookshelf>, <minecraft:bookshelf>, <bibliocraft:stockroomcatalog>, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null]
    ]);


mods.extendedcrafting.TableCrafting.addShaped(<waterstrainer:super_worm>, [
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, <waterstrainer:worm>, <waterstrainer:worm>, <minecraft:dirt:2>, <actuallyadditions:item_worm>, <actuallyadditions:item_worm>, null, null], 
    [null, null, <waterstrainer:worm>, <minecraft:diamond_hoe>, <minecraft:dirt:2>, <calculator:flawlessdiamondhoe>, <actuallyadditions:item_worm>, null, null], 
    [null, null, <minecraft:mycelium>, <minecraft:mycelium>, <botany:trowel_diamond>, <sonarcore:reinforceddirtblock>, <sonarcore:reinforceddirtblock>, null, null], 
    [null, null, <actuallyadditions:item_worm>, <silentgems:hoe>, <randomthings:fertilizeddirt>, <actuallyadditions:item_hoe_crystal_light_blue>, <waterstrainer:worm>, null, null], 
    [null, null, <actuallyadditions:item_worm>, <actuallyadditions:item_worm>, <randomthings:fertilizeddirt>, <waterstrainer:worm>, <waterstrainer:worm>, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null]
    ]);

mods.extendedcrafting.TableCrafting.addShaped(<thermalcultivation:watering_can:32000>.withTag({Water: 60000, Mode: 4}), [
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, <thermalfoundation:fertilizer:2>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <xreliquary:mob_ingredient:9>, null, null], 
    [null, null, <actuallyadditions:item_misc:23>, <magneticraft:water_generator>, crateSub, <magneticraft:water_generator>, <calculator:broccoliseeds>, null, null], 
    [null, null, <actuallyadditions:item_misc:23>, crateSub, <xreliquary:emperor_chalice>, crateSub, <calculator:broccoliseeds>, null, null], 
    [null, null, <actuallyadditions:item_misc:23>, <magneticraft:water_generator>, crateSub, <magneticraft:water_generator>, <calculator:broccoliseeds>, null, null], 
    [null, null, <xreliquary:mob_ingredient:9>, <rustic:apple_seeds>, <rustic:apple_seeds>, <rustic:apple_seeds>, <thermalfoundation:fertilizer:2>, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null]
    ]);


//7x7 recipes for 9x9 table
mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:passivegenerator:6>, [
    [null, null, null, null, null, null, null, null, null],
    [null, <extrautils2:simpledecorative>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative:1>, <extrautils2:ineffableglass:3>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative>, null], 
    [null, <extrautils2:simpledecorative>, <extrautils2:simpledecorative:1>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:passivegenerator>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative>, null], 
    [null, <extrautils2:simpledecorative>, <extrautils2:ineffableglass:3>, <extrautils2:passivegenerator:5>, <extrautils2:passivegenerator:7>, <extrautils2:passivegenerator:4>, <extrautils2:ineffableglass:3>, <extrautils2:simpledecorative>, null], 
    [null, <extrautils2:simpledecorative>, <extrautils2:ineffableglass:3>, <extrautils2:suncrystal>, <minecraft:dragon_egg>, <extrautils2:suncrystal>, <extrautils2:ineffableglass:3>, <extrautils2:simpledecorative>, null], 
    [null, <extrautils2:simpledecorative>, <extrautils2:ineffableglass:3>, <extrautils2:passivegenerator:3>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:2>, <extrautils2:ineffableglass:3>, <extrautils2:simpledecorative>, null], 
    [null, <extrautils2:simpledecorative>, <extrautils2:simpledecorative:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative>, null], 
    [null, <extrautils2:simpledecorative>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative:1>, <extrautils2:ineffableglass:3>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative>, null],
    [null, null, null, null, null, null, null, null, null]
    ]);  

mods.extendedcrafting.TableCrafting.addShaped(<storagedrawers:upgrade_creative>, [
    [null, null, null, null, null, null, null, null, null],
    [null, <storagedrawers:upgrade_template>, <storagedrawers:upgrade_template>, <storagedrawers:basicdrawers>, <storagedrawers:basicdrawers>, <storagedrawers:basicdrawers>, <storagedrawers:upgrade_template>, <storagedrawers:upgrade_template>, null], 
    [null, <storagedrawers:upgrade_template>, <storagedrawers:tape>, <actuallyadditions:block_giant_chest_large>, <actuallyadditions:block_giant_chest_large>, <actuallyadditions:block_giant_chest_large>, <storagedrawers:tape>, <storagedrawers:upgrade_template>, null], 
    [null, <storagedrawers:basicdrawers>, <industrialforegoing:black_hole_unit>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:compdrawers>, <storagedrawers:basicdrawers>, null], 
    [null, <storagedrawers:basicdrawers>, <industrialforegoing:black_hole_unit>, <storagedrawers:upgrade_storage:4>, <ironchest:iron_chest:5>, <storagedrawers:upgrade_storage:4>, <storagedrawers:compdrawers>, <storagedrawers:basicdrawers>, null], 
    [null, <storagedrawers:basicdrawers>, <industrialforegoing:black_hole_unit>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:compdrawers>, <storagedrawers:basicdrawers>, null], 
    [null, <storagedrawers:upgrade_template>, <storagedrawers:tape>, <binniecore:storage:5>, <binniecore:storage:5>, <binniecore:storage:5>, <storagedrawers:tape>, <storagedrawers:upgrade_template>, null], 
    [null, <storagedrawers:upgrade_template>, <storagedrawers:upgrade_template>, <storagedrawers:basicdrawers>, <storagedrawers:basicdrawers>, <storagedrawers:basicdrawers>, <storagedrawers:upgrade_template>, <storagedrawers:upgrade_template>, null],
    [null, null, null, null, null, null, null, null, null]
    ]); 

mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:angelring>, [
    [null, null, null, null, null, null, null, null, null],
    [null, <xreliquary:ender_staff>, <silentgems:craftingmaterial:17>, <silentgems:craftingmaterial:17>, <silentgems:craftingmaterial:17>, <silentgems:craftingmaterial:17>, <silentgems:craftingmaterial:17>, <xreliquary:angelic_feather>, null], 
    [null, <silentgems:craftingmaterial:18>, <actuallyadditions:item_wings_of_the_bats>, <actuallyadditions:block_misc:6>, elytra, <actuallyadditions:block_misc:6>, <rftools:flight_module>, <silentgems:craftingmaterial:18>, null], 
    [null, <silentgems:craftingmaterial:18>, <actuallyadditions:block_misc:6>, liquidGlowstoneCan, liquidGlowstoneCan, liquidGlowstoneCan, <actuallyadditions:block_misc:6>, <silentgems:craftingmaterial:18>, null], 
    [null, <silentgems:craftingmaterial:18>, <openglider:hang_glider_basic>, liquidGlowstoneCan, <botania:flighttiara>, liquidGlowstoneCan, <grapplemod:hookshot>, <silentgems:craftingmaterial:18>, null], 
    [null, <silentgems:craftingmaterial:18>, <actuallyadditions:block_misc:6>, liquidGlowstoneCan, liquidGlowstoneCan, liquidGlowstoneCan, <actuallyadditions:block_misc:6>, <silentgems:craftingmaterial:18>, null], 
    [null, <silentgems:craftingmaterial:18>, flightRune, <actuallyadditions:block_misc:6>, <mekanism:jetpack>, <actuallyadditions:block_misc:6>, <evilcraft:broom>, <silentgems:craftingmaterial:18>, null], 
    [null, <grapplemod:repeller>, <randomthings:plate_bouncy>, <randomthings:plate_bouncy>, <randomthings:plate_bouncy>, <randomthings:plate_bouncy>, <randomthings:plate_bouncy>, <grapplemod:launcheritem>, null],
    [null, null, null, null, null, null, null, null, null]
    ]);

mods.extendedcrafting.TableCrafting.addShaped(<evilcraft:creative_blood_drop>, [
    [null, null, null, null, null, null, null, null, null],
    [null, <evilcraft:blood_orb:1>, <evilcraft:garmonbozia>, <evilcraft:garmonbozia>, ironDrumBlood, <evilcraft:garmonbozia>, <evilcraft:garmonbozia>, <evilcraft:blood_orb:1>, null], 
    [null, <evilcraft:blood_infusion_core>, <evilcraft:vengeance_essence>, <evilcraft:vengeance_essence>, <evilcraft:inverted_potentia:1>, <evilcraft:vengeance_essence>, <evilcraft:vengeance_essence>, <evilcraft:blood_infusion_core>, null], 
    [null, <evilcraft:bowl_of_promises:5>, <evilcraft:vengeance_essence>, <evilcraft:corrupted_tear>, <evilcraft:corrupted_tear>, <evilcraft:corrupted_tear>, <evilcraft:vengeance_essence>, <evilcraft:bowl_of_promises:5>, null], 
    [null, <evilcraft:bowl_of_promises:5>, <evilcraft:promise_acceptor:2>, <evilcraft:promise:3>, <evilcraft:piercing_vengeance_focus>, <evilcraft:promise:4>, <evilcraft:promise_acceptor:2>, <evilcraft:bowl_of_promises:5>, null], 
    [null, <evilcraft:bowl_of_promises:5>, <evilcraft:vengeance_essence>, <evilcraft:corrupted_tear>, <evilcraft:corrupted_tear>, <evilcraft:corrupted_tear>, <evilcraft:vengeance_essence>, <evilcraft:bowl_of_promises:5>, null], 
    [null, <evilcraft:blood_infusion_core>, <evilcraft:vengeance_essence>, <evilcraft:vengeance_essence>, <evilcraft:inverted_potentia:1>, <evilcraft:vengeance_essence>, <evilcraft:vengeance_essence>, <evilcraft:blood_infusion_core>, null], 
    [null, <evilcraft:blood_orb:1>, <evilcraft:garmonbozia>, <evilcraft:garmonbozia>, ironDrumBlood, <evilcraft:garmonbozia>, <evilcraft:garmonbozia>, <evilcraft:blood_orb:1>, null],
    [null, null, null, null, null, null, null, null, null]
    ]);

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:solidheart>, [
    [null, null, null, null, null, null, null, null, null],
    [null, null, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, null, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, null, null], 
    [null, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, null], 
    [null, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, null], 
    [null, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <draconicevolution:dragon_heart>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, null], 
    [null, null, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, null, null], 
    [null, null, null, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, null, null, null], 
    [null, null, null, null, <immersiveengineering:stone_decoration:5>, null, null, null, null],
    [null, null, null, null, null, null, null, null, null]
    ]);

mods.extendedcrafting.TableCrafting.remove(<extendedcrafting:material:24>); 
mods.extendedcrafting.TableCrafting.addShaped(<extendedcrafting:material:24>, [
    [null, null, null, null, null, null, null, null, null],
    [null, <jaopca:item_platediamond>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <jaopca:item_platediamond>, null], 
    [null, <jaopca:item_platediamond>, <extendedcrafting:material:140>, <silentgems:craftingmaterial:30>, <astralsorcery:itemcraftingcomponent:1>, <silentgems:craftingmaterial:30>, <extendedcrafting:material:140>, <jaopca:item_platediamond>, null], 
    [null, <jaopca:item_platediamond>, <extendedcrafting:material:140>, <randomthings:ingredient:3>, <astralsorcery:itemcraftingcomponent:1>, <randomthings:ingredient:3>, <extendedcrafting:material:140>, <jaopca:item_platediamond>, null], 
    [null, <jaopca:item_platediamond>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <jaopca:item_platediamond>, null], 
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null]
    ]);  


//9x9 recipes    
mods.extendedcrafting.TableCrafting.addShaped(<botania:pool:1>, [
    [<ore:runeWaterB>, <botania:storage:3>, <botania:storage:3>, <botania:storage:3>, <ore:runeSpringB>, <botania:storage:3>, <botania:storage:3>, <botania:storage:3>, <ore:runeFireB>], 
    [<botania:storage:4>, <botania:storage:1>, <botania:storage>, <botania:storage>, <ore:runeLustB>, <botania:storage>, <botania:storage>, <botania:storage:1>, <botania:storage:4>], 
    [<botania:storage:4>, <botania:storage>, <botania:storage:1>, <botania:storage:2>, <ore:runeWrathB>, <botania:storage:2>, <botania:storage:1>, <botania:storage>, <botania:storage:4>], 
    [<botania:storage:4>, <botania:storage>, <botania:storage:2>, <botania:manaresource:14>, vazkiiHead, <botania:manaresource:14>, <botania:storage:2>, <botania:storage>, <botania:storage:4>], 
    [<ore:runeSummerB>, <ore:runeSlothB>, <ore:runeManaB>, <botania:spreader:3>, <botania:pool:3>, <botania:spreader:3>, <ore:runeEnvyB>, <ore:runeGluttonyB>, <ore:runeAutumnB>], 
    [<botania:storage:4>, <botania:storage>, <botania:storage:2>, <botania:manaresource:14>, <botania:manaresource:14>, <botania:manaresource:14>, <botania:storage:2>, <botania:storage>, <botania:storage:4>], 
    [<botania:storage:4>, <botania:storage>, <botania:storage:1>, <botania:storage:2>, <ore:runePrideB>, <botania:storage:2>, <botania:storage:1>, <botania:storage>, <botania:storage:4>], 
    [<botania:storage:4>, <botania:storage:1>, <botania:storage>, <botania:storage>, <ore:runeGreedB>, <botania:storage>, <botania:storage>, <botania:storage:1>, <botania:storage:4>], 
    [<ore:runeEarthB>, <botania:storage:3>, <botania:storage:3>, <botania:storage:3>, <ore:runeWinterB>, <botania:storage:3>, <botania:storage:3>, <botania:storage:3>, <ore:runeAirB>]
    ]);

mods.extendedcrafting.TableCrafting.addShaped(creativeTank, [
    [<jaopca:block_blockdimensionalshard>, <mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:controlcircuit:3>, ultimateGasPipe, <mekanism:controlcircuit:3>, <mekanism:polyethene:2>, <mekanism:polyethene:2>, <jaopca:block_blockdimensionalshard>], 
    [<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:controlcircuit:3>, <mekanism:controlcircuit:3>, ultimateGasPipe, <mekanism:controlcircuit:3>, <mekanism:controlcircuit:3>, <mekanism:polyethene:2>, <mekanism:polyethene:2>], 
    [<mekanism:polyethene:2>, <mekanism:atomicalloy>, lithiumTank, <extendedcrafting:material:32>, ultimateGasPipe, <extendedcrafting:material:32>, dtTank, <mekanism:atomicalloy>, <mekanism:polyethene:2>], 
    [<mekanism:atomicalloy>, <mekanism:atomicalloy>, <extendedcrafting:material:32>, sulfurdioxideTank, ultimateGasPipe, sulfurtrioxideTank, <extendedcrafting:material:32>, <mekanism:atomicalloy>, <mekanism:atomicalloy>], 
    [ultimateGasPipe, ultimateGasPipe, ultimateGasPipe, ultimateGasPipe, <extrautils2:drum:3>, ultimateGasPipe, ultimateGasPipe, ultimateGasPipe, ultimateGasPipe], 
    [<mekanism:atomicalloy>, <mekanism:atomicalloy>, <extendedcrafting:material:32>, etheneTank, ultimateGasPipe, hydrogenTank, <extendedcrafting:material:32>, <mekanism:atomicalloy>, <mekanism:atomicalloy>], 
    [<mekanism:polyethene:2>, <mekanism:atomicalloy>, sodiumTank, <extendedcrafting:material:32>, ultimateGasPipe, <extendedcrafting:material:32>, oxygenTank, <mekanism:atomicalloy>, <mekanism:polyethene:2>], 
    [<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:controlcircuit:3>, <mekanism:controlcircuit:3>, ultimateGasPipe, <mekanism:controlcircuit:3>, <mekanism:controlcircuit:3>, <mekanism:polyethene:2>, <mekanism:polyethene:2>], 
    [<jaopca:block_blockdimensionalshard>, <mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:controlcircuit:3>, ultimateGasPipe, <mekanism:controlcircuit:3>, <mekanism:polyethene:2>, <mekanism:polyethene:2>, <jaopca:block_blockdimensionalshard>]
    ]);

mods.extendedcrafting.TableCrafting.addShaped(<mekanism:machineblock2:11>.withTag({tier: 4}), [
    [<thermalfoundation:storage:8>, <extracells:certustank>, <extracells:certustank>, <extrautils2:flattransfernode:1>, <thermaldynamics:duct_16:6>, <extrautils2:flattransfernode:1>, <extracells:certustank>, <extracells:certustank>, <thermalfoundation:storage:8>], 
    [<extracells:certustank>, <extracells:certustank>, <extrautils2:flattransfernode:1>, <extracells:part.base:6>, <thermaldynamics:duct_16:6>, <extracells:part.base:6>, <extrautils2:flattransfernode:1>, <extracells:certustank>, <extracells:certustank>], 
    [<extracells:certustank>, <extrautils2:flattransfernode:1>, mutagenDrum, <extendedcrafting:material:32>, <thermaldynamics:duct_16:6>, <extendedcrafting:material:32>, starlightDrum, <extrautils2:flattransfernode:1>, <extracells:certustank>], 
    [<extrautils2:flattransfernode:1>, <extracells:storage.fluid:3>, <extendedcrafting:material:32>, lavaDrum, <thermaldynamics:duct_16:6>, pinkSlimeDrum, <extendedcrafting:material:32>, <extracells:storage.fluid:3>, <extrautils2:flattransfernode:1>], 
    [<thermaldynamics:duct_16:6>, <thermaldynamics:duct_16:6>, <thermaldynamics:duct_16:6>, <thermaldynamics:duct_16:6>, <extrautils2:drum:3>, <thermaldynamics:duct_16:6>, <thermaldynamics:duct_16:6>, <thermaldynamics:duct_16:6>, <thermaldynamics:duct_16:6>], 
    [<extrautils2:flattransfernode:1>, <extracells:storage.fluid:3>, <extendedcrafting:material:32>, vodkaDrum, <thermaldynamics:duct_16:6>, concreteDrum, <extendedcrafting:material:32>, <extracells:storage.fluid:3>, <extrautils2:flattransfernode:1>], 
    [<extracells:certustank>, <extrautils2:flattransfernode:1>, appleJuiceDrum, <extendedcrafting:material:32>, <thermaldynamics:duct_16:6>, <extendedcrafting:material:32>, lubricantDrum, <extrautils2:flattransfernode:1>, <extracells:certustank>], 
    [<extracells:certustank>, <extracells:certustank>, <extrautils2:flattransfernode:1>, <extracells:part.base:6>, <thermaldynamics:duct_16:6>, <extracells:part.base:6>, <extrautils2:flattransfernode:1>, <extracells:certustank>, <extracells:certustank>], 
    [<thermalfoundation:storage:8>, <extracells:certustank>, <extracells:certustank>, <extrautils2:flattransfernode:1>, <thermaldynamics:duct_16:6>, <extrautils2:flattransfernode:1>, <extracells:certustank>, <extracells:certustank>, <thermalfoundation:storage:8>]
    ]);

mods.extendedcrafting.TableCrafting.addShaped(<draconicevolution:creative_rf_source>, [
    [<bigreactors:blockmetals:4>, <bigreactors:blockmetals:4>, <thermaldynamics:duct_0:5>, <thermaldynamics:duct_0:5>, <thermaldynamics:duct_0:5>, <thermaldynamics:duct_0:5>, <thermaldynamics:duct_0:5>, <bigreactors:blockmetals:4>, <bigreactors:blockmetals:4>], 
    [<bigreactors:blockmetals:4>, <bigreactors:blockmetals:4>, <thermaldynamics:duct_0:5>, <draconicevolution:awakened_core>, <draconicevolution:chaotic_core>, <draconicevolution:awakened_core>, <thermaldynamics:duct_0:5>, <bigreactors:blockmetals:4>, <bigreactors:blockmetals:4>], 
    [<draconicevolution:draconic_energy_core>, <draconicevolution:draconic_energy_core>, <draconicevolution:awakened_core>, <draconicevolution:ender_energy_manipulator>, <extendedcrafting:singularity_ultimate>, <draconicevolution:ender_energy_manipulator>, <draconicevolution:awakened_core>, <draconicevolution:draconic_energy_core>, <draconicevolution:draconic_energy_core>], 
    [<draconicevolution:draconic_energy_core>, ultimateInduction, <draconicevolution:flow_gate>, <draconicevolution:energy_crystal:8>, null, <draconicevolution:energy_crystal:8>, <draconicevolution:flow_gate>, ultimateInduction, <draconicevolution:draconic_energy_core>], 
    [<draconicevolution:draconic_energy_core>, ultimateInduction, <draconicevolution:reactor_component>, null, <draconicevolution:reactor_core>, null, <draconicevolution:reactor_component>, ultimateInduction, <draconicevolution:draconic_energy_core>], 
    [<draconicevolution:draconic_energy_core>, ultimateInduction, <draconicevolution:flow_gate>, <draconicevolution:energy_crystal:8>, null, <draconicevolution:energy_crystal:8>, <draconicevolution:flow_gate>, ultimateInduction, <draconicevolution:draconic_energy_core>], 
    [<draconicevolution:draconic_energy_core>, <draconicevolution:draconic_energy_core>, <draconicevolution:awakened_core>, <draconicevolution:ender_energy_manipulator>, <extendedcrafting:singularity_ultimate>, <draconicevolution:ender_energy_manipulator>, <draconicevolution:awakened_core>, <draconicevolution:draconic_energy_core>, <draconicevolution:draconic_energy_core>], 
    [<bigreactors:blockmetals:4>, <bigreactors:blockmetals:4>, <thermaldynamics:duct_0:5>, <draconicevolution:awakened_core>, <draconicevolution:chaotic_core>, <draconicevolution:awakened_core>, <thermaldynamics:duct_0:5>, <bigreactors:blockmetals:4>, <bigreactors:blockmetals:4>], 
    [<bigreactors:blockmetals:4>, <bigreactors:blockmetals:4>, <thermaldynamics:duct_0:5>, <thermaldynamics:duct_0:5>, <thermaldynamics:duct_0:5>, <thermaldynamics:duct_0:5>, <thermaldynamics:duct_0:5>, <bigreactors:blockmetals:4>, <bigreactors:blockmetals:4>]
    ]);  

/*=========================
Pedestal Crafting
mods.extendedcrafting.CombinationCrafting.addRecipe(<output>, rfCost, rfRate(optional), <input>, [
    <pedestalItem>, <pedestalItem>
    ]);

=========================*/    

mods.extendedcrafting.CombinationCrafting.addRecipe(<extendedcrafting:material:32>, 50000000, <extrautils2:ingredients:12>, [
    <stevescarts:modulecomponents:49>, <evilcraft:corrupted_tear>, <psi:material:4>, <astralsorcery:itemcraftingcomponent:4>, <magneticraft:ingots:4>, <rftools:infused_diamond>, <appliedenergistics2:material:47>, <draconicevolution:draconic_ingot>
    ]);

mods.extendedcrafting.CombinationCrafting.addRecipe(<contenttweaker:compressed_dye>, 1000000, 15000, <extendedcrafting:storage:1>, [
    <draconicevolution:draconic_ingot>, <contenttweaker:goldclay>, <draconicevolution:draconic_ingot>, <forestry:can:1>.withTag({Fluid: {FluidName: "liquidlithium", Amount: 1000}})
    ]);

mods.extendedcrafting.CombinationCrafting.addRecipe(<extrautils2:ingredients:17> * 9, 950000, 15000, <extendedcrafting:storage>, [
    <minecraft:nether_star>, <minecraft:experience_bottle>, <astralsorcery:itemcraftingcomponent:2>, <darkutils:material>
    ]);