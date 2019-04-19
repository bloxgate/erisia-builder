#norun
#loader contenttweaker
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

var bloogoo = MaterialSystem.getMaterialBuilder().setName("bloogoo").setColor(18347).build();


var part_names = ["dust", "gear", "plate", "nugget", "ingot", "beam", "bolt"] as string[];
var ore_types = ["ore"] as string[];

bloogoo.registerParts(part_names);

var ores = bloogoo.registerParts(ore_types);
for i, ore in ores {
    var oreData = ore.getData();
    oreData.addDataValue("variants", "minecraft:stone,minecraft:end_stone,minecraft:netherrack");
    oreData.addDataValue("hardness", "3,3,3");
    oreData.addDataValue("resistance", "15,15,15");
    oreData.addDataValue("harvestTool", "pickaxe,pickaxe,pickaxe");
    oreData.addDataValue("harvestLevel", "1,1,1");
}

var blockData = bloogoo.registerPart("block").getData();
blockData.addDataValue("hardness", "5");
blockData.addDataValue("resistance", "30");
blockData.addDataValue("harvestTool", "pickaxe");
blockData.addDataValue("harvestLevel", "1");