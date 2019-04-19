#priority 10

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

/*
Can't we all just get along?
Aluminum blocks:
[<thermalfoundation:storage:4>, <immersiveengineering:storage:1>]
Bronze block:
[<forestry:resource_storage:3>, <thermalfoundation:storage_alloy:3>, <mekanism:basicblock:1>]
Constantan block:
[<immersiveengineering:storage:6>, <thermalfoundation:storage_alloy:4>]
Copper blocks:
[<mekanism:basicblock:12>, <forestry:resource_storage:1>, <thermalfoundation:storage>, <immersiveengineering:storage>]
Electrum block:
[<immersiveengineering:storage:7>, <thermalfoundation:storage_alloy:1>]
Invar block:
[<thermalfoundation:storage_alloy:2>]
Lead block:
[<immersiveengineering:storage:2>, <thermalfoundation:storage:3>]
Nickel block:
[<thermalfoundation:storage:5>, <immersiveengineering:storage:4>]
Silver block:
[<thermalfoundation:storage:2>, <immersiveengineering:storage:3>]
Steel block:
[<thermalfoundation:storage_alloy>, <mekanism:basicblock:5>, <immersiveengineering:storage:8>, <bigreactors:blockmetals:5>]
Tin block:
[<thermalfoundation:storage:1>, <forestry:resource_storage:2>, <mekanism:basicblock:13>]
Osmium block:
[<mekanism:basicblock>]

Metal ores oredict array
val metalOres = [
        <ore:oreAluminum>,
        <ore:oreCopper>,
        <ore:oreLead>,
        <ore:oreNickel>,
        <ore:oreSilver>,
        <ore:oreTin>,
        <ore:oreOsmium>,
        <ore:oreIron>,
        <ore:oreGold>,
        <ore:oreDraconium>,
        <ore:oreDark>,
        <ore:oreYellorite>,
        <ore:oreApatite>,
        <ore:oreQuartzBlack>,
        <ore:oreAstralStarmetal>,
        <ore:oreFoolsGold>
    ] as IOreDictEntry[];

*/


//Removes and re-adds recipes for nugget-ingot-block conversions so all recipes craft to the same prefered type regarless of what mod the input item is from 

function metalRecipeFix(
    oredictBlock  as IOreDictEntry,
    oredictIngot  as IOreDictEntry,
    oredictNugget as IOreDictEntry,
    preferedBlock as IItemStack,
    preferedIngot as IItemStack,
    preferedNugget as IItemStack
    ){
        for metalBlock in oredictBlock.items {
            //Fix block to ingot recipes
            recipes.removeShaped(metalBlock);
            recipes.removeShapeless(metalBlock);

            recipes.addShapeless(preferedIngot * 9, [
                metalBlock
                ]);
        }
        for metalIngot in oredictIngot.items {
            //Fix ingot to block and ingot to nugget recipes
            recipes.removeShaped(metalIngot * 9);
            recipes.removeShapeless(metalIngot * 9);
            recipes.removeShaped(metalIngot);
            recipes.removeShapeless(metalIngot);

            recipes.addShapeless(preferedNugget * 9, [
                metalIngot
                ]);
            recipes.addShapeless(preferedBlock, [
                metalIngot, metalIngot, metalIngot,
                metalIngot, metalIngot, metalIngot,
                metalIngot, metalIngot, metalIngot
                ]);
        }
        for metalNugget in oredictNugget.items {
            //Fix nugget to ingot recipes
            recipes.removeShaped(metalNugget * 9);
            recipes.removeShapeless(metalNugget * 9);

            recipes.addShapeless(preferedIngot, [
                metalNugget, metalNugget, metalNugget,
                metalNugget, metalNugget, metalNugget,
                metalNugget, metalNugget, metalNugget
                ]);
        }

        //Backup oredict ingot to block and nugget to ingot recipes for if a player tries to combine various mod ingots
        recipes.addShapeless(preferedBlock, [
                oredictIngot, oredictIngot, oredictIngot,
                oredictIngot, oredictIngot, oredictIngot,
                oredictIngot, oredictIngot, oredictIngot
                ]);
        recipes.addShapeless(preferedIngot, [
                oredictNugget, oredictNugget, oredictNugget,
                oredictNugget, oredictNugget, oredictNugget,
                oredictNugget, oredictNugget, oredictNugget
                ]);
}


metalRecipeFix(
    <ore:blockCopper>, <ore:ingotCopper>, <ore:nuggetCopper>,
    <thermalfoundation:storage>, <thermalfoundation:material:128>, <thermalfoundation:material:192>
    );
metalRecipeFix(
    <ore:blockTin>, <ore:ingotTin>, <ore:nuggetTin>,
    <thermalfoundation:storage:1>, <thermalfoundation:material:129>, <thermalfoundation:material:193>
    );
metalRecipeFix(
    <ore:blockSilver>, <ore:ingotSilver>, <ore:nuggetSilver>,
    <thermalfoundation:storage:2>, <thermalfoundation:material:130>, <thermalfoundation:material:194>
    );
metalRecipeFix(
    <ore:blockLead>, <ore:ingotLead>, <ore:nuggetLead>,
    <thermalfoundation:storage:3>, <thermalfoundation:material:131>, <thermalfoundation:material:195>
    );
metalRecipeFix(
    <ore:blockAluminum>, <ore:ingotAluminum>, <ore:nuggetAluminum>,
    <thermalfoundation:storage:4>, <thermalfoundation:material:132>, <thermalfoundation:material:196>
    );
metalRecipeFix(
    <ore:blockNickel>, <ore:ingotNickel>, <ore:nuggetNickel>,
    <thermalfoundation:storage:5>, <thermalfoundation:material:133>, <thermalfoundation:material:197>
    );
metalRecipeFix(
    <ore:blockSteel>, <ore:ingotSteel>, <ore:nuggetSteel>,
    <immersiveengineering:storage:8>, <immersiveengineering:metal:8>, <immersiveengineering:metal:28>
    );
metalRecipeFix(
    <ore:blockElectrum>, <ore:ingotElectrum>, <ore:nuggetElectrum>,
    <immersiveengineering:storage:7>, <immersiveengineering:metal:7>, <immersiveengineering:metal:27>
    );
metalRecipeFix(
    <ore:blockConstantan>, <ore:ingotConstantan>, <ore:nuggetConstantan>,
    <immersiveengineering:storage:6>, <immersiveengineering:metal:6>, <immersiveengineering:metal:26>
    );
metalRecipeFix(
    <ore:blockBronze>, <ore:ingotBronze>, <ore:nuggetBronze>,
    <thermalfoundation:storage_alloy:3>, <thermalfoundation:material:163>, <thermalfoundation:material:227>
    );
metalRecipeFix(
    <ore:blockBronze>, <ore:ingotBronze>, <ore:nuggetBronze>,
    <thermalfoundation:storage_alloy:3>, <thermalfoundation:material:163>, <thermalfoundation:material:227>
    );
metalRecipeFix(
    <ore:blockMithril>, <ore:ingotMithril>, <ore:nuggetMithril>,
    <thermalfoundation:storage:8>, <thermalfoundation:material:136>, <thermalfoundation:material:200>
    );


//All metal dusts/ore types should smelt into the thermal ingot, reducing redundant ingot types

//ALUMINIUM
furnace.remove(<*>, <ore:dustAluminium>);
furnace.remove(<*>, <thermalfoundation:ore:4>);
furnace.remove(<*>, <magneticraft:rocky_chunks:7>);
furnace.remove(<*>, <magneticraft:chunks:7>);
furnace.remove(<*>, <magneticraft:dusts:7>);
furnace.addRecipe(<thermalfoundation:material:132>, <ore:dustAluminium>, 2);
furnace.addRecipe(<contenttweaker:alumslag>, <thermalfoundation:ore:4>, 2);
furnace.addRecipe(<contenttweaker:alumslag>, <immersiveengineering:ore:1>, 2);
furnace.addRecipe(<thermalfoundation:material:132>, <magneticraft:rocky_chunks:7>, 2);
furnace.addRecipe(<thermalfoundation:material:132> * 2, <magneticraft:chunks:7>, 2);
furnace.addRecipe(<thermalfoundation:material:132>, <magneticraft:dusts:7>, 2);

//BRONZE
furnace.remove(<*>, <ore:dustBronze>);
furnace.addRecipe(<thermalfoundation:material:163>, <ore:dustBronze>, 2);

//CONSTANTAN
furnace.remove(<*>, <ore:dustConstantan>);
furnace.addRecipe(<immersiveengineering:metal:6>, <ore:dustConstantan>, 2);

//COPPER
furnace.remove(<*>, <ore:dustCopper>);
furnace.remove(<*>, <mekanism:oreblock:1>);
furnace.remove(<*>, <forestry:resources:1>);
furnace.remove(<*>, <immersiveengineering:ore>);
furnace.remove(<*>, <magneticraft:ores>);
furnace.remove(<*>, <magneticraft:rocky_chunks:2>);
furnace.remove(<*>, <magneticraft:chunks:2>);
furnace.remove(<*>, <magneticraft:dusts:2>);
furnace.addRecipe(<thermalfoundation:material:128>, <ore:dustCopper>, 2);
furnace.addRecipe(<thermalfoundation:material:128>, <magneticraft:rocky_chunks:2>, 2);
furnace.addRecipe(<thermalfoundation:material:128> * 2, <magneticraft:chunks:2>, 2);
furnace.addRecipe(<thermalfoundation:material:128>, <magneticraft:dusts:2>, 2);
furnace.addRecipe(<contenttweaker:copperslag>, <mekanism:oreblock:1>, 2);
furnace.addRecipe(<contenttweaker:copperslag>, <forestry:resources:1>, 2);
furnace.addRecipe(<contenttweaker:copperslag>, <immersiveengineering:ore>, 2);
furnace.addRecipe(<contenttweaker:copperslag>, <magneticraft:ores>, 2);
furnace.addRecipe(<contenttweaker:copperslag>, <thermalfoundation:ore>, 2);

//ELECTRUM
furnace.remove(<*>, <ore:dustElectrum>);
furnace.addRecipe(<immersiveengineering:metal:7>, <ore:dustElectrum>, 2);

//INVAR
furnace.remove(<*>, <ore:dustInvar>);
furnace.addRecipe(<thermalfoundation:material:162>, <ore:dustInvar>, 2);

//LEAD
furnace.remove(<*>, <ore:dustLead>);
furnace.remove(<*>, <immersiveengineering:ore:2>);
furnace.remove(<*>, <magneticraft:ores:1>);
furnace.remove(<*>, <magneticraft:rocky_chunks:3>);
furnace.remove(<*>, <magneticraft:chunks:3>);
furnace.remove(<*>, <magneticraft:dusts:3>);
furnace.addRecipe(<thermalfoundation:material:131>, <ore:dustLead>, 2);
furnace.addRecipe(<thermalfoundation:material:131>, <immersiveengineering:ore:2>, 2);
furnace.addRecipe(<thermalfoundation:material:131>, <magneticraft:ores:1>, 2);
furnace.addRecipe(<thermalfoundation:material:131>, <magneticraft:rocky_chunks:3>, 2);
furnace.addRecipe(<thermalfoundation:material:131> * 2, <magneticraft:chunks:3>, 2);
furnace.addRecipe(<thermalfoundation:material:131>, <magneticraft:dusts:3>, 2);

//NICKEL
furnace.remove(<*>, <ore:dustNickel>);
furnace.remove(<*>, <immersiveengineering:ore:4>);
furnace.remove(<*>, <magneticraft:rocky_chunks:10>);
furnace.remove(<*>, <magneticraft:chunks:10>);
furnace.remove(<*>, <magneticraft:dusts:10>);
furnace.addRecipe(<thermalfoundation:material:133>, <ore:dustNickel>, 2);
furnace.addRecipe(<thermalfoundation:material:133>, <immersiveengineering:ore:4>, 2);
furnace.addRecipe(<thermalfoundation:material:133>, <magneticraft:rocky_chunks:10>, 2);
furnace.addRecipe(<thermalfoundation:material:133> * 2, <magneticraft:chunks:10>, 2);
furnace.addRecipe(<thermalfoundation:material:133>, <magneticraft:dusts:10>, 2);

//SILVER
furnace.remove(<*>, <ore:dustSilver>);
furnace.remove(<*>, <immersiveengineering:ore:3>);
furnace.remove(<*>, <magneticraft:rocky_chunks:12>);
furnace.remove(<*>, <magneticraft:chunks:12>);
furnace.remove(<*>, <magneticraft:dusts:12>);
furnace.addRecipe(<thermalfoundation:material:130>, <ore:dustSilver>, 2);
furnace.addRecipe(<thermalfoundation:material:130>, <immersiveengineering:ore:3>, 2);
furnace.addRecipe(<thermalfoundation:material:130>, <magneticraft:rocky_chunks:12>, 2);
furnace.addRecipe(<thermalfoundation:material:130> * 2, <magneticraft:chunks:12>, 2);
furnace.addRecipe(<thermalfoundation:material:130>, <magneticraft:dusts:12>, 2);

//STEEL
furnace.remove(<*>, <ore:dustSteel>);
furnace.remove(<*>, <magneticraft:dusts:6>);
furnace.addRecipe(<immersiveengineering:metal:8>, <ore:dustSteel>, 2);
furnace.addRecipe(<immersiveengineering:metal:8>, <magneticraft:dusts:6>, 2);

//TIN
furnace.remove(<*>, <ore:dustTin>);
furnace.remove(<*>, <forestry:resources:2>);
furnace.remove(<*>, <thermalfoundation:ore:1>);
furnace.remove(<*>, <mekanism:oreblock:2>);
furnace.remove(<*>, <magneticraft:rocky_chunks:13>);
furnace.remove(<*>, <magneticraft:chunks:13>);
furnace.remove(<*>, <magneticraft:dusts:13>);
furnace.addRecipe(<thermalfoundation:material:129>, <ore:dustTin>, 2);
furnace.addRecipe(<thermalfoundation:material:129>, <forestry:resources:2>, 2);
furnace.addRecipe(<thermalfoundation:material:129>, <thermalfoundation:ore:1>, 2);
furnace.addRecipe(<thermalfoundation:material:129>, <mekanism:oreblock:2>, 2);
furnace.addRecipe(<thermalfoundation:material:129>, <magneticraft:rocky_chunks:13>, 2);
furnace.addRecipe(<thermalfoundation:material:129> * 2, <magneticraft:chunks:13>, 2);
furnace.addRecipe(<thermalfoundation:material:129>, <magneticraft:dusts:13>, 2);

//OSMIUM
furnace.remove(<*>, <magneticraft:rocky_chunks:11>);
furnace.remove(<*>, <magneticraft:chunks:11>);
furnace.remove(<*>, <magneticraft:dusts:11>);
furnace.addRecipe(<mekanism:ingot:1>, <magneticraft:rocky_chunks:11>, 2);
furnace.addRecipe(<mekanism:ingot:1> * 2, <magneticraft:chunks:11>, 2);
furnace.addRecipe(<mekanism:ingot:1>, <magneticraft:dusts:11>, 2);


//will hopefully remove various unused ores from auto ore methods
<ore:oreCopper>.remove(<mekanism:oreblock:1>);
<ore:oreCopper>.remove(<immersiveengineering:ore>);
<ore:oreCopper>.remove(<magneticraft:ores>);
<ore:oreCopper>.remove(<forestry:resources:1>);
<ore:oreSilver>.remove(<immersiveengineering:ore:3>);
<ore:oreUranium>.remove(<immersiveengineering:ore:5>);
<ore:oreTin>.remove(<thermalfoundation:ore:1>);
<ore:oreTin>.remove(<forestry:resources:2>);
<ore:oreGalena>.remove(<magneticraft:ores:1>);
<ore:oreLead>.remove(<immersiveengineering:ore:2>);
<ore:oreAluminium>.remove(<thermalfoundation:ore:4>);
<ore:oreAluminum>.remove(<thermalfoundation:ore:4>);
<ore:oreNickel>.remove(<immersiveengineering:ore:4>);


//magneticraft dust only for smelting into ingots, remove from oredict for recipes
<ore:dustIron>.remove(<magneticraft:dusts>);
<ore:dustGold>.remove(<magneticraft:dusts:1>);
<ore:dustCopper>.remove(<magneticraft:dusts:2>);
<ore:dustLead>.remove(<magneticraft:dusts:3>);
<ore:dustCobalt>.remove(<magneticraft:dusts:4>);
<ore:dustTungsten>.remove(<magneticraft:dusts:5>);
<ore:dustSteel>.remove(<magneticraft:dusts:6>);
<ore:dustAluminium>.remove(<magneticraft:dusts:7>);
<ore:dustAluminum>.remove(<magneticraft:dusts:7>);
<ore:dustMithril>.remove(<magneticraft:dusts:9>);
<ore:dustNickel>.remove(<magneticraft:dusts:10>);
<ore:dustOsmium>.remove(<magneticraft:dusts:11>);
<ore:dustSilver>.remove(<magneticraft:dusts:12>);
<ore:dustTin>.remove(<magneticraft:dusts:13>);
<ore:dustZinc>.remove(<magneticraft:dusts:14>);

//change magneticraft dust names since they have been removed from dust oredict
game.setLocalization("en_us", "item.magneticraft.dusts_iron.name", "Iron Concentrate");
game.setLocalization("en_us", "item.magneticraft.dusts_gold.name", "Gold Concentrate");
game.setLocalization("en_us", "item.magneticraft.dusts_copper.name", "Copper Concentrate");
game.setLocalization("en_us", "item.magneticraft.dusts_lead.name", "Lead Concentrate");
game.setLocalization("en_us", "item.magneticraft.dusts_cobalt.name", "Cobalt Concentrate");
game.setLocalization("en_us", "item.magneticraft.dusts_tungsten.name", "Tungsten Concentrate");
game.setLocalization("en_us", "item.magneticraft.dusts_steel.name", "Steel Concentrate");
game.setLocalization("en_us", "item.magneticraft.dusts_aluminium.name", "Aluminium Concentrate");
game.setLocalization("en_us", "item.magneticraft.dusts_silver.name", "Silver Concentrate");
game.setLocalization("en_us", "item.magneticraft.dusts_mithril.name", "Mithril Concentrate");
game.setLocalization("en_us", "item.magneticraft.dusts_tin.name", "Tin Concentrate");
game.setLocalization("en_us", "item.magneticraft.dusts_zinc.name", "Zinc Concentrate");
game.setLocalization("en_us", "item.magneticraft.dusts_osmium.name", "Osmium Concentrate");
game.setLocalization("en_us", "item.magneticraft.dusts_nickel.name", "Nickel Concentrate");

//Readd magneticraft plates to oredict
<ore:plateIron>.add(<magneticraft:light_plates>);
<ore:plateGold>.add(<magneticraft:light_plates:1>);
<ore:plateCopper>.add(<magneticraft:light_plates:2>);
<ore:plateLead>.add(<magneticraft:light_plates:3>);
<ore:plateSteel>.add(<magneticraft:light_plates:6>);

//Random ore dict additions
<ore:oreFoolsGold>.add(<magneticraft:ores:4>);
<ore:gemBrick>.add(<silentgems:gembrickcoated:*>);
<ore:gemBrick>.add(<silentgems:gembrickcoateddark:*>);
<ore:gemBrick>.add(<silentgems:gembrickcoatedlight:*>);
<ore:damagedCircuit>.add(<calculator:circuitdamaged:*>);
<ore:stickIron>.add(<silentgems:craftingmaterial:7>);
<ore:ingotSteel>.add(<contenttweaker:osmaticsteel>);
<ore:dustWood>.add(<extratrees:misc:1>);
<ore:dustWood>.add(<forestry:wood_pulp>);
<ore:silentGem>.add(<silentgems:gem:*>);
<ore:silentGem>.add(<astralsorcery:itemcraftingcomponent>);
<ore:spinnyBoi>.add(<extendedcrafting:singularity:*>);
<ore:homeCharm>.add(<silentgems:returnhomecharm:*>);
<ore:astralCrystal>.add(<astralsorcery:itemrockcrystalsimple>);
<ore:astralCrystal>.add(<astralsorcery:itemcelestialcrystal>);
<ore:bitumen>.add(<immersivepetroleum:material>);
<ore:bitumen>.add(<thermalfoundation:material:892>);
<ore:lavaRing>.add(<randomthings:lavacharm>);
<ore:oreSteel>.add(<contenttweaker:osmaticsteelore>);
<ore:materialPoisonous>.add(<extrabees:honey_drop:2>);
<ore:fenceGateWood>.add(<traverse:fir_fence_gate>);
<ore:fenceWood>.add(<traverse:fir_fence>);
