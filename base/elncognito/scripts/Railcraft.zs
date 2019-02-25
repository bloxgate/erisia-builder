import minetweaker.item.IItemStack;

// Allow recrafting the tanks to clear NBT.
val tanks = [
  <Railcraft:machine.beta>,
  <Railcraft:machine.beta:1>,
  <Railcraft:machine.beta:2>,
  <Railcraft:machine.beta:13>,
  <Railcraft:machine.beta:14>,
  <Railcraft:machine.beta:15>
] as IItemStack[];

for i, tank in tanks {
  recipes.addShapeless(tank, [tank]);
}

// Use oredicted plates for the tanks.
val ip = <ore:plateIron>;
val sp = <ore:plateSteel>;
val gp = <minecraft:glass_pane>;
val ib = <minecraft:iron_bars>;

recipes.addShaped(<Railcraft:machine.beta>*8, [
  [ip, ip, null],
  [ip, ip, null],
  [null, null, null]]);
recipes.addShaped(<Railcraft:machine.beta:1>*8, [
  [gp, ip, gp],
  [ip, gp, ip],
  [gp, ip, gp]]);
recipes.addShaped(<Railcraft:machine.beta:2>*8, [
  [ib, ip, ib],
  [ip, <minecraft:lever>, ip],
  [ib, ip, ib]]);

recipes.addShaped(<Railcraft:machine.beta:13>*8, [
  [sp, sp, null],
  [sp, sp, null],
  [null, null, null]]);
recipes.addShaped(<Railcraft:machine.beta:14>*8, [
  [gp, sp, gp],
  [sp, gp, sp],
  [gp, sp, gp]]);
recipes.addShaped(<Railcraft:machine.beta:15>*8, [
  [ib, sp, ib],
  [sp, <minecraft:lever>, sp],
  [ib, sp, ib]]);

