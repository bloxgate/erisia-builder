// Disambiguate Eln iron cables
val iron_cable = <Eln:Eln.sharedItem:4161>;
val iron = <ore:ingotIron>;
recipes.remove(iron_cable);
recipes.addShaped(
  iron_cable*12,
  [[null, iron, null],
   [null, iron, null],
   [null, iron, null]]);


// Add a crafting recipe for resin.
val resin = <Eln:Eln.sharedItem:4096>;
recipes.addShapeless(resin*4,
  [<ore:itemClay>, <ore:itemRawRubber>, <ore:itemRawRubber>, <ore:itemRawRubber>]);
