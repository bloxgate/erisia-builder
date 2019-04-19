#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var antiIceBlock = VanillaFactory.createBlock("anti_ice", <blockmaterial:ice>);
antiIceBlock.setLightOpacity(3);
antiIceBlock.setLightValue(0);
antiIceBlock.setBlockHardness(5.0);
antiIceBlock.setBlockResistance(5.0);
antiIceBlock.setToolClass("pickaxe");
antiIceBlock.setToolLevel(0);
antiIceBlock.setBlockSoundType(<soundtype:snow>);
antiIceBlock.setSlipperiness(0.3);
antiIceBlock.register();

var chargedIridiumOre = VanillaFactory.createBlock("charged_iridium", <blockmaterial:rock>);
chargedIridiumOre.register();

var irradiatedIridiumOre = VanillaFactory.createBlock("irradiated_iridium", <blockmaterial:rock>);
irradiatedIridiumOre.register();

var rottenPotBlock = VanillaFactory.createBlock("rotten_pot_block", <blockmaterial:cactus>);
rottenPotBlock.setBlockHardness(1.0);
rottenPotBlock.register();

var obsidianMekCase = VanillaFactory.createBlock("obsidiancase", <blockmaterial:rock>);
obsidianMekCase.register();

var platslurry = VanillaFactory.createBlock("platslurry", <blockmaterial:ground>);
platslurry.register();

var scrapelec = VanillaFactory.createBlock("scrapelec", <blockmaterial:rock>);
scrapelec.register();

var holylog = VanillaFactory.createBlock("holylog", <blockmaterial:wood>);
holylog.setLightValue(3);
holylog.setToolClass("axe");
holylog.register();

var holyplank = VanillaFactory.createBlock("holyplank", <blockmaterial:wood>);
holyplank.setLightValue(3);
holyplank.setToolClass("axe");
holyplank.register();

var bundleOfSticks = VanillaFactory.createBlock("bundle_of_sticks", <blockmaterial:wood>);
bundleOfSticks.setToolClass("axe");
bundleOfSticks.register();

var osmaticSteelOre = VanillaFactory.createBlock("osmaticsteelore", <blockmaterial:rock>);
osmaticSteelOre.setToolLevel(3);
osmaticSteelOre.setToolClass("pickaxe");
osmaticSteelOre.register();

var compresseddye = VanillaFactory.createBlock("compressed_dye", <blockmaterial:cactus>);
compresseddye.register();

var trophy = VanillaFactory.createBlock("trophy", <blockmaterial:rock>);
trophy.fullBlock = false;
trophy.lightOpacity = 0;
trophy.register();