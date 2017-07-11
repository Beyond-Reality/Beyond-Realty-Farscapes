# industrialforegoing.zs Tweaks

// Items
val Plastic = <industrialforegoing:plastic>;
val DryRubber = <industrialforegoing:dryrubber>;

// Ingredients
val itemRubber = <ore:itemRubber>;
val itemPlastic = <ore:itemPlastic>;

// Oredict Fixes
itemRubber.add(DryRubber); // Oredict Dry Rubber
itemRubber.remove(Plastic); // Removes Oredict drep, plastic is not Rubber
itemPlastic.add(Plastic); // Oredict Plastic

// Smelt rubber into plastic
furnace.addRecipe(Plastic, itemRubber);
