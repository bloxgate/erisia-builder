var dCore = <draconicevolution:draconic_core>;
var dracCrystal = <jaopca:item_crystaldraconium>;
var netherChaos = <silentgems:craftingmaterial:2>;

recipes.remove(<draconicevolution:draconium_dust>);
recipes.remove(<draconicevolution:draconium_ingot>);

<draconicevolution:draconium_block:1>.addTooltip("Requires 1.5 million RF");

/*=========================
Recipe Changes - Draconic
=========================*/

recipes.remove(dCore);
recipes.addShaped("draconic core", dCore, [
    [netherChaos, <draconicevolution:draconium_ingot>, netherChaos],
    [<draconicevolution:draconium_ingot>, <thermalfoundation:coin:71>, <draconicevolution:draconium_ingot>],
    [netherChaos, <draconicevolution:draconium_ingot>, netherChaos]
    ]);

recipes.remove(<draconicevolution:wyvern_core>);
recipes.addShaped(<draconicevolution:wyvern_core>, [
    [<magneticraft:ingots:4>, <evilcraft:vengeance_essence>, <magneticraft:ingots:4>],
    [<mekanism:ingot>, dCore, <mekanism:ingot>], 
    [<magneticraft:ingots:4>, <evilcraft:vengeance_essence>, <magneticraft:ingots:4>]
    ]);

recipes.remove(<draconicevolution:draconic_energy_core>);
recipes.addShaped(<draconicevolution:draconic_energy_core>, [
  [<draconicevolution:draconic_ingot>, <draconicevolution:wyvern_energy_core>, <draconicevolution:draconic_ingot>],
  [<mekanism:ingot:3>, <mekanism:controlcircuit:1>, <mekanism:ingot:3>], 
  [<draconicevolution:draconic_ingot>, <draconicevolution:wyvern_energy_core>, <draconicevolution:draconic_ingot>]
  ]);

recipes.remove(<draconicevolution:draconium_capacitor>);
recipes.addShaped(<draconicevolution:draconium_capacitor>, [
  [<thermalfoundation:material:359>, <draconicevolution:wyvern_energy_core>, <thermalfoundation:material:359>],
  [<draconicevolution:draconium_block>, <draconicevolution:wyvern_core>, <draconicevolution:draconium_block>], 
  [<thermalfoundation:material:359>, <draconicevolution:wyvern_energy_core>, <thermalfoundation:material:359>]
  ]);

recipes.remove(<draconicevolution:draconium_capacitor:1>);
recipes.addShaped(<draconicevolution:draconium_capacitor:1>, [
  [<mekanism:controlcircuit:3>, <draconicevolution:awakened_core>, <mekanism:controlcircuit:3>],
  [<draconicevolution:draconic_ingot>, <draconicevolution:draconium_capacitor>, <draconicevolution:draconic_ingot>], 
  [<thermalfoundation:material:358>, <draconicevolution:draconic_energy_core>, <thermalfoundation:material:358>]
  ]);