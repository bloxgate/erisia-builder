# *======= Import =======*
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide as rh;

# *======= Changes =======*
#TR hardened glass
<ore:blockGlassHardened>.add(<techreborn:reinforced_glass>);

#BWM flour
<ore:dustWheat>.add(<betterwithmods:raw_pastry:3>);

#Wax
val wax = [
	<betterwithmods:material:13>,
	<forestry:beeswax>,
	<forestry:refractory_wax>,
	<magicbees:wax>,
	<magicbees:wax:1>,
	<magicbees:wax:2>
	] as IItemStack[];

for item in wax {
	<ore:wax>.add(item);
}

#Twine
<ore:twine>.add(<betterwithmods:material:3>);

#Pottery shard
<ore:pottery>.add(<pyrotech:material:6>);
<ore:pottery>.add(<pyrotech:material:7>);

#Ash
<ore:dustAsh>.add(<pyrotech:material>);

#Glue
<ore:glue>.add(<embers:adhesive>);

#Plastic
val plastic = <pneumaticcraft:plastic>.definition;
for i in 0 to 16 {
	<ore:plastic>.add(plastic.makeStack(i));
}

#Bauxite
<ore:oreBauxite>.add(<immersiveengineering:ore:1>);
	
# *======= Removals =======*
#Aluminium
<ore:oreAluminum>.remove(<immersiveengineering:ore:1>);
furnace.remove(<ore:ingotAluminum>);
furnace.remove(<ore:ingotPlatinum>);

#Furnace
val smelt = [
	<techreborn:ingot:14>,
	<techreborn:ingot:15>,
	<thermalfoundation:material:134>
	] as IItemStack[];

for item in smelt {
	furnace.remove(item);
}

#Plates
#recipes.remove(<techreborn:plates:17>);
#recipes.remove(<thermalfoundation:material:32>);

val remove = [
	<thaumcraft:plate:2>,
	<thaumicperiphery:gear_brass>,
	<embers:gear_dawnstone>,
	<pneumaticcraft:compressed_iron_gear>,
	] as IItemStack[];

for item in remove {
	recipes.remove(item);
}

val removeHide = [
	<pyrotech:rock:9>,
	<pyrotech:rock:5>,
	<betterwithmods:dirt_pile>,
	<betterwithmods:gravel_pile>,
	<betterwithmods:sand_pile>,
	<betterwithmods:red_sand_pile>,
	<betterwithmods:cobblestone>,
	<betterwithmods:cobblestone:1>,
	<betterwithmods:cobblestone:2>
	] as IItemStack[];

for item in removeHide {
	rh(item);
}