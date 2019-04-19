#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemUse;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.BlockState;
import mods.contenttweaker.World;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;

function giveItem(player as IPlayer, itemString as string) as string{
    var cmdstr = "give " ~ player.name ~ " " ~ itemString;
    print(cmdstr);
    return cmdstr;
}

var eKill = VanillaFactory.createItem("entitykiller");
eKill.maxStackSize = 1;
eKill.toolClass = "pickaxe";
eKill.setMaxDamage(10);
eKill.toolLevel = 5;
eKill.itemUseAction = "BLOCK";
eKill.glowing = true;
eKill.itemRightClick = function(stack, world, player, hand) {
    Commands.call("kill @e[type=!player]", player, world);
    return "Pass";
    };
eKill.register();

var bqmupdate = VanillaFactory.createItem("bqmupdate");
bqmupdate.maxStackSize = 1;
bqmupdate.glowing = true;
bqmupdate.itemRightClick = function(stack, world, player, hand) {
    Commands.call("bq_admin default load", player, world);
    return "Pass";
    };
bqmupdate.register();

var mthand = VanillaFactory.createItem("mthand");
mthand.maxStackSize = 1;
mthand.itemRightClick = function(stack, world, player, hand) {
    Commands.call("mt hand", player, world);
    return "Pass";
    };
mthand.register();

var oreinjectionaero = VanillaFactory.createItem("oreinjectionaero");
oreinjectionaero.maxStackSize = 16;
oreinjectionaero.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    var blocky = world.getBlockState(pos);
    if(blocky == <block:magneticraft:ores:3>){
        var dropItem = "magneticraft:chunks 2 5";
        Commands.call(giveItem(player, dropItem), player, world, false, true);
        world.setBlockState(<block:minecraft:air>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success(); 
    }

    return ActionResult.pass(); 
};
oreinjectionaero.register();

var oreinjectiondna = VanillaFactory.createItem("oreinjectiondna");
oreinjectiondna.maxStackSize = 16;
oreinjectiondna.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    var blocky = world.getBlockState(pos);
    if(blocky == <block:magneticraft:ores:3>){
        var dropItem = "magneticraft:rocky_chunks 2 5";
        Commands.call(giveItem(player, dropItem), player, world, false, true);
        world.setBlockState(<block:minecraft:air>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success(); 
    }

    return ActionResult.pass(); 
};
oreinjectiondna.register();

var oreinjectionvodka = VanillaFactory.createItem("oreinjectionvodka");
oreinjectionvodka.maxStackSize = 16;
oreinjectionvodka.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    var blocky = world.getBlockState(pos);
    if(blocky == <block:thermalfoundation:ore>){
        var dropItem = "immersiveengineering:metal 2 9";
        Commands.call(giveItem(player, dropItem), player, world, false, true);
        world.setBlockState(<block:minecraft:air>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success(); 
    }else if(blocky == <block:minecraft:iron_ore>){
        var dropItem = "immersiveengineering:metal 2 18";
        Commands.call(giveItem(player, dropItem), player, world, false, true);
        world.setBlockState(<block:minecraft:air>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success(); 
    }else if(blocky == <block:immersiveengineering:ore:1>){
        var dropItem = "immersiveengineering:metal 2 10";
        Commands.call(giveItem(player, dropItem), player, world, false, true);
        world.setBlockState(<block:minecraft:air>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success(); 
    }else if(blocky == <block:minecraft:gold_ore>){
        var dropItem = "immersiveengineering:metal 2 19";
        Commands.call(giveItem(player, dropItem), player, world, false, true);
        world.setBlockState(<block:minecraft:air>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success(); 
    }else if(blocky == <block:extrautils2:compressedsand>){
        var dropItem = "appliedenergistics2:material 2 5";
        Commands.call(giveItem(player, dropItem), player, world, false, true);
        world.setBlockState(<block:minecraft:air>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success(); 
    }else if(blocky == <block:thermalfoundation:ore:6>){
        world.setBlockState(<block:contenttweaker:platslurry>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success(); 
    }

    return ActionResult.pass();   
};
oreinjectionvodka.register();

var butterflyspray = VanillaFactory.createItem("butterflyspray");
butterflyspray.maxStackSize = 1;
butterflyspray.itemRightClick = function(stack, world, player, hand) {
    Commands.call("forestry butterfly kill", player, world);
    if (world.remote) {
        player.sendChat("A million tiny butterflies cry out and were suddenly silenced");
    }
    return "Pass";
};
butterflyspray.register();

var oreinjection = VanillaFactory.createItem("oreinjection");
oreinjection.register();

var advmfr = VanillaFactory.createItem("advancedcase");
advmfr.register();

var expmfr = VanillaFactory.createItem("expertcase");
expmfr.register();

var expframe = VanillaFactory.createItem("enchantedframe");
expframe.register();

var cheapframe = VanillaFactory.createItem("cheapframe");
cheapframe.register();

var crystalsludge = VanillaFactory.createItem("crystalsludge");
crystalsludge.register();

var ironslag = VanillaFactory.createItem("ironslag");
ironslag.register();

var goldslag = VanillaFactory.createItem("goldslag");
goldslag.register();

var copperslag = VanillaFactory.createItem("copperslag");
copperslag.register();

var alumslag = VanillaFactory.createItem("alumslag");
alumslag.register();

var solidheart = VanillaFactory.createItem("solidheart");
solidheart.register();

var heartcast = VanillaFactory.createItem("heartcast");
heartcast.register();

var resinplate = VanillaFactory.createItem("resinplate");
resinplate.register();

var brokenrod = VanillaFactory.createItem("brokenrod");
brokenrod.register();

var screws = VanillaFactory.createItem("screws");
screws.register();

var bagofjunk = VanillaFactory.createItem("bagofjunk");
bagofjunk.register();

var moldybread = VanillaFactory.createItem("moldybread");
moldybread.register();

var squeezer = VanillaFactory.createItem("squeezer");
squeezer.register();

var refiner = VanillaFactory.createItem("refiner");
refiner.register();

var fermenter = VanillaFactory.createItem("fermenter");
fermenter.register();

var goldclay = VanillaFactory.createItem("goldclay");
goldclay.register();

var crown = VanillaFactory.createItem("crown");
crown.register();

var lostcityportal = VanillaFactory.createItem("lostcityportal");
lostcityportal.register();

var osmaticsteel = VanillaFactory.createItem("osmaticsteel");
osmaticsteel.register();

var osmaticsteeldust = VanillaFactory.createItem("osmaticsteeldust");
osmaticsteeldust.register();

var netherrod = VanillaFactory.createItem("netherrod");
netherrod.register();

var glassshards = VanillaFactory.createItem("glassshards");
glassshards.register();

//var inertcore = VanillaFactory.createItem("inertcore");
//inertcore.register();

/*
worldIn.spawnEntityInWorld( new EntityItem( worldIn, pos.getX(), pos.getY(), pos.getZ(), ish.getStackInSlot( i ) ) );
var whodat = VanillaFactory.createItem("whodat");
whodat.maxStackSize = 1;
whodat.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    var poke = pos.getOffset(facing, 1);
    var blocky = world.getBlockState(poke).getBlock();
    if (world.getBlockState(poke).isReplaceable(world, poke)) {
        world.setBlockState(<block:minecraft:dirt>, poke);
        return ActionResult.success();
    }
    return ActionResult.pass();
    };
whodat.register();

var item = VanillaFactory.createItem("fake_flint");

item.maxStackSize = 1;
item.maxDamage = 50;
item.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    var firePos = pos.getOffset(facing, 1);
    if (world.getBlockState(firePos).isReplaceable(world, firePos)) {
        world.setBlockState(<block:minecraft:fire>, firePos);
        player.getHeldItem(hand).damageItem(1, player);
        return ActionResult.success();
    }

    return ActionResult.pass();
};
item.register();
*/