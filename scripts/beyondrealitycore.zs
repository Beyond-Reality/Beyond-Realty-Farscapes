# beyondrealitycore.zs tweaks
import minetweaker.data.IData;
import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;


# Ore Items combine

// Ruby
<ore:shardRuby>.add(<beyondreality:shardruby>);
recipes.addShapeless(<techreborn:gem:0>, [
  <ore:shardRuby>, <ore:shardRuby>,
  <ore:shardRuby>, <ore:shardRuby>]);
<ore:shardTinyRuby>.add(<beyondreality:tiny_shardruby>);
recipes.addShapeless(<techreborn:gem:0>, [
  <ore:shardTinyRuby>, <ore:shardTinyRuby>, <ore:shardTinyRuby>,
  <ore:shardTinyRuby>, <ore:shardTinyRuby>, <ore:shardTinyRuby>,
  <ore:shardTinyRuby>, <ore:shardTinyRuby>, <ore:shardTinyRuby>]);

// Tin
<ore:chunkTin>.add(<beyondreality:chunktin>);
recipes.addShapeless(<beyondreality:oretin>, [
  <ore:chunkTin>, <ore:chunkTin>,
  <ore:chunkTin>, <ore:chunkTin>]);
<ore:chunkTinyTin>.add(<beyondreality:tinytin>);
recipes.addShapeless(<beyondreality:oretin>, [
  <ore:chunkTinyTin>, <ore:chunkTinyTin>, <ore:chunkTinyTin>,
  <ore:chunkTinyTin>, <ore:chunkTinyTin>, <ore:chunkTinyTin>,
  <ore:chunkTinyTin>, <ore:chunkTinyTin>, <ore:chunkTinyTin>]);

// Copper
<ore:chunkCopper>.add(<beyondreality:chunkcopper>);
recipes.addShapeless(<beyondreality:orecopper>, [
  <ore:chunkCopper>, <ore:chunkCopper>,
  <ore:chunkCopper>, <ore:chunkCopper>]);
<ore:chunkTinyCopper>.add(<beyondreality:tinycopper>);
recipes.addShapeless(<beyondreality:orecopper>, [
  <ore:chunkTinyCopper>, <ore:chunkTinyCopper>, <ore:chunkTinyCopper>,
  <ore:chunkTinyCopper>, <ore:chunkTinyCopper>, <ore:chunkTinyCopper>,
  <ore:chunkTinyCopper>, <ore:chunkTinyCopper>, <ore:chunkTinyCopper>]);

// Nickel
<ore:chunkNickel>.add(<beyondreality:chunknickel>);
recipes.addShapeless(<beyondreality:orenickel>, [
  <ore:chunkNickel>, <ore:chunkNickel>,
  <ore:chunkNickel>, <ore:chunkNickel>]);
<ore:chunkTinyNickel>.add(<beyondreality:tinynickel>);
recipes.addShapeless(<beyondreality:orenickel>, [
  <ore:chunkTinyNickel>, <ore:chunkTinyNickel>, <ore:chunkTinyNickel>,
  <ore:chunkTinyNickel>, <ore:chunkTinyNickel>, <ore:chunkTinyNickel>,
  <ore:chunkTinyNickel>, <ore:chunkTinyNickel>, <ore:chunkTinyNickel>]);

// platinum
<ore:chunkPlatinum>.add(<beyondreality:chunkplatinum>);
recipes.addShapeless(<beyondreality:oreplatinum>, [
  <ore:chunkPlatinum>, <ore:chunkPlatinum>,
  <ore:chunkPlatinum>, <ore:chunkPlatinum>]);
<ore:chunkTinyPlatinum>.add(<beyondreality:tinyplatinum>);
recipes.addShapeless(<beyondreality:oreplatinum>, [
  <ore:chunkTinyPlatinum>, <ore:chunkTinyPlatinum>, <ore:chunkTinyPlatinum>,
  <ore:chunkTinyPlatinum>, <ore:chunkTinyPlatinum>, <ore:chunkTinyPlatinum>,
  <ore:chunkTinyPlatinum>, <ore:chunkTinyPlatinum>, <ore:chunkTinyPlatinum>]);

// lead
<ore:chunkLead>.add(<beyondreality:chunklead>);
recipes.addShapeless(<beyondreality:orelead>, [
  <ore:chunkLead>, <ore:chunkLead>,
  <ore:chunkLead>, <ore:chunkLead>]);
<ore:chunkTinyLead>.add(<beyondreality:tinylead>);
recipes.addShapeless(<beyondreality:orelead>, [
  <ore:chunkTinyLead>, <ore:chunkTinyLead>, <ore:chunkTinyLead>,
  <ore:chunkTinyLead>, <ore:chunkTinyLead>, <ore:chunkTinyLead>,
  <ore:chunkTinyLead>, <ore:chunkTinyLead>, <ore:chunkTinyLead>]);

// Sapphire
<ore:shardSapphire>.add(<beyondreality:shardsapphire>);
recipes.addShapeless(<techreborn:gem:1>, [
  <ore:shardSapphire>, <ore:shardSapphire>,
  <ore:shardSapphire>, <ore:shardSapphire>]);
<ore:shardTinySapphire>.add(<beyondreality:tiny_shardsapphire>);
recipes.addShapeless(<techreborn:gem:1>, [
  <ore:shardTinySapphire>, <ore:shardTinySapphire>, <ore:shardTinySapphire>,
  <ore:shardTinySapphire>, <ore:shardTinySapphire>, <ore:shardTinySapphire>,
  <ore:shardTinySapphire>, <ore:shardTinySapphire>, <ore:shardTinySapphire>]);


// Peridot
<ore:shardPeridot>.add(<beyondreality:shardperidot>);
recipes.addShapeless(<techreborn:gem:2>, [
  <ore:shardPeridot>, <ore:shardPeridot>,
  <ore:shardPeridot>, <ore:shardPeridot>]);
<ore:shardTinyPeridot>.add(<beyondreality:tiny_shardperidot>);
recipes.addShapeless(<techreborn:gem:2>, [
  <ore:shardTinyPeridot>, <ore:shardTinyPeridot>, <ore:shardTinyPeridot>,
  <ore:shardTinyPeridot>, <ore:shardTinyPeridot>, <ore:shardTinyPeridot>,
  <ore:shardTinyPeridot>, <ore:shardTinyPeridot>, <ore:shardTinyPeridot>]);

// Iridium
<ore:chunkIridium>.add(<beyondreality:chunkiridium>);
recipes.addShapeless(<beyondreality:oreiridium>, [
  <ore:chunkIridium>, <ore:chunkIridium>,
  <ore:chunkIridium>, <ore:chunkIridium>]);
<ore:chunkTinyIridium>.add(<beyondreality:tinyiridium>);
recipes.addShapeless(<beyondreality:oreiridium>, [
  <ore:chunkTinyIridium>, <ore:chunkTinyIridium>, <ore:chunkTinyIridium>,
  <ore:chunkTinyIridium>, <ore:chunkTinyIridium>, <ore:chunkTinyIridium>,
  <ore:chunkTinyIridium>, <ore:chunkTinyIridium>, <ore:chunkTinyIridium>]);

// Silver
<ore:chunkSilver>.add(<beyondreality:chunksilver>);
recipes.addShapeless(<beyondreality:oresilver>, [
  <ore:chunkSilver>, <ore:chunkSilver>,
  <ore:chunkSilver>, <ore:chunkSilver>]);
<ore:chunkTinySilver>.add(<beyondreality:tinysilver>);
recipes.addShapeless(<beyondreality:oresilver>, [
  <ore:chunkTinySilver>, <ore:chunkTinySilver>, <ore:chunkTinySilver>,
  <ore:chunkTinySilver>, <ore:chunkTinySilver>, <ore:chunkTinySilver>,
  <ore:chunkTinySilver>, <ore:chunkTinySilver>, <ore:chunkTinySilver>]);

// Coal
<ore:shardCoal>.add(<beyondreality:shardcoal>);
recipes.addShapeless(<minecraft:coal:0>, [
  <ore:shardCoal>, <ore:shardCoal>,
  <ore:shardCoal>, <ore:shardCoal>]);
<ore:shardTinyCoal>.add(<beyondreality:tiny_shardcoal>);
recipes.addShapeless(<minecraft:coal:0>, [
  <ore:shardTinyCoal>, <ore:shardTinyCoal>, <ore:shardTinyCoal>,
  <ore:shardTinyCoal>, <ore:shardTinyCoal>, <ore:shardTinyCoal>,
  <ore:shardTinyCoal>, <ore:shardTinyCoal>, <ore:shardTinyCoal>]);

// Diamond
<ore:shardDiamond>.add(<beyondreality:sharddiamond>);
recipes.addShapeless(<minecraft:diamond:0>, [
  <ore:shardDiamond>, <ore:shardDiamond>,
  <ore:shardDiamond>, <ore:shardDiamond>]);
<ore:shardTinyDiamond>.add(<beyondreality:tiny_sharddiamond>);
recipes.addShapeless(<minecraft:diamond:0>, [
  <ore:shardTinyDiamond>, <ore:shardTinyDiamond>, <ore:shardTinyDiamond>,
  <ore:shardTinyDiamond>, <ore:shardTinyDiamond>, <ore:shardTinyDiamond>,
  <ore:shardTinyDiamond>, <ore:shardTinyDiamond>, <ore:shardTinyDiamond>]);

// Emerald
<ore:shardEmerald>.add(<beyondreality:shardemerald>);
recipes.addShapeless(<minecraft:emerald:0>, [
  <ore:shardEmerald>, <ore:shardEmerald>,
  <ore:shardEmerald>, <ore:shardEmerald>]);
<ore:shardTinyEmerald>.add(<beyondreality:tiny_shardemerald>);
recipes.addShapeless(<minecraft:emerald:0>, [
  <ore:shardTinyEmerald>, <ore:shardTinyEmerald>, <ore:shardTinyEmerald>,
  <ore:shardTinyEmerald>, <ore:shardTinyEmerald>, <ore:shardTinyEmerald>,
  <ore:shardTinyEmerald>, <ore:shardTinyEmerald>, <ore:shardTinyEmerald>]);

// Gold
<ore:chunkGold>.add(<beyondreality:chunkgold>);
recipes.addShapeless(<minecraft:gold_ore>, [
  <ore:chunkGold>, <ore:chunkGold>,
  <ore:chunkGold>, <ore:chunkGold>]);
<ore:chunkTinyGold>.add(<beyondreality:tinygold>);
recipes.addShapeless(<minecraft:gold_ore>, [
  <ore:chunkTinyGold>, <ore:chunkTinyGold>, <ore:chunkTinyGold>,
  <ore:chunkTinyGold>, <ore:chunkTinyGold>, <ore:chunkTinyGold>,
  <ore:chunkTinyGold>, <ore:chunkTinyGold>, <ore:chunkTinyGold>]);

// Iron
<ore:chunkIron>.add(<beyondreality:chunkiron>);
recipes.addShapeless(<minecraft:iron_ore>, [
  <ore:chunkIron>, <ore:chunkIron>,
  <ore:chunkIron>, <ore:chunkIron>]);
<ore:chunkTinyIron>.add(<beyondreality:tinyiron>);
recipes.addShapeless(<minecraft:iron_ore>, [
  <ore:chunkTinyIron>, <ore:chunkTinyIron>, <ore:chunkTinyIron>,
  <ore:chunkTinyIron>, <ore:chunkTinyIron>, <ore:chunkTinyIron>,
  <ore:chunkTinyIron>, <ore:chunkTinyIron>, <ore:chunkTinyIron>]);

// Lapis
<ore:shardLapis>.add(<beyondreality:shardlapis>);
recipes.addShapeless(<minecraft:dye:4>, [
  <ore:shardLapis>, <ore:shardLapis>,
  <ore:shardLapis>, <ore:shardLapis>]);
<ore:shardTinyLapis>.add(<beyondreality:tiny_shardlapis>);
recipes.addShapeless(<minecraft:dye:4>, [
  <ore:shardTinyLapis>, <ore:shardTinyLapis>, <ore:shardTinyLapis>,
  <ore:shardTinyLapis>, <ore:shardTinyLapis>, <ore:shardTinyLapis>,
  <ore:shardTinyLapis>, <ore:shardTinyLapis>, <ore:shardTinyLapis>]);

// Redstone
<ore:chunkRedstone>.add(<beyondreality:chunkredstone>);
recipes.addShapeless(<minecraft:redstone>, [
  <ore:chunkRedstone>, <ore:chunkRedstone>,
  <ore:chunkRedstone>, <ore:chunkRedstone>]);
<ore:chunkTinyRedstone>.add(<beyondreality:tinyredstone>);
recipes.addShapeless(<minecraft:redstone>, [
  <ore:chunkTinyRedstone>, <ore:chunkTinyRedstone>, <ore:chunkTinyRedstone>,
  <ore:chunkTinyRedstone>, <ore:chunkTinyRedstone>, <ore:chunkTinyRedstone>,
  <ore:chunkTinyRedstone>, <ore:chunkTinyRedstone>, <ore:chunkTinyRedstone>]);

// Thorium
<ore:chunkThorium>.add(<beyondreality:chunkthorium>);
recipes.addShapeless(<beyondreality:orethorium>, [
  <ore:chunkThorium>, <ore:chunkThorium>,
  <ore:chunkThorium>, <ore:chunkThorium>]);
<ore:chunkTinyThorium>.add(<beyondreality:tinythorium>);
recipes.addShapeless(<beyondreality:orethorium>, [
  <ore:chunkTinyThorium>, <ore:chunkTinyThorium>, <ore:chunkTinyThorium>,
  <ore:chunkTinyThorium>, <ore:chunkTinyThorium>, <ore:chunkTinyThorium>,
  <ore:chunkTinyThorium>, <ore:chunkTinyThorium>, <ore:chunkTinyThorium>]);

// Uranium
<ore:chunkUranium>.add(<beyondreality:chunkuranium>);
recipes.addShapeless(<beyondreality:oreuranium>, [
  <ore:chunkUranium>, <ore:chunkUranium>,
  <ore:chunkUranium>, <ore:chunkUranium>]);
<ore:chunkTinyUranium>.add(<beyondreality:tinyuranium>);
recipes.addShapeless(<beyondreality:oreuranium>, [
  <ore:chunkTinyUranium>, <ore:chunkTinyUranium>, <ore:chunkTinyUranium>,
  <ore:chunkTinyUranium>, <ore:chunkTinyUranium>, <ore:chunkTinyUranium>,
  <ore:chunkTinyUranium>, <ore:chunkTinyUranium>, <ore:chunkTinyUranium>]);

// Boron
<ore:chunkBoron>.add(<beyondreality:chunkboron>);
recipes.addShapeless(<beyondreality:oreboron>, [
  <ore:chunkBoron>, <ore:chunkBoron>,
  <ore:chunkBoron>, <ore:chunkBoron>]);
<ore:chunkTinyBoron>.add(<beyondreality:tinyboron>);
recipes.addShapeless(<beyondreality:oreboron>, [
  <ore:chunkTinyBoron>, <ore:chunkTinyBoron>, <ore:chunkTinyBoron>,
  <ore:chunkTinyBoron>, <ore:chunkTinyBoron>, <ore:chunkTinyBoron>,
  <ore:chunkTinyBoron>, <ore:chunkTinyBoron>, <ore:chunkTinyBoron>]);

// Lithium
<ore:chunkLithium>.add(<beyondreality:chunklithium>);
recipes.addShapeless(<beyondreality:orelithium>, [
  <ore:chunkLithium>, <ore:chunkLithium>,
  <ore:chunkLithium>, <ore:chunkLithium>]);
<ore:chunkTinyLithium>.add(<beyondreality:tinylithium>);
recipes.addShapeless(<beyondreality:orelithium>, [
  <ore:chunkTinyLithium>, <ore:chunkTinyLithium>, <ore:chunkTinyLithium>,
  <ore:chunkTinyLithium>, <ore:chunkTinyLithium>, <ore:chunkTinyLithium>,
  <ore:chunkTinyLithium>, <ore:chunkTinyLithium>, <ore:chunkTinyLithium>]);

// Magnesium
<ore:chunkMagnesium>.add(<beyondreality:chunkmagnesium>);
recipes.addShapeless(<beyondreality:oremagnesium>, [
  <ore:chunkMagnesium>, <ore:chunkMagnesium>,
  <ore:chunkMagnesium>, <ore:chunkMagnesium>]);
<ore:chunkTinyMagnesium>.add(<beyondreality:tinymagnesium>);
recipes.addShapeless(<beyondreality:oremagnesium>, [
  <ore:chunkTinyMagnesium>, <ore:chunkTinyMagnesium>, <ore:chunkTinyMagnesium>,
  <ore:chunkTinyMagnesium>, <ore:chunkTinyMagnesium>, <ore:chunkTinyMagnesium>,
  <ore:chunkTinyMagnesium>, <ore:chunkTinyMagnesium>, <ore:chunkTinyMagnesium>]);

// Bauxite
<ore:chunkBauxite>.add(<beyondreality:chunkbauxite>);
recipes.addShapeless(<beyondreality:orebauxite>, [
  <ore:chunkBauxite>, <ore:chunkBauxite>,
  <ore:chunkBauxite>, <ore:chunkBauxite>]);
<ore:chunkTinyBauxite>.add(<beyondreality:tinybauxite>);
recipes.addShapeless(<beyondreality:orebauxite>, [
  <ore:chunkTinyBauxite>, <ore:chunkTinyBauxite>, <ore:chunkTinyBauxite>,
  <ore:chunkTinyBauxite>, <ore:chunkTinyBauxite>, <ore:chunkTinyBauxite>,
  <ore:chunkTinyBauxite>, <ore:chunkTinyBauxite>, <ore:chunkTinyBauxite>]);

// Tungsten
<ore:chunkTungsten>.add(<beyondreality:chunktungsten>);
recipes.addShapeless(<beyondreality:oretungsten>, [
  <ore:chunkTungsten>, <ore:chunkTungsten>,
  <ore:chunkTungsten>, <ore:chunkTungsten>]);
<ore:chunkTinyTungsten>.add(<beyondreality:tinytungsten>);
recipes.addShapeless(<beyondreality:oretungsten>, [
  <ore:chunkTinyTungsten>, <ore:chunkTinyTungsten>, <ore:chunkTinyTungsten>,
  <ore:chunkTinyTungsten>, <ore:chunkTinyTungsten>, <ore:chunkTinyTungsten>,
  <ore:chunkTinyTungsten>, <ore:chunkTinyTungsten>, <ore:chunkTinyTungsten>]);

// All Chests to vanilla chest
recipes.addShapeless(<minecraft:chest>, [<ore:chestWood>]);

// Oak boat from any planks
recipes.addShaped(<minecraft:boat>, [
  [null, null, null],
  [<ore:plankWood>, null, <ore:plankWood>],
  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);

//Oredict Industrial Foregoing Plastic to ic2
val plastic = <ore:itemRubber>;
plastic.add(<industrialforegoing:plastic>);

//All Bookshelfs to vanilla
recipes.addShapeless(<minecraft:bookshelf>, [<ore:bookshelf>]);

