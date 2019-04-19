var darkBrick = <evilcraft:dark_brick>;

mods.jei.JEI.addDescription(<psi:material>, "Created by shooting redstone with a basic iron CAD");
mods.jei.JEI.addDescription(<psi:material:1>, "Created by shooting gold ingots with the infusion trick");
mods.jei.JEI.addDescription(<psi:material:2>, "Created by shooting diamonds with the greater infusion trick");
mods.jei.JEI.addDescription(<psi:material:5>, "Created by shooting coal with the ebony & ivory trick while in the end");
mods.jei.JEI.addDescription(<psi:material:6>, "Created by shooting nether quartz with the ebony & ivory trick while in the end");

<psi:psimetal_pickaxe>.addTooltip("Cobalt Level");

/*=========================
Recipe Changes - Psi
=========================*/

recipes.remove(<psi:cad_assembler>);
recipes.addShaped("cad assembler", <psi:cad_assembler>, [
    [null, <randomthings:contactbutton>, null],
    [darkBrick, <ore:blockMagicalWood>, darkBrick],
    [darkBrick, <minecraft:iron_bars>, darkBrick]
    ]);

recipes.remove(<psi:cad_assembly>);
recipes.addShaped("iron cad", <psi:cad_assembly>, [
    [null, null, null],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:ingotIron>, <silentgems:craftingmaterial:7>, null]
    ]);

recipes.remove(<psi:cad_assembly:1>);
recipes.addShaped("gold cad", <psi:cad_assembly:1>, [
    [null, null, null],
    [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
    [<ore:ingotGold>, <silentgems:craftingmaterial:21>, null]
    ]);

recipes.remove(<psi:cad_assembly:2>);
recipes.addShaped("psimetal cad", <psi:cad_assembly:2>, [
    [null, null, null],
    [<ore:ingotPsi>, <ore:ingotPsi>, <ore:ingotPsi>],
    [<ore:ingotPsi>, <ore:runeWrathB>, null]
    ]);