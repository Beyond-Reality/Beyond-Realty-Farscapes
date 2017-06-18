# tconstruct.zs tweaks

// Congealed Magma Slime Block
recipes.addShaped(<tconstruct:slime_congealed:4> * 8, [
  [<tconstruct:slime_congealed:2>, <tconstruct:slime_congealed:2>, <tconstruct:slime_congealed:2>],
  [<tconstruct:slime_congealed:2>, <botania:blazeblock>, <tconstruct:slime_congealed:2>],
  [<tconstruct:slime_congealed:2>, <tconstruct:slime_congealed:2>, <tconstruct:slime_congealed:2>]
]);

// Magma Slime Ball
furnace.addRecipe(<tconstruct:edible:4>, <minecraft:magma_cream>);

// Magma Slime Sappling
recipes.addShapeless(<tconstruct:slime_sapling:2>, [<tconstruct:slime_sapling:1>, <tconstruct:edible:4>]);
