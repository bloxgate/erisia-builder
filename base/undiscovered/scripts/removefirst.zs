#priority 99
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.game.IGame;

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
        <ore:oreYellorite>,
        <ore:oreQuartzBlack>,
        <ore:oreAstralStarmetal>,
        <ore:oreIridium>,
        <ore:oreQuartz>,
        <ore:oreCoal>,
        <ore:oreLapis>,
        <ore:oreRedstone>,
        <ore:oreDiamond>,
        <ore:oreEmerald>,
        <ore:oreCobalt>,
        <ore:oreUranium>,
        <ore:oreMithril>,
        <ore:oreTungsten>,
        <ore:orePlatinum>
    ] as IOreDictEntry[];

val metalDusts = [
        <thermalfoundation:material>,
        <thermalfoundation:material:1>,
        <actuallyadditions:item_dust:2>,
        <actuallyadditions:item_dust:3>,
        <actuallyadditions:item_dust:4>,
        <actuallyadditions:item_dust:5>,
        <thermalfoundation:material:768>,
        <actuallyadditions:item_dust:7>,
        <thermalfoundation:material:97>,
        <thermalfoundation:material:100>,
        <bigreactors:dustmetals>,
        <immersiveengineering:metal:14>,
        <magneticraft:dusts:4>,
        <thermalfoundation:material:69>,
        <thermalfoundation:material:66>,
        <thermalfoundation:material:67>,
        <thermalfoundation:material:68>,
        <thermalfoundation:material:96>,
        <thermalfoundation:material:64>,
        <thermalfoundation:material:65>,
        <mekanism:dust:2>,
        <draconicevolution:draconium_dust>,
        <thermalfoundation:material:71>,
        <thermalfoundation:material:72>,
        <thermalfoundation:material:99>,
        <calculator:enrichedgold>,
        <rustic:dust_tiny_iron>,
        <bigreactors:dustmetals:2>,
        <thermalfoundation:material:70>,
        <thermalfoundation:material:98>,
        <immersiveengineering:material:18>,
        <bigreactors:dustmetals:4>,
        <bigreactors:dustmetals:3>,
        <bigreactors:dustmetals:1>,
        <appliedenergistics2:material:2>,
        <magneticraft:dusts:5>
    ] as IItemStack[];

val hiddenItems = [
        <magneticraft:ingots:7>,
        <immersiveengineering:metal:1>,
        <forestry:ingot_copper>,
        <magneticraft:ingots:2>,
        <mekanism:ingot:5>,
        <immersiveengineering:metal>,
        <immersiveengineering:metal:2>,
        <magneticraft:ingots:3>,
        <magneticraft:ingots:10>,
        <immersiveengineering:metal:4>,
        <magneticraft:ingots:12>,
        <immersiveengineering:metal:3>,
        <forestry:ingot_tin>,
        <magneticraft:ingots:13>,
        <mekanism:ingot:6>,
        <magneticraft:ingots:11>,
        <magneticraft:ingots:9>,
        <thermalfoundation:ore:4>,
        <forestry:resources:1>,
        <immersiveengineering:ore>,
        <mekanism:oreblock:1>,
        <immersiveengineering:ore:2>,
        <immersiveengineering:ore:4>,
        <immersiveengineering:ore:3>,
        <forestry:resources:2>,
        <thermalfoundation:ore:1>,
        <magneticraft:ores:1>,
        <immersiveengineering:ore:5>,
        <forestry:ingot_bronze>,
        <mekanism:ingot:2>,
        <bigreactors:ingotmetals:5>,
        <magneticraft:ingots:6>,
        <mekanism:ingot:4>,
        <thermalfoundation:material:164>,
        <thermalfoundation:material:161>
    ] as IItemStack[];


//Removed items from the redstone furnace and exu crusher show they show up less in JEI
for oreEntry in metalOres{
    for item in oreEntry.items{
        mods.thermalexpansion.RedstoneFurnace.removeRecipe(item);
        mods.extrautils2.Crusher.remove(item);
    }
}

for dust in metalDusts{
    mods.thermalexpansion.RedstoneFurnace.removeRecipe(dust);
}

val metalChunks = <magneticraft:chunks>.definition;
val metalChunksRocky = <magneticraft:rocky_chunks>.definition;
for toometa in 0 to 6{
    mods.thermalexpansion.RedstoneFurnace.removeRecipe(metalChunks.makeStack(toometa));
    mods.thermalexpansion.RedstoneFurnace.removeRecipe(metalChunksRocky.makeStack(toometa));
} 
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<magneticraft:chunks:7>);
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<magneticraft:rocky_chunks:7>);
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<magneticraft:rocky_chunks:8>);
for toometa in 9 to 15{
    mods.thermalexpansion.RedstoneFurnace.removeRecipe(metalChunks.makeStack(toometa));
    mods.thermalexpansion.RedstoneFurnace.removeRecipe(metalChunksRocky.makeStack(toometa));
}

//Hide non-prefered ingots/ores from jei
for item in hiddenItems{
    mods.jei.JEI.hide(item);
}      

//Misc clean up
<ore:ingotOsmium>.remove(<magneticraft:ingots:11>);
<ore:logWood>.remove(<evilcraft:undead_log>);