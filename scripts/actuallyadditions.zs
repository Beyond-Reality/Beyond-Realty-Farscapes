# actuallyadditions.zs tweaks

# Ingredients
val gemCoal = <ore:coal>;
val dustCoal = <ore:dustCoal>;
val gemQuartz = <ore:gemQuartz>;
val dustQuartz = <ore:dustQuartz>;

# Foreign items

# This mod items
val BlackQuartz = <actuallyadditions:item_misc:5>;
val CrushedBlackQuartz = <actuallyadditions:item_dust:7>;

# Recipes
recipes.addShapeless(BlackQuartz * 2, [gemQuartz, gemCoal]);
recipes.addShapeless(CrushedBlackQuartz * 2, [dustQuartz, dustCoal]);
