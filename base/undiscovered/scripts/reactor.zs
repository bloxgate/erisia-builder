var crystalIngot = <extendedcrafting:material:24>;
var evilIngot = <extrautils2:ingredients:17>;

recipes.removeByRecipeName("bigreactors:ingotmetals");

mods.jei.JEI.addDescription(<bigreactors:reactorpowertaprf>, "Direct power output disabled. Reactors may still produce steam to power turbines.");

/*=========================
Recipe Changes - Reactor
=========================*/

recipes.remove(<bigreactors:reactorcontroller>);
recipes.addShaped("reactor controller", <bigreactors:reactorcontroller>, [
    [<bigreactors:reactorcasing>, <thermalfoundation:material:136>, <bigreactors:reactorcasing>],
    [evilIngot, <rftools:machine_frame>, evilIngot],
    [<bigreactors:reactorcasing>, <thermalfoundation:material:136>, <bigreactors:reactorcasing>]
    ]);

recipes.remove(<bigreactors:reactorcasing>);
recipes.addShaped("reactor casing", <bigreactors:reactorcasing>, [
    [<calculator:reinforcedironingot>, <jaopca:item_platecoal>, <calculator:reinforcedironingot>], 
    [<jaopca:item_platecoal>, <bigreactors:reactorcasingcores>, <jaopca:item_platecoal>], 
    [<calculator:reinforcedironingot>, <jaopca:item_platecoal>, <calculator:reinforcedironingot>]
    ]);

recipes.removeShaped(<bigreactors:ingotmetals:3>, [
    [<bigreactors:ingotmetals:1>, <bigreactors:ingotmetals:1>, <bigreactors:ingotmetals:1>],
    [<bigreactors:ingotmetals:1>, null, <bigreactors:ingotmetals:1>], 
    [<bigreactors:ingotmetals:1>, <bigreactors:ingotmetals:1>, <bigreactors:ingotmetals:1>]
    ]);

