var healthElixer = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 0}]});

<ore:chaosGem>.add(<silentgems:chaosgem:*>);

recipes.remove(<silentgems:craftingmaterial:21>);

/*=========================
Recipe Changes - Silents
=========================*/

recipes.removeByRecipeName("silentgems:chaos_essence_enriched");
recipes.addShaped("enriched chaos", <silentgems:craftingmaterial:1>, [
    [<ore:glowstone>, <silentgems:craftingmaterial>, <ore:glowstone>], 
    [<silentgems:craftingmaterial>, <minecraft:gold_block>, <silentgems:craftingmaterial>], 
    [<ore:glowstone>, <silentgems:craftingmaterial>, <ore:glowstone>]
    ]);

recipes.addShapeless("cave to spider gem", <silentgems:soulgem>.withTag({sg_soul_gem: "Spider"}), [
    <silentgems:soulgem>.withTag({sg_soul_gem: "CaveSpider"})
    ]);

recipes.addShapeless("husk to zombie gem", <silentgems:soulgem>.withTag({sg_soul_gem: "Zombie"}), [
    <silentgems:soulgem>.withTag({sg_soul_gem: "Husk"})
    ]);

recipes.addShapeless("stray to skele gem", <silentgems:soulgem>.withTag({sg_soul_gem: "Skeleton"}), [
    <silentgems:soulgem>.withTag({sg_soul_gem: "Stray"})
    ]);

recipes.addShapeless("pig to zombie gem", <silentgems:soulgem>.withTag({sg_soul_gem: "Zombie"}), [
    <silentgems:soulgem>.withTag({sg_soul_gem: "PigZombie"})
    ]);

recipes.addShapeless("shroom to cow gem", <silentgems:soulgem>.withTag({sg_soul_gem: "Cow"}), [
    <silentgems:soulgem>.withTag({sg_soul_gem: "MushroomCow"})
    ]);

recipes.addShapeless("parrot to chick gem", <silentgems:soulgem>.withTag({sg_soul_gem: "Chicken"}), [
    <silentgems:soulgem>.withTag({sg_soul_gem: "Parrot"})
    ]);

recipes.addShapeless("ass to horse gem", <silentgems:soulgem>.withTag({sg_soul_gem: "Horse"}), [
    <silentgems:soulgem>.withTag({sg_soul_gem: "Donkey"})
    ]);

recipes.addShapeless("mule to horse gem", <silentgems:soulgem>.withTag({sg_soul_gem: "Horse"}), [
    <silentgems:soulgem>.withTag({sg_soul_gem: "Mule"})
    ]);

recipes.addShapeless("llama to horse gem", <silentgems:soulgem>.withTag({sg_soul_gem: "Horse"}), [
    <silentgems:soulgem>.withTag({sg_soul_gem: "Llama"})
    ]);

recipes.addShapeless("elder to guardian gem", <silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"}), [
    <silentgems:soulgem>.withTag({sg_soul_gem: "ElderGuardian"})
    ]);

recipes.addShaped("rotten flesh", <minecraft:rotten_flesh>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Zombie"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Zombie"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Zombie"}), null, null]
    ]);

recipes.addShaped("zombie heart", <xreliquary:mob_ingredient:6>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Zombie"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Zombie"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Zombie"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Zombie"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "Zombie"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Zombie"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Zombie"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Zombie"})]
    ]);

recipes.addShaped("bone", <minecraft:bone>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Skeleton"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Skeleton"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Skeleton"}), null, null]
    ]);

recipes.addShaped("rib", <xreliquary:mob_ingredient>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Skeleton"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Skeleton"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Skeleton"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Skeleton"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "Skeleton"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Skeleton"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Skeleton"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Skeleton"})]
    ]);

recipes.addShaped("gun powder", <minecraft:gunpowder>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Creeper"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Creeper"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Creeper"}), null, null]
    ]);

recipes.addShaped("creeper gland", <xreliquary:mob_ingredient:3>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Creeper"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Creeper"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Creeper"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Creeper"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "Creeper"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Creeper"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Creeper"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Creeper"})]
    ]);

recipes.addShaped("spider eye", <minecraft:spider_eye>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Spider"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Spider"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Spider"}), null, null]
    ]);

recipes.addShaped("string", <minecraft:string>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Spider"}), null, null], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Spider"}), null], 
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Spider"})]
    ]);

recipes.addShaped("fangs", <xreliquary:mob_ingredient:2>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Spider"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Spider"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Spider"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Spider"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "Spider"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Spider"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Spider"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Spider"})]
    ]);

recipes.addShaped("slime ball", <minecraft:slime_ball>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Slime"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Slime"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Slime"}), null, null]
    ]);

recipes.addShaped("slime pearl", <xreliquary:mob_ingredient:4>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Slime"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Slime"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Slime"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Slime"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "Slime"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Slime"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Slime"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Slime"})]
    ]);

recipes.addShaped("prismarine", <minecraft:prismarine_shard>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"}), null, null]
    ]);

recipes.addShaped("prismarine crystal", <minecraft:prismarine_crystals>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"}), null, null], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"}), null], 
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"})]
    ]);

recipes.addShaped("guardian spike", <xreliquary:mob_ingredient:16>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Guardian"})]
    ]);

recipes.addShaped("witch hat", <xreliquary:witch_hat>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Witch"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Witch"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Witch"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Witch"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "Witch"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Witch"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Witch"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Witch"})]
    ]);

recipes.addShaped("ghast tear", <minecraft:ghast_tear>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Ghast"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Ghast"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Ghast"}), null, null]
    ]);

recipes.addShaped("molten core blaze", <xreliquary:mob_ingredient:7>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Blaze"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Blaze"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Blaze"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Blaze"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "Blaze"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Blaze"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Blaze"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Blaze"})]
    ]);

recipes.addShaped("molten core slime", <xreliquary:mob_ingredient:7>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "LavaSlime"}), <silentgems:soulgem>.withTag({sg_soul_gem: "LavaSlime"}), <silentgems:soulgem>.withTag({sg_soul_gem: "LavaSlime"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "LavaSlime"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "LavaSlime"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "LavaSlime"}), <silentgems:soulgem>.withTag({sg_soul_gem: "LavaSlime"}), <silentgems:soulgem>.withTag({sg_soul_gem: "LavaSlime"})]
    ]);

recipes.addShaped("wither rib", <xreliquary:mob_ingredient:1>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "WitherSkeleton"}), <silentgems:soulgem>.withTag({sg_soul_gem: "WitherSkeleton"}), <silentgems:soulgem>.withTag({sg_soul_gem: "WitherSkeleton"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "WitherSkeleton"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "WitherSkeleton"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "WitherSkeleton"}), <silentgems:soulgem>.withTag({sg_soul_gem: "WitherSkeleton"}), <silentgems:soulgem>.withTag({sg_soul_gem: "WitherSkeleton"})]
    ]);

recipes.addShaped("wither skull", <minecraft:skull:1>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "WitherSkeleton"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "WitherSkeleton"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "WitherSkeleton"}), null, null]
    ]);

recipes.addShaped("ender heart", <xreliquary:mob_ingredient:11>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Enderman"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Enderman"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Enderman"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Enderman"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "Enderman"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Enderman"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Enderman"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Enderman"})]
    ]);

recipes.addShaped("shulker case", <minecraft:shulker_shell>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Shulker"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Shulker"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Shulker"}), null, null]
    ]);

recipes.addShaped("pork", <minecraft:porkchop>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Pig"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Pig"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Pig"}), null, null]
    ]);

recipes.addShaped("wool", <minecraft:wool>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Sheep"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Sheep"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Sheep"}), null, null]
    ]);

recipes.addShaped("mutton", <minecraft:mutton>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Sheep"}), null, null], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Sheep"}), null], 
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Sheep"})]
    ]);

recipes.addShaped("leather cow", <minecraft:leather>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Cow"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Cow"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Cow"}), null, null]
    ]);

recipes.addShaped("beef", <minecraft:beef>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Cow"}), null, null], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Cow"}), null], 
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Cow"})]
    ]);

recipes.addShaped("feather", <minecraft:feather>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Chicken"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Chicken"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Chicken"}), null, null]
    ]);

recipes.addShaped("chicken", <minecraft:chicken>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Chicken"}), null, null], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Chicken"}), null], 
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Chicken"})]
    ]);

recipes.addShaped("rabbit meat", <minecraft:rabbit>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"}), null, null]
    ]);

recipes.addShaped("rabbit hide", <minecraft:rabbit_hide>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"}), null, null], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"}), null], 
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"})]
    ]);

recipes.addShaped("rabbit foot", <minecraft:rabbit_foot>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Rabbit"})]
    ]);

recipes.addShaped("squid beak", <xreliquary:mob_ingredient:12>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Squid"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Squid"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Squid"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Squid"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "Squid"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Squid"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Squid"}), <silentgems:soulgem>.withTag({sg_soul_gem: "Squid"})]
    ]);

recipes.addShaped("bat wing aa", <actuallyadditions:item_misc:15>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Bat"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Bat"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Bat"}), null, null]
    ]);

recipes.addShaped("bat wing rq", <xreliquary:mob_ingredient:5>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Bat"}), null, null], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Bat"}), null], 
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Bat"})]
    ]);

recipes.addShaped("frozen heart", <xreliquary:mob_ingredient:10>, [
    [<silentgems:soulgem>.withTag({sg_soul_gem: "SnowMan"}), <silentgems:soulgem>.withTag({sg_soul_gem: "SnowMan"}), <silentgems:soulgem>.withTag({sg_soul_gem: "SnowMan"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "SnowMan"}), null, <silentgems:soulgem>.withTag({sg_soul_gem: "SnowMan"})], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "SnowMan"}), <silentgems:soulgem>.withTag({sg_soul_gem: "SnowMan"}), <silentgems:soulgem>.withTag({sg_soul_gem: "SnowMan"})]
    ]);

recipes.addShaped("leather horse", <minecraft:leather>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Horse"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Horse"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Horse"}), null, null]
    ]);

recipes.addShaped("iron golem", <minecraft:iron_ingot> * 3, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "VillagerGolem"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "VillagerGolem"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "VillagerGolem"}), null, null]
    ]);

recipes.addShaped("emerald villager", <minecraft:emerald> * 3, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "Villager"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "Villager"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "Villager"}), null, null]
    ]);

recipes.addShaped("dragon egg", <minecraft:dragon_egg>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "EnderDragon"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "EnderDragon"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "EnderDragon"}), null, null]
    ]);

recipes.addShaped("nether star", <minecraft:nether_star>, [
    [null, null, <silentgems:soulgem>.withTag({sg_soul_gem: "WitherBoss"})], 
    [null, <silentgems:soulgem>.withTag({sg_soul_gem: "WitherBoss"}), null], 
    [<silentgems:soulgem>.withTag({sg_soul_gem: "WitherBoss"}), null, null]
    ]);
    
recipes.remove(<silentgems:craftingmaterial:12>);
recipes.addShaped("upgrade base", <silentgems:craftingmaterial:12>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>], 
    [<minecraft:stick>, <silentgems:gem:*>, <minecraft:stick>], 
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
    ]);

recipes.addShaped(<silentgems:craftingmaterial:1> * 2, [
    [<genetics:misc:2>, <calculator:enrichedgold>, <genetics:misc:2>],
    [<calculator:enrichedgold>, <silentgems:craftingmaterial>, <calculator:enrichedgold>], 
    [<genetics:misc:2>, <calculator:enrichedgold>, <genetics:misc:2>]
    ]);

recipes.remove(<silentgems:enchantmenttoken:256>, true);
recipes.addShaped(<silentgems:enchantmenttoken:256>, [
    [<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>],
    [<silentgems:craftingmaterial:30>, <contenttweaker:goldclay>, <silentgems:craftingmaterial:30>], 
    [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]
    ]);

recipes.remove(<silentgems:tipupgrade:2>);
recipes.addShaped(<silentgems:tipupgrade:2>, [
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
    [null, <silentgems:craftingmaterial:12>, null], 
    [null, null, null]
    ]);

recipes.remove(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:flight"}), true);
recipes.addShaped(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:flight"}), [
    [<silentgems:craftingmaterial:1>, <silentgems:craftingmaterial:17>, <silentgems:craftingmaterial:1>],
    [<silentgems:gemsuper:*>, <botania:rune:3>, <silentgems:gemsuper:*>], 
    [<silentgems:craftingmaterial:1>, <silentgems:craftingmaterial:17>, <silentgems:craftingmaterial:1>]
    ]);

recipes.remove(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:haste"}), true);
recipes.addShaped(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:haste"}), [
    [<silentgems:craftingmaterial:1>, <astralsorcery:itemusabledust>, <silentgems:craftingmaterial:1>],
    [<thermalfoundation:material:893>, <botania:rune:6>, <thermalfoundation:material:893>], 
    [<silentgems:craftingmaterial:1>, <astralsorcery:itemusabledust>, <silentgems:craftingmaterial:1>]
    ]);

recipes.remove(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:regeneration"}), true);
recipes.addShaped(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:regeneration"}), [
    [<silentgems:craftingmaterial:1>, <minecraft:ghast_tear>, <silentgems:craftingmaterial:1>],
    [healthElixer, <botania:rune:9>, healthElixer], 
    [<silentgems:craftingmaterial:1>, <minecraft:ghast_tear>, <silentgems:craftingmaterial:1>]
    ]);

recipes.remove(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:strength"}), true);
recipes.addShaped(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:strength"}), [
    [<silentgems:craftingmaterial:1>, <silentgems:craftingmaterial:27>, <silentgems:craftingmaterial:1>],
    [<evilcraft:dark_power_gem>, <botania:rune:1>, <evilcraft:dark_power_gem>], 
    [<silentgems:craftingmaterial:1>, <silentgems:craftingmaterial:27>, <silentgems:craftingmaterial:1>]
    ]);

recipes.remove(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:resistance"}), true);
recipes.addShaped(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:resistance"}), [
    [<silentgems:craftingmaterial:1>, <ore:blockSteel>, <silentgems:craftingmaterial:1>],
    [<harvestcraft:hardenedleatheritem>, <botania:rune:4>, <harvestcraft:hardenedleatheritem>], 
    [<silentgems:craftingmaterial:1>, <ore:blockSteel>, <silentgems:craftingmaterial:1>]
    ]);

recipes.remove(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:invisibility"}), true);
recipes.addShaped(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:invisibility"}), [
    [<silentgems:craftingmaterial:1>, <minecraft:fermented_spider_eye>, <silentgems:craftingmaterial:1>],
    [<minecraft:dragon_breath>, <botania:rune:2>, <minecraft:dragon_breath>], 
    [<silentgems:craftingmaterial:1>, <minecraft:fermented_spider_eye>, <silentgems:craftingmaterial:1>]
    ]);

recipes.remove(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:night_vision"}), true);
recipes.addShaped(<silentgems:chaosrune>.withTag({chaos_buff: "silentgems:night_vision"}), [
    [<silentgems:craftingmaterial:1>, <minecraft:golden_carrot>, <silentgems:craftingmaterial:1>],
    [<rustic:mooncap_mushroom>, <botania:rune:6>, <rustic:mooncap_mushroom>], 
    [<silentgems:craftingmaterial:1>, <minecraft:golden_carrot>, <silentgems:craftingmaterial:1>]
    ]);

recipes.addShapeless("silent gem manual", <silentgems:guide_book>, [
    <minecraft:book>, <silentgems:fluffypuff>
    ]);