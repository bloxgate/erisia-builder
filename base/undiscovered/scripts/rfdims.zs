var dCore = <draconicevolution:draconic_core>;
var pixieDust = <botania:manaresource:8>;
var starMetal = <astralsorcery:itemcraftingcomponent:1>;
var refinedObsdianBlock = <mekanism:basicblock:2>;

/*=========================
Recipe Changes - RFDims
=========================*/

recipes.remove(<rftoolsdim:dimension_enscriber>);
recipes.addShaped("dimension enscriber", <rftoolsdim:dimension_enscriber>, [
    [refinedObsdianBlock, refinedObsdianBlock, refinedObsdianBlock],
    [pixieDust, <rftools:machine_frame>, pixieDust],
    [starMetal, starMetal, starMetal]
    ]);
