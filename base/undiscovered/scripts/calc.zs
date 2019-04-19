var blackIron = <extendedcrafting:material>;
var basicCircuit = <forestry:chipsets>.withTag({T: 0 as short});
var thickenedGlass = <extrautils2:decorativeglass>;
var empoweredEmeradic = <actuallyadditions:item_crystal_empowered:4>;
var integratedCircuit = <genetics:misc:8>;
var empoweredDiamatine = <actuallyadditions:item_crystal_empowered:2>;

recipes.remove(<sonarcore:reinforceddirtblock>);
recipes.remove(<sonarcore:reinforcedstoneblock>);
mods.jei.JEI.removeAndHide(<calculator:reinforcedchest>);
mods.jei.JEI.removeAndHide(<calculator:storagechamber>);

<calculator:endforgedpickaxe>.addTooltip("Cobalt Level");
<calculator:electricpickaxe>.addTooltip("Cobalt Level");
<calculator:handcrankedgenerator>.addTooltip("Generates: 4 rf/t");
<calculator:powercube>.addTooltip(format.red("Does not output power"));
mods.jei.JEI.addDescription(<calculator:starchextractor>, ["Produces rf when provided with coal and starch. Source of starch include:", "Saplings", "Leaves", "Vanilla & Calculator Crops", "Vanilla & Calculator Fruits", "Vanilla & Calculator Seeds"]);


/*=========================
Recipe Changes - Calc
=========================*/

recipes.remove(<calculator:calculator>);
recipes.addShaped("basic calculator", <calculator:calculator>, [
    [<ore:cobblestone>, <calculator:calculatorscreen>, <ore:cobblestone>],
    [blackIron, <calculator:calculatorassembly>, blackIron],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
    ]);

recipes.remove(<calculator:scientificcalculator>);
recipes.addShaped("scientific calculator", <calculator:scientificcalculator>, [
    [<calculator:largeamethyst>, <calculator:calculatorscreen>, <calculator:largeamethyst>],
    [blackIron, <calculator:calculatorassembly>, blackIron],
    [<calculator:reinforcedironingot>, <calculator:reinforcedironingot>, <calculator:reinforcedironingot>]
    ]);

recipes.remove(<calculator:calculatorassembly>);
recipes.addShaped("calculator assembly", <calculator:calculatorassembly>, [
    [<ore:concrete>, <rftools:button_module>, <ore:concrete>], 
    [<ore:concrete>, basicCircuit, <ore:concrete>], 
    [<ore:concrete>, <ore:concrete>, <ore:concrete>]
    ]);

recipes.remove(<calculator:calculatorscreen>);
recipes.addShaped("calc screen", <calculator:calculatorscreen>, [
    [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>], 
    [<ore:stickSteel>, thickenedGlass, <ore:stickSteel>], 
    [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>]
    ]);

recipes.remove(<calculator:atomicassembly>);
recipes.addShaped("atomic assembly", <calculator:atomicassembly>, [
    [<calculator:advancedassembly>, <calculator:atomicmodule>, <calculator:advancedassembly>], 
    [<calculator:atomicmodule>, empoweredEmeradic, <calculator:atomicmodule>], 
    [<calculator:advancedassembly>, <calculator:atomicmodule>, <calculator:advancedassembly>]
    ]);

recipes.remove(<calculator:advancedassembly>);
recipes.addShaped("advanced assembly", <calculator:advancedassembly> * 4, [
    [<ore:concrete>, <ore:gemDiamond>, <ore:concrete>], 
    [<calculator:largetanzanite>, integratedCircuit, <calculator:largetanzanite>], 
    [<ore:concrete>, <ore:gemDiamond>, <ore:concrete>]
    ]);

recipes.remove(<calculator:flawlessassembly>);
recipes.addShaped("flawless assembly", <calculator:flawlessassembly>, [
    [<ore:concrete>, integratedCircuit, <ore:concrete>], 
    [<teslacorelib:gear_diamond>, empoweredDiamatine, <teslacorelib:gear_diamond>], 
    [<ore:concrete>, <calculator:atomicmodule>, <ore:concrete>]
    ]);

recipes.remove(<calculator:atomicmodule>);
recipes.addShaped("atomic mod", <calculator:atomicmodule> * 4, [
    [<ore:gemTanzanite>, <forestry:thermionic_tubes:10>, <ore:gemTanzanite>],
    [ <forestry:thermionic_tubes:10>, <calculator:calculatorassembly>, <forestry:thermionic_tubes:10>],
    [<ore:gemTanzanite>, <ore:gearPlatinum>, <ore:gemTanzanite>]
    ]);

recipes.addShaped("calc transmitter", <calculator:transmitter>, [
    [<jaopca:item_stickiridium>, <calculator:redstoneingot>, <jaopca:item_stickiridium>], 
    [null, <calculator:electricdiamond>, null], 
    [null, <actuallyadditions:block_crystal_empowered:5>, null]
    ]);

recipes.remove(<calculator:atomicmultiplier>);
recipes.addShaped("atomic multiplier", <calculator:atomicmultiplier>, [
    [<calculator:calculatorplug>, <appliedenergistics2:material:11>, <calculator:calculatorplug>], 
    [<calculator:atomicmodule>, <calculator:atomicassembly>, <calculator:atomicmodule>], 
    [<astralsorcery:blockcelestialcollectorcrystal>, <draconicevolution:chaotic_core>, <evilcraft:garmonbozia>]
    ]);

recipes.remove(<calculator:atomiccalculator>);
recipes.addShaped("atomic calc", <calculator:atomiccalculator>, [
    [<immersiveengineering:stone_decoration:7>, <calculator:atomicbinder>, <immersiveengineering:stone_decoration:7>], 
    [<calculator:weakeneddiamond>, <calculator:atomicassembly>, <calculator:weakeneddiamond>], 
    [<immersiveengineering:stone_decoration:7>, <calculator:weakeneddiamond>, <immersiveengineering:stone_decoration:7>]
    ]);

recipes.remove(<calculator:advancedpowercube>);
recipes.addShaped(<calculator:advancedpowercube>, [
    [<calculator:reinforcedironingot>, <calculator:reinforcedironingot>, <calculator:reinforcedironingot>],
    [<actuallyadditions:item_crystal:3>, <calculator:powercube>, <actuallyadditions:item_crystal:3>], 
    [<calculator:reinforcedironingot>, <calculator:reinforcedironingot>, <calculator:reinforcedironingot>]
    ]);

recipes.addShaped(<minecraft:stone:5>, [
    [<calculator:smallstone>, <calculator:smallstone>, <calculator:smallstone>],
    [<calculator:smallstone>, <calculator:smallstone>, <calculator:smallstone>], 
    [<calculator:smallstone>, <calculator:smallstone>, <calculator:smallstone>]
    ]);

recipes.remove(<calculator:infocalculator>);
recipes.addShaped(<calculator:infocalculator>, [
    [<minecraft:cobblestone>, <minecraft:glass>, <minecraft:cobblestone>],
    [<minecraft:stone_button>, <minecraft:redstone>, <minecraft:stone_button>], 
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]
    ]);

recipes.remove(<calculator:fabricationchamber>);
/*
recipes.addShaped(<calculator:fabricationchamber>, [
    [null, null, null],
    [<stevescarts:modulecomponents:20>, null, <stevescarts:modulecomponents:20>], 
    [<calculator:material:3>, <storagedrawers:controller>, <calculator:material:3>]
    ]);
*/
    


/*=========================
Conductor Mast
=========================*/
mods.calculator.conductorMast.addRecipe(<thermalfoundation:ore:7>, 60000, <contenttweaker:charged_iridium>);
mods.calculator.conductorMast.addRecipe(<draconicevolution:draconium_block>, 1500000, <draconicevolution:draconium_block:1>);

/*=========================
Stone Separator
=========================*/
mods.calculator.stoneSeparator.addRecipe(<contenttweaker:charged_iridium>, <thermalfoundation:material:71>, <extrautils2:decorativesolid:3>);

/*=========================
Algorithmic Separator
=========================*/
mods.calculator.algorithmSeparator.removeRecipe(<calculator:redstoneingot>, <calculator:smallstone>);
mods.calculator.algorithmSeparator.addRecipe(<thermalfoundation:ore_fluid:2>, <calculator:redstoneingot>, <sonarcore:reinforcedstoneblock>);


/*=========================
Atomic Calc
=========================*/
mods.calculator.atomic.removeRecipe(<calculator:transmitter>);
mods.calculator.atomic.removeRecipe(<calculator:storagechamber>);
mods.calculator.atomic.addRecipe(<minecraft:anvil>, <appliedenergistics2:material:7>, <minecraft:heavy_weighted_pressure_plate>, <appliedenergistics2:material:8> * 2);

/*=========================
Scientific Calc
=========================*/
mods.calculator.scientific.removeRecipe(<calculator:redstoneingot>);
mods.calculator.scientific.addRecipe(<forestry:chipsets:3>, <darkutils:material:1>, <calculator:warpmodule>);
mods.calculator.scientific.addRecipe(<silentgems:craftingmaterial:15>, <darkutils:material:1>, <calculator:jumpmodule>);
mods.calculator.scientific.addRecipe(<calculator:reinforcedironingot>, <ore:dustObsidian>, <stevescarts:modulecomponents:19>);

/*=========================
Basic Calc
=========================*/
mods.calculator.basic.addRecipe(<minecraft:anvil>, <minecraft:slime>, <randomthings:compressedslimeblock>);

/*=========================
Extraction Chamber
=========================*/
mods.calculator.extractionChamber.addRecipe(<calculator:circuitboard>, <evilcraft:dull_dust>, <appliedenergistics2:material:15>);
mods.calculator.extractionChamber.addRecipe(<calculator:circuitboard:13>, <evilcraft:dull_dust>, <appliedenergistics2:material:14>);
mods.calculator.extractionChamber.addRecipe(<calculator:circuitboard:1>, <evilcraft:dull_dust>, <appliedenergistics2:material:19>);
mods.calculator.extractionChamber.addRecipe(<calculator:circuitboard:8>, <evilcraft:dull_dust>, <appliedenergistics2:material:13>);
//mods.calculator.extractionChamber.addRecipe(<calculator:circuitboard:5>, <evilcraft:dull_dust>, <appliedfluidics:material:1>);
