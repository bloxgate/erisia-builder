// No chunkloading.
recipes.remove(<dimdoors:gold_door>);
recipes.remove(<dimdoors:gold_dimensional_door>);

// Add a recipe for world thread
mods.botania.ManaInfusion.addConjuration(<dimdoors:world_thread>*2, <dimdoors:world_thread>, 10000);

// Add a recipe for cow in a jar, because sad mods in snow.
recipes.addShaped(<cookingforblockheads:cow_jar>,
  [[<minecraft:glass>, <minecraft:anvil>, <minecraft:glass>],
   [<minecraft:glass>, <cookingforblockheads:milk_jar>, <minecraft:glass>],
   [<minecraft:glass>, <minecraft:gold_block>, <minecraft:glass>]]);

// Fix conflict with charm lantern
recipes.remove(<fancylamps:lantern_torch>);
recipes.addShaped(<fancylamps:lantern_torch>, [[<minecraft:iron_nugget>, <minecraft:stick>, <minecraft:iron_nugget>],[<minecraft:iron_nugget>, <minecraft:torch>, <minecraft:iron_nugget>], [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]]);

