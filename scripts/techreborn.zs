# techreborn.zs tweaks

// Fix reinforced metal ingot recipe
recipes.remove(<techreborn:ingot:22>);
recipes.addShaped(<techreborn:ingot:22>, [
  [<ore:ingotIridium>, <ore:plateAdvancedAlloy>, <ore:ingotIridium>],
  [<ore:plateAdvancedAlloy>, <ore:dustDiamond>, <ore:plateAdvancedAlloy>], 
  [<ore:ingotIridium>, <ore:plateAdvancedAlloy>, <ore:ingotIridium>]
]);
