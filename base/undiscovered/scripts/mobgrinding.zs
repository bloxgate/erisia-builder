
mods.jei.JEI.addDescription(<mob_grinding_utils:gm_chicken_feed>, "Crafted by combining mob DNA (from a swab), a bucket of xp, and seeds. Feed to a chicken to produce a spawn egg.");
mods.jei.JEI.addDescription(<mob_grinding_utils:mob_swab>, "Right click mob to swab. DNA can be used to create spawn egg");

/*=========================
Recipe Changes - Mob Grinding
=========================*/

recipes.remove(<mob_grinding_utils:absorption_hopper>);
recipes.addShaped("absorption hopper", <mob_grinding_utils:absorption_hopper>, [
    [null, <extrautils2:ingredients:2>, null], 
    [<evilcraft:dark_power_gem_block>, <minecraft:hopper>, <evilcraft:dark_power_gem_block>], 
    [null, <evilcraft:dark_power_gem_block>, null]
    ]);

recipes.remove(<mob_grinding_utils:spikes>);
recipes.addShaped("mob spikes", <mob_grinding_utils:spikes>, [
    [null, null, null], 
    [null, <silentgems:dagger>, null], 
    [<silentgems:dagger>, <ore:blockSteel>, <silentgems:dagger>]
    ]);

recipes.remove(<mob_grinding_utils:saw>);
recipes.addShaped("mob grinder", <mob_grinding_utils:saw>, [
    [<evilcraft:spikey_claws>, null, <evilcraft:spikey_claws>], 
    [<mob_grinding_utils:spikes>, <thermalfoundation:material:290>, <mob_grinding_utils:spikes>], 
    [<minecraft:diamond>, <thermalfoundation:material:290>, <minecraft:diamond>]
    ]);

recipes.remove(<mob_grinding_utils:saw_upgrade:1>);
recipes.addShaped("mob grinding looting", <mob_grinding_utils:saw_upgrade:1>, [
    [<botania:cosmetic:16>, <minecraft:enchanted_book>, <botania:cosmetic:16>], 
    [<minecraft:enchanted_book>, <extrautils2:ingredients:9>, <minecraft:enchanted_book>], 
    [<botania:cosmetic:16>, <minecraft:enchanted_book>, <botania:cosmetic:16>]
    ]);

recipes.remove(<mob_grinding_utils:fan_upgrade:2>);
recipes.addShaped("mob fan distance", <mob_grinding_utils:fan_upgrade:2>, [
    [<silentgems:craftingmaterial:16>, <advgenerators:turbine_blade_steel>, <silentgems:craftingmaterial:16>], 
    [<advgenerators:turbine_blade_steel>, <extrautils2:ingredients:9>, <advgenerators:turbine_blade_steel>], 
    [<silentgems:craftingmaterial:16>, <advgenerators:turbine_blade_steel>, <silentgems:craftingmaterial:16>]
    ]);

recipes.remove(<mob_grinding_utils:fan_upgrade:1>);
recipes.addShaped("mob fan height", <mob_grinding_utils:fan_upgrade:1>, [
    [<advgenerators:turbine_blade_steel>, <silentgems:craftingmaterial:16>, <advgenerators:turbine_blade_steel>], 
    [null, <extrautils2:ingredients:9>, null], 
    [<advgenerators:turbine_blade_steel>, <silentgems:craftingmaterial:16>, <advgenerators:turbine_blade_steel>]
    ]);

recipes.remove(<mob_grinding_utils:fan_upgrade>);
recipes.addShaped("mob fan width", <mob_grinding_utils:fan_upgrade>, [
    [<advgenerators:turbine_blade_steel>, null, <advgenerators:turbine_blade_steel>], 
    [<silentgems:craftingmaterial:16>, <extrautils2:ingredients:9>, <silentgems:craftingmaterial:16>], 
    [<advgenerators:turbine_blade_steel>, null, <advgenerators:turbine_blade_steel>]
    ]);
