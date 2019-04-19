var psiDust = <psi:material>;
var aquamarine = <astralsorcery:itemcraftingcomponent>;
var starmetalOre = <astralsorcery:blockcustomore:1>;
var pyrotheum = <thermalfoundation:material:1024>;
var silverIngot = <thermalfoundation:material:130>;
var glassLens = <astralsorcery:itemcraftingcomponent:3>;
var psimetalIngot = <psi:material:1>;
var platinumIngot = <thermalfoundation:material:134>;

<ore:attunedCrystal>.add(<astralsorcery:itemtunedcelestialcrystal>);
mods.jei.JEI.addDescription(<astralsorcery:itemcelestialcrystal>, "Crafted by dropping a rock crystal and stardust into liquid starlight, then allowing the resulting celestial crystal cluster to fully grow.");

/*=========================
Recipe Changes - Astral
=========================*/

recipes.addShapeless("starmetal ingot", <astralsorcery:itemcraftingcomponent:1>, [
    starmetalOre, <botania:smeltrod>.giveBack()
    ]);

recipes.addShapeless("starmetal ingot2", <astralsorcery:itemcraftingcomponent:1>, [
    <ore:dustAstralStarmetal>, <botania:smeltrod>.giveBack()
    ]);

recipes.addShapeless("starmetal ingot3", <astralsorcery:itemcraftingcomponent:1>, [
    starmetalOre, pyrotheum
    ]);

    
/*=========================
Light Well
=========================*/
//mods.astralsorcery.Lightwell.addLiquefaction(<minecraft:iron_ingot>, <liquid:ironwine>, 1, 0.5, 0);
//mods.astralsorcery.Lightwell.addLiquefaction(silverIngot, <liquid:silver>, 0.7, 12, 0);
mods.astralsorcery.Lightwell.addLiquefaction(platinumIngot, <liquid:platinum>, 0.7, 12, 0);
mods.astralsorcery.Lightwell.addLiquefaction(<contenttweaker:irradiated_iridium>, <liquid:iridium>, 0.7, 12, 0);
mods.astralsorcery.Lightwell.addLiquefaction(<contenttweaker:rotten_pot_block>, <liquid:binnie.vodka>, 0.50, 10, 599919);
mods.astralsorcery.Lightwell.addLiquefaction(<thermalfoundation:material:892>, <liquid:sludge>, 0.7, 8, 0);
    
/*=========================
Starlight Infusion 
=========================*/
//mods.astralsorcery.StarlightInfusion.addInfusion(<thermalfoundation:geode>, <environmentaltech:litherite_crystal>, false, 0.1, 200);
mods.astralsorcery.StarlightInfusion.addInfusion(<minecraft:apple>, <minecraft:golden_apple:1>, false, 0.1, 100);
mods.astralsorcery.StarlightInfusion.addInfusion(<thermalfoundation:material:893>, <minecraft:redstone> * 6, false, 0.1, 100);
mods.astralsorcery.StarlightInfusion.addInfusion(<evilcraft:vengeance_focus>, <evilcraft:piercing_vengeance_focus>, false, 0.2, 200);
mods.astralsorcery.StarlightInfusion.addInfusion(<minecraft:glowstone_dust>, <thermalfoundation:material:894>, false, 0.2, 200);

/*=========================
Discovery Altar (Luminous Altar) 3x3
=========================*/
mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:blockwell>, 0);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe(<astralsorcery:blockwell>, 100, 60, [
    <ore:blockMarble>, null, <ore:blockMarble>, 
    aquamarine, psiDust, aquamarine, 
    <ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>
    ]);

mods.astralsorcery.Altar.addDiscoveryAltarRecipe(<extrautils2:endershard>*8, 100, 60, [
    <evilcraft:dark_spike>, <evilcraft:dark_spike>, <evilcraft:dark_spike>, 
    <evilcraft:dark_spike>, <minecraft:ender_pearl>, <evilcraft:dark_spike>,  
    <evilcraft:dark_spike>, <evilcraft:dark_spike>, <evilcraft:dark_spike>
    ]);


/*=========================
Attunment Altar (Starlight Altar) 3x3 + 4
=========================*/
/*
val lensNbt = <astralsorcery:blocklens>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 400, purity: 100}}});
mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:blocklens>, 1);
mods.astralsorcery.Altar.addAttunmentAltarRecipe(lensNbt, 500, 100, [
    <ore:gemAquamarine>, glassLens, <ore:gemAquamarine>, 
    glassLens, <astralsorcery:itemrockcrystalsimple>, glassLens, 
    psiDust, psiDust, psiDust, 
    null, null, 
    <ore:blockMarble>, <ore:blockMarble>
    ]);
*/

mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:itemlinkingtool>, 1);
mods.astralsorcery.Altar.addAttunmentAltarRecipe(<astralsorcery:itemlinkingtool>, 300, 60, [
    <ore:stickWood>, psiDust, null,
    <ore:stickWood>, <astralsorcery:itemrockcrystalsimple>, psiDust,
    <ore:logWood>, <ore:stickWood>, <ore:stickWood>,
    null, null, 
    <ore:logWood>, null
    ]);

mods.astralsorcery.Altar.addAttunmentAltarRecipe(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:vindication_illager"}}), 500, 100, [
    <minecraft:fermented_spider_eye>, <xreliquary:witch_hat>, <minecraft:fermented_spider_eye>, 
    <minecraft:fermented_spider_eye>, <minecraft:egg>, <minecraft:fermented_spider_eye>, 
    <minecraft:fermented_spider_eye>, <evilcraft:vengeance_essence:1>, <minecraft:fermented_spider_eye>, 
    <randomthings:imbue:2>, <randomthings:imbue:2>, 
    null, null
    ]);

mods.astralsorcery.Altar.addAttunmentAltarRecipe(<extrautils2:redorchid>, 500, 100, [
    null, <botania:shinyflower:14>, null, 
    null, <minecraft:redstone_block>, null, 
    null, <ore:redstoneRoot>, null, 
    <ore:crystalRedstone>, <ore:crystalRedstone>, 
    null, null
    ]);

mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:blockaltar:2>, 1);
mods.astralsorcery.Altar.addAttunmentAltarRecipe(<astralsorcery:blockaltar:2>, 500, 100, [
    <astralsorcery:itemrockcrystalsimple>, null, <astralsorcery:itemrockcrystalsimple>, 
    <contenttweaker:holylog>, <contenttweaker:holylog>, <contenttweaker:holylog>, 
    <ore:blockMarble>, <ore:gemPsi>, <ore:blockMarble>, 
    <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, 
    <ore:blockMarble>, <ore:blockMarble>
    ]);

mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:blockattunementaltar>, 1);
mods.astralsorcery.Altar.addAttunmentAltarRecipe(<astralsorcery:blockattunementaltar>, 500, 100, [
    null, <evilcraft:dark_power_gem_block>, null, 
    <ore:ingotAstralStarmetal>, <astralsorcery:blockattunementrelay>, <ore:ingotAstralStarmetal>, 
    <contenttweaker:holylog>, <contenttweaker:holylog>, <contenttweaker:holylog>, 
    <astralsorcery:itemrockcrystalsimple>, <astralsorcery:itemrockcrystalsimple>, 
    <ore:blockMarble>, <ore:blockMarble>
    ]);

/*=========================
Constellation Altar (Celestial Altar) 3x3 + 12
=========================*/
mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:blockaltar:3>, 2);
mods.astralsorcery.Altar.addConstellationAltarRecipe(<astralsorcery:blockaltar:3>, 2000, 100, [
    <contenttweaker:holylog>, <astralsorcery:itemcraftingcomponent:3>, <contenttweaker:holylog>,
    <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemtunedcelestialcrystal>, <astralsorcery:itemcraftingcomponent:4>,
    <psi:psi_decorative:7>, <evilcraft:environmental_accumulation_core>, <psi:psi_decorative:7>,
    <ore:blockMarble>, <ore:blockMarble>,
    <ore:blockMarble>, <ore:blockMarble>,
    <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>, <ore:runeAirB>, <ore:runePrideB>,
    <ore:eternalLifeEssence>, <ore:eternalLifeEssence>, <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>
    ]);

/*=========================
Grindstone
=========================*/
mods.astralsorcery.Grindstone.removeReipce(<thermalfoundation:material:96>);
mods.astralsorcery.Grindstone.removeReipce(<calculator:enrichedgold>);
mods.astralsorcery.Grindstone.removeReipce(<thermalfoundation:material:64>);
mods.astralsorcery.Grindstone.removeReipce(<thermalfoundation:material>);
mods.astralsorcery.Grindstone.removeReipce(<thermalfoundation:material:1>);
mods.astralsorcery.Grindstone.removeReipce(<thermalfoundation:material:68>);
mods.astralsorcery.Grindstone.removeReipce(<draconicevolution:draconium_dust>);
mods.astralsorcery.Grindstone.removeReipce(<thermalfoundation:material:72>);
mods.astralsorcery.Grindstone.removeReipce(<thermalfoundation:material:71>);
mods.astralsorcery.Grindstone.removeReipce(<appliedenergistics2:material:2>);
mods.astralsorcery.Grindstone.removeReipce(<magneticraft:dusts:5>);
mods.astralsorcery.Grindstone.removeReipce(<astralsorcery:itemcraftingcomponent:2>);
mods.astralsorcery.Grindstone.removeReipce(<astralsorcery:itemcraftingcomponent:2>);
mods.astralsorcery.Grindstone.removeReipce(<magneticraft:dusts:5>);
mods.astralsorcery.Grindstone.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:2>);

/*=========================
Starlight Transmutation
=========================*/
mods.astralsorcery.LightTransmutation.addTransmutation(<appliedenergistics2:sky_stone_block>, <contenttweaker:osmaticsteelore>, 70);
