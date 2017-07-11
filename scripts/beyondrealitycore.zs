# beyondrealitycore.zs tweaks
import minetweaker.data.IData;
import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;

// Items
val Bed = <minecraft:bed>;
val Boat = <minecraft:boat>;
val Bookshelf = <minecraft:bookshelf>;
val Chest = <minecraft:chest>;
val EggDragon = <minecraft:dragon_egg>;
val Elytra = <minecraft:elytra>;
val NameTag = <minecraft:name_tag>;

// ingredients
val bed = <ore:bed>;
val blockWool = <ore:blockWool>;
val bookshelf = <ore:bookshelf>;
val chestWood = <ore:chestWood>;
val paper = <ore:paper>;
val plankWood = <ore:plankWood>;
val str = <ore:string>;

// Ore Items combine

// Ruby
<ore:shardRuby>.add(<beyondreality:shardruby>);
recipes.addShapeless(<techreborn:gem:0>, [
  <ore:shardRuby>.giveBack(<techreborn:gem:3>), <ore:shardRuby>,
  <ore:shardRuby>, <ore:shardRuby>]);
furnace.addRecipe(<beyondreality:shardruby> * 2, <ore:sporadicRuby>);
<ore:shardTinyRuby>.add(<beyondreality:tiny_shardruby>);
recipes.addShapeless(<techreborn:gem:0>, [
  <ore:shardTinyRuby>.giveBack(<techreborn:gem:3>), <ore:shardTinyRuby>, <ore:shardTinyRuby>,
  <ore:shardTinyRuby>, <ore:shardTinyRuby>, <ore:shardTinyRuby>,
  <ore:shardTinyRuby>, <ore:shardTinyRuby>, <ore:shardTinyRuby>]);
furnace.addRecipe(<beyondreality:tiny_shardruby> * 2, <ore:sparseRuby>);

// Tin
<ore:chunkTin>.add(<beyondreality:chunktin>);
recipes.addShapeless(<beyondreality:oretin>, [
  <ore:chunkTin>, <ore:chunkTin>,
  <ore:chunkTin>, <ore:chunkTin>]);
furnace.addRecipe(<beyondreality:chunktin> * 2, <ore:sporadicTin>);
<ore:chunkTinyTin>.add(<beyondreality:tinytin>);
recipes.addShapeless(<beyondreality:oretin>, [
  <ore:chunkTinyTin>, <ore:chunkTinyTin>, <ore:chunkTinyTin>,
  <ore:chunkTinyTin>, <ore:chunkTinyTin>, <ore:chunkTinyTin>,
  <ore:chunkTinyTin>, <ore:chunkTinyTin>, <ore:chunkTinyTin>]);
furnace.addRecipe(<beyondreality:tinytin> * 2, <ore:sparseTin>);

// Copper
<ore:chunkCopper>.add(<beyondreality:chunkcopper>);
recipes.addShapeless(<beyondreality:orecopper>, [
  <ore:chunkCopper>, <ore:chunkCopper>,
  <ore:chunkCopper>, <ore:chunkCopper>]);
furnace.addRecipe(<beyondreality:chunkcopper> * 2, <ore:sporadicCopper>);
<ore:chunkTinyCopper>.add(<beyondreality:tinycopper>);
recipes.addShapeless(<beyondreality:orecopper>, [
  <ore:chunkTinyCopper>, <ore:chunkTinyCopper>, <ore:chunkTinyCopper>,
  <ore:chunkTinyCopper>, <ore:chunkTinyCopper>, <ore:chunkTinyCopper>,
  <ore:chunkTinyCopper>, <ore:chunkTinyCopper>, <ore:chunkTinyCopper>]);
furnace.addRecipe(<beyondreality:tinycopper> * 2, <ore:sparseCopper>);

// Nickel
<ore:chunkNickel>.add(<beyondreality:chunknickel>);
recipes.addShapeless(<beyondreality:orenickel>, [
  <ore:chunkNickel>, <ore:chunkNickel>,
  <ore:chunkNickel>, <ore:chunkNickel>]);
furnace.addRecipe(<beyondreality:chunknickel> * 2, <ore:sporadicNickel>);
<ore:chunkTinyNickel>.add(<beyondreality:tinynickel>);
recipes.addShapeless(<beyondreality:orenickel>, [
  <ore:chunkTinyNickel>, <ore:chunkTinyNickel>, <ore:chunkTinyNickel>,
  <ore:chunkTinyNickel>, <ore:chunkTinyNickel>, <ore:chunkTinyNickel>,
  <ore:chunkTinyNickel>, <ore:chunkTinyNickel>, <ore:chunkTinyNickel>]);
furnace.addRecipe(<beyondreality:tinynickel> * 2, <ore:sparseNickel>);

// platinum
<ore:chunkPlatinum>.add(<beyondreality:chunkplatinum>);
recipes.addShapeless(<beyondreality:oreplatinum>, [
  <ore:chunkPlatinum>, <ore:chunkPlatinum>,
  <ore:chunkPlatinum>, <ore:chunkPlatinum>]);
furnace.addRecipe(<beyondreality:chunkplatinum> * 2, <ore:sporadicPlatinum>);
<ore:chunkTinyPlatinum>.add(<beyondreality:tinyplatinum>);
recipes.addShapeless(<beyondreality:oreplatinum>, [
  <ore:chunkTinyPlatinum>, <ore:chunkTinyPlatinum>, <ore:chunkTinyPlatinum>,
  <ore:chunkTinyPlatinum>, <ore:chunkTinyPlatinum>, <ore:chunkTinyPlatinum>,
  <ore:chunkTinyPlatinum>, <ore:chunkTinyPlatinum>, <ore:chunkTinyPlatinum>]);
furnace.addRecipe(<beyondreality:tinyplatinum> * 2, <ore:sparsePlatinum>);

// lead
<ore:chunkLead>.add(<beyondreality:chunklead>);
recipes.addShapeless(<beyondreality:orelead>, [
  <ore:chunkLead>, <ore:chunkLead>,
  <ore:chunkLead>, <ore:chunkLead>]);
furnace.addRecipe(<beyondreality:chunklead> * 2, <ore:sporadicLead>);
<ore:chunkTinyLead>.add(<beyondreality:tinylead>);
recipes.addShapeless(<beyondreality:orelead>, [
  <ore:chunkTinyLead>, <ore:chunkTinyLead>, <ore:chunkTinyLead>,
  <ore:chunkTinyLead>, <ore:chunkTinyLead>, <ore:chunkTinyLead>,
  <ore:chunkTinyLead>, <ore:chunkTinyLead>, <ore:chunkTinyLead>]);
furnace.addRecipe(<beyondreality:tinylead> * 2, <ore:sparseLead>);

// Sapphire
<ore:shardSapphire>.add(<beyondreality:shardsapphire>);
recipes.addShapeless(<techreborn:gem:1>, [
  <ore:shardSapphire>.giveBack(<techreborn:gem:2>), <ore:shardSapphire>,
  <ore:shardSapphire>, <ore:shardSapphire>]);
furnace.addRecipe(<beyondreality:shardsapphire> * 2, <ore:sporadicSapphire>);
<ore:shardTinySapphire>.add(<beyondreality:tiny_shardsapphire>);
recipes.addShapeless(<techreborn:gem:1>, [
  <ore:shardTinySapphire>.giveBack(<techreborn:gem:2>), <ore:shardTinySapphire>, <ore:shardTinySapphire>,
  <ore:shardTinySapphire>, <ore:shardTinySapphire>, <ore:shardTinySapphire>,
  <ore:shardTinySapphire>, <ore:shardTinySapphire>, <ore:shardTinySapphire>]);
furnace.addRecipe(<beyondreality:tiny_shardsapphire> * 2, <ore:sparseSapphire>);


// Peridot
<ore:shardPeridot>.add(<beyondreality:shardperidot>);
recipes.addShapeless(<techreborn:gem:2>, [
  <ore:shardPeridot>, <ore:shardPeridot>,
  <ore:shardPeridot>, <ore:shardPeridot>]);
<ore:shardTinyPeridot>.add(<beyondreality:tiny_shardperidot>);
furnace.addRecipe(<beyondreality:shardperidot> * 2, <ore:sporadicPeridot>);
recipes.addShapeless(<techreborn:gem:2>, [
  <ore:shardTinyPeridot>, <ore:shardTinyPeridot>, <ore:shardTinyPeridot>,
  <ore:shardTinyPeridot>, <ore:shardTinyPeridot>, <ore:shardTinyPeridot>,
  <ore:shardTinyPeridot>, <ore:shardTinyPeridot>, <ore:shardTinyPeridot>]);
furnace.addRecipe(<beyondreality:tiny_shardperidot> * 2, <ore:sparsePeridot>);

// Iridium
<ore:chunkIridium>.add(<beyondreality:chunkiridium>);
recipes.addShapeless(<beyondreality:oreiridium>, [
  <ore:chunkIridium>, <ore:chunkIridium>,
  <ore:chunkIridium>, <ore:chunkIridium>]);
furnace.addRecipe(<beyondreality:chunkiridium> * 2, <ore:sporadicIridium>);
<ore:chunkTinyIridium>.add(<beyondreality:tinyiridium>);
recipes.addShapeless(<beyondreality:oreiridium>, [
  <ore:chunkTinyIridium>, <ore:chunkTinyIridium>, <ore:chunkTinyIridium>,
  <ore:chunkTinyIridium>, <ore:chunkTinyIridium>, <ore:chunkTinyIridium>,
  <ore:chunkTinyIridium>, <ore:chunkTinyIridium>, <ore:chunkTinyIridium>]);
furnace.addRecipe(<beyondreality:tinyiridium> * 2, <ore:sparseIridium>);

// Silver
<ore:chunkSilver>.add(<beyondreality:chunksilver>);
recipes.addShapeless(<beyondreality:oresilver>, [
  <ore:chunkSilver>, <ore:chunkSilver>,
  <ore:chunkSilver>, <ore:chunkSilver>]);
furnace.addRecipe(<beyondreality:chunksilver> * 2, <ore:sporadicSilver>);
<ore:chunkTinySilver>.add(<beyondreality:tinysilver>);
recipes.addShapeless(<beyondreality:oresilver>, [
  <ore:chunkTinySilver>, <ore:chunkTinySilver>, <ore:chunkTinySilver>,
  <ore:chunkTinySilver>, <ore:chunkTinySilver>, <ore:chunkTinySilver>,
  <ore:chunkTinySilver>, <ore:chunkTinySilver>, <ore:chunkTinySilver>]);
furnace.addRecipe(<beyondreality:tinysilver> * 2, <ore:sparseSilver>);

// Coal
<ore:shardCoal>.add(<beyondreality:shardcoal>);
recipes.addShapeless(<minecraft:coal:0>, [
  <ore:shardCoal>, <ore:shardCoal>,
  <ore:shardCoal>, <ore:shardCoal>]);
furnace.addRecipe(<beyondreality:shardcoal> * 2, <ore:sporadicCoal>);
<ore:shardTinyCoal>.add(<beyondreality:tiny_shardcoal>);
recipes.addShapeless(<minecraft:coal:0>, [
  <ore:shardTinyCoal>, <ore:shardTinyCoal>, <ore:shardTinyCoal>,
  <ore:shardTinyCoal>, <ore:shardTinyCoal>, <ore:shardTinyCoal>,
  <ore:shardTinyCoal>, <ore:shardTinyCoal>, <ore:shardTinyCoal>]);
furnace.addRecipe(<beyondreality:tiny_shardcoal> * 2, <ore:sparseCoal>);

// Diamond
<ore:shardDiamond>.add(<beyondreality:sharddiamond>);
recipes.addShapeless(<minecraft:diamond:0>, [
  <ore:shardDiamond>, <ore:shardDiamond>,
  <ore:shardDiamond>, <ore:shardDiamond>]);
furnace.addRecipe(<beyondreality:sharddiamond> * 2, <ore:sporadicDiamond>);
<ore:shardTinyDiamond>.add(<beyondreality:tiny_sharddiamond>);
recipes.addShapeless(<minecraft:diamond:0>, [
  <ore:shardTinyDiamond>, <ore:shardTinyDiamond>, <ore:shardTinyDiamond>,
  <ore:shardTinyDiamond>, <ore:shardTinyDiamond>, <ore:shardTinyDiamond>,
  <ore:shardTinyDiamond>, <ore:shardTinyDiamond>, <ore:shardTinyDiamond>]);
furnace.addRecipe(<beyondreality:tiny_sharddiamond> * 2, <ore:sparseDiamond>);

// Emerald
<ore:shardEmerald>.add(<beyondreality:shardemerald>);
recipes.addShapeless(<minecraft:emerald:0>, [
  <ore:shardEmerald>, <ore:shardEmerald>,
  <ore:shardEmerald>, <ore:shardEmerald>]);
furnace.addRecipe(<beyondreality:shardemerald> * 2, <ore:sporadicEmerald>);
<ore:shardTinyEmerald>.add(<beyondreality:tiny_shardemerald>);
recipes.addShapeless(<minecraft:emerald:0>, [
  <ore:shardTinyEmerald>, <ore:shardTinyEmerald>, <ore:shardTinyEmerald>,
  <ore:shardTinyEmerald>, <ore:shardTinyEmerald>, <ore:shardTinyEmerald>,
  <ore:shardTinyEmerald>, <ore:shardTinyEmerald>, <ore:shardTinyEmerald>]);
furnace.addRecipe(<beyondreality:tiny_shardemerald> * 2, <ore:sparseEmerald>);

// Gold
<ore:chunkGold>.add(<beyondreality:chunkgold>);
recipes.addShapeless(<minecraft:gold_ore>, [
  <ore:chunkGold>, <ore:chunkGold>,
  <ore:chunkGold>, <ore:chunkGold>]);
furnace.addRecipe(<beyondreality:chunkgold> * 2, <ore:sporadicGold>);
<ore:chunkTinyGold>.add(<beyondreality:tinygold>);
recipes.addShapeless(<minecraft:gold_ore>, [
  <ore:chunkTinyGold>, <ore:chunkTinyGold>, <ore:chunkTinyGold>,
  <ore:chunkTinyGold>, <ore:chunkTinyGold>, <ore:chunkTinyGold>,
  <ore:chunkTinyGold>, <ore:chunkTinyGold>, <ore:chunkTinyGold>]);
furnace.addRecipe(<beyondreality:tinygold> * 2, <ore:sparseGold>);

// Iron
<ore:chunkIron>.add(<beyondreality:chunkiron>);
recipes.addShapeless(<minecraft:iron_ore>, [
  <ore:chunkIron>, <ore:chunkIron>,
  <ore:chunkIron>, <ore:chunkIron>]);
furnace.addRecipe(<beyondreality:chunkiron> * 2, <ore:sporadicIron>);
<ore:chunkTinyIron>.add(<beyondreality:tinyiron>);
recipes.addShapeless(<minecraft:iron_ore>, [
  <ore:chunkTinyIron>, <ore:chunkTinyIron>, <ore:chunkTinyIron>,
  <ore:chunkTinyIron>, <ore:chunkTinyIron>, <ore:chunkTinyIron>,
  <ore:chunkTinyIron>, <ore:chunkTinyIron>, <ore:chunkTinyIron>]);
furnace.addRecipe(<beyondreality:tinyiron> * 2, <ore:sparseIron>);

// Lapis
<ore:shardLapis>.add(<beyondreality:shardlapis>);
recipes.addShapeless(<minecraft:dye:4> * 6, [
  <ore:shardLapis>, <ore:shardLapis>,
  <ore:shardLapis>, <ore:shardLapis>]);
furnace.addRecipe(<beyondreality:shardlapis> * 2, <ore:sporadicLapis>);
<ore:shardTinyLapis>.add(<beyondreality:tiny_shardlapis>);
recipes.addShapeless(<minecraft:dye:4> * 6, [
  <ore:shardTinyLapis>, <ore:shardTinyLapis>, <ore:shardTinyLapis>,
  <ore:shardTinyLapis>, <ore:shardTinyLapis>, <ore:shardTinyLapis>,
  <ore:shardTinyLapis>, <ore:shardTinyLapis>, <ore:shardTinyLapis>]);
furnace.addRecipe(<beyondreality:tiny_shardlapis> * 2, <ore:sparseLapis>);

// Redstone
<ore:chunkRedstone>.add(<beyondreality:chunkredstone>);
recipes.addShapeless(<minecraft:redstone> * 6, [
  <ore:chunkRedstone>, <ore:chunkRedstone>,
  <ore:chunkRedstone>, <ore:chunkRedstone>]);
furnace.addRecipe(<beyondreality:chunkredstone> * 2, <ore:sporadicRedstone>);
<ore:chunkTinyRedstone>.add(<beyondreality:tinyredstone>);
recipes.addShapeless(<minecraft:redstone> * 6, [
  <ore:chunkTinyRedstone>, <ore:chunkTinyRedstone>, <ore:chunkTinyRedstone>,
  <ore:chunkTinyRedstone>, <ore:chunkTinyRedstone>, <ore:chunkTinyRedstone>,
  <ore:chunkTinyRedstone>, <ore:chunkTinyRedstone>, <ore:chunkTinyRedstone>]);
furnace.addRecipe(<beyondreality:tinyredstone> * 2, <ore:sparseRedstone>);

// Thorium
<ore:chunkThorium>.add(<beyondreality:chunkthorium>);
recipes.addShapeless(<beyondreality:orethorium>, [
  <ore:chunkThorium>, <ore:chunkThorium>,
  <ore:chunkThorium>, <ore:chunkThorium>]);
furnace.addRecipe(<beyondreality:chunkthorium> * 2, <ore:sporadicThorium>);
<ore:chunkTinyThorium>.add(<beyondreality:tinythorium>);
recipes.addShapeless(<beyondreality:orethorium>, [
  <ore:chunkTinyThorium>, <ore:chunkTinyThorium>, <ore:chunkTinyThorium>,
  <ore:chunkTinyThorium>, <ore:chunkTinyThorium>, <ore:chunkTinyThorium>,
  <ore:chunkTinyThorium>, <ore:chunkTinyThorium>, <ore:chunkTinyThorium>]);
furnace.addRecipe(<beyondreality:tinythorium> * 2, <ore:sparseThorium>);

// Uranium
<ore:chunkUranium>.add(<beyondreality:chunkuranium>);
recipes.addShapeless(<beyondreality:oreuranium>, [
  <ore:chunkUranium>, <ore:chunkUranium>,
  <ore:chunkUranium>, <ore:chunkUranium>]);
furnace.addRecipe(<beyondreality:chunkuranium> * 2, <ore:sporadicUranium>);
<ore:chunkTinyUranium>.add(<beyondreality:tinyuranium>);
recipes.addShapeless(<beyondreality:oreuranium>, [
  <ore:chunkTinyUranium>, <ore:chunkTinyUranium>, <ore:chunkTinyUranium>,
  <ore:chunkTinyUranium>, <ore:chunkTinyUranium>, <ore:chunkTinyUranium>,
  <ore:chunkTinyUranium>, <ore:chunkTinyUranium>, <ore:chunkTinyUranium>]);
furnace.addRecipe(<beyondreality:tinyuranium> * 2, <ore:sparseUranium>);

// Boron
<ore:chunkBoron>.add(<beyondreality:chunkboron>);
recipes.addShapeless(<beyondreality:oreboron>, [
  <ore:chunkBoron>, <ore:chunkBoron>,
  <ore:chunkBoron>, <ore:chunkBoron>]);
furnace.addRecipe(<beyondreality:chunkboron> * 2, <ore:sporadicBoron>);
<ore:chunkTinyBoron>.add(<beyondreality:tinyboron>);
recipes.addShapeless(<beyondreality:oreboron>, [
  <ore:chunkTinyBoron>, <ore:chunkTinyBoron>, <ore:chunkTinyBoron>,
  <ore:chunkTinyBoron>, <ore:chunkTinyBoron>, <ore:chunkTinyBoron>,
  <ore:chunkTinyBoron>, <ore:chunkTinyBoron>, <ore:chunkTinyBoron>]);
furnace.addRecipe(<beyondreality:tinyboron> * 2, <ore:sparseBoron>);

// Lithium
<ore:chunkLithium>.add(<beyondreality:chunklithium>);
recipes.addShapeless(<beyondreality:orelithium>, [
  <ore:chunkLithium>, <ore:chunkLithium>,
  <ore:chunkLithium>, <ore:chunkLithium>]);
furnace.addRecipe(<beyondreality:chunklithium> * 2, <ore:sporadicLithium>);
<ore:chunkTinyLithium>.add(<beyondreality:tinylithium>);
recipes.addShapeless(<beyondreality:orelithium>, [
  <ore:chunkTinyLithium>, <ore:chunkTinyLithium>, <ore:chunkTinyLithium>,
  <ore:chunkTinyLithium>, <ore:chunkTinyLithium>, <ore:chunkTinyLithium>,
  <ore:chunkTinyLithium>, <ore:chunkTinyLithium>, <ore:chunkTinyLithium>]);
furnace.addRecipe(<beyondreality:tinylithium> * 2, <ore:sparseLithium>);

// Magnesium
<ore:chunkMagnesium>.add(<beyondreality:chunkmagnesium>);
recipes.addShapeless(<beyondreality:oremagnesium>, [
  <ore:chunkMagnesium>, <ore:chunkMagnesium>,
  <ore:chunkMagnesium>, <ore:chunkMagnesium>]);
furnace.addRecipe(<beyondreality:chunkmagnesium> * 2, <ore:sporadicMagnesium>);
<ore:chunkTinyMagnesium>.add(<beyondreality:tinymagnesium>);
recipes.addShapeless(<beyondreality:oremagnesium>, [
  <ore:chunkTinyMagnesium>, <ore:chunkTinyMagnesium>, <ore:chunkTinyMagnesium>,
  <ore:chunkTinyMagnesium>, <ore:chunkTinyMagnesium>, <ore:chunkTinyMagnesium>,
  <ore:chunkTinyMagnesium>, <ore:chunkTinyMagnesium>, <ore:chunkTinyMagnesium>]);
furnace.addRecipe(<beyondreality:tinymagnesium> * 2, <ore:sparseMagnesium>);

// Bauxite
<ore:chunkBauxite>.add(<beyondreality:chunkbauxite>);
recipes.addShapeless(<beyondreality:orebauxite>, [
  <ore:chunkBauxite>, <ore:chunkBauxite>,
  <ore:chunkBauxite>, <ore:chunkBauxite>]);
furnace.addRecipe(<beyondreality:chunkbauxite> * 2, <ore:sporadicBauxite>);
<ore:chunkTinyBauxite>.add(<beyondreality:tinybauxite>);
recipes.addShapeless(<beyondreality:orebauxite>, [
  <ore:chunkTinyBauxite>, <ore:chunkTinyBauxite>, <ore:chunkTinyBauxite>,
  <ore:chunkTinyBauxite>, <ore:chunkTinyBauxite>, <ore:chunkTinyBauxite>,
  <ore:chunkTinyBauxite>, <ore:chunkTinyBauxite>, <ore:chunkTinyBauxite>]);
furnace.addRecipe(<beyondreality:tinybauxite> * 2, <ore:sparseBauxite>);

// Tungsten
<ore:chunkTungsten>.add(<beyondreality:chunktungsten>);
recipes.addShapeless(<beyondreality:oretungsten>, [
  <ore:chunkTungsten>, <ore:chunkTungsten>,
  <ore:chunkTungsten>, <ore:chunkTungsten>]);
furnace.addRecipe(<beyondreality:chunktungsten> * 2, <ore:sporadicTungsten>);
<ore:chunkTinyTungsten>.add(<beyondreality:tinytungsten>);
recipes.addShapeless(<beyondreality:oretungsten>, [
  <ore:chunkTinyTungsten>, <ore:chunkTinyTungsten>, <ore:chunkTinyTungsten>,
  <ore:chunkTinyTungsten>, <ore:chunkTinyTungsten>, <ore:chunkTinyTungsten>,
  <ore:chunkTinyTungsten>, <ore:chunkTinyTungsten>, <ore:chunkTinyTungsten>]);
furnace.addRecipe(<beyondreality:tinytungsten> * 2, <ore:sparseTungsten>);

// All Chests to vanilla chest
recipes.addShapeless(Chest, [chestWood]);

// Oak boat from any planks
recipes.addShaped(Boat, [
  [null, null, null],
  [plankWood, null, plankWood],
  [plankWood, plankWood, plankWood]
]);

// All Bookshelfs to vanilla
recipes.addShapeless(Bookshelf, [bookshelf]);

// All Beds to vanilla
recipes.addShapeless(Bed, [bed]);

// Any wool/wood to vanilla Bed
recipes.addShaped(Bed, [
  [null,null,null],
  [blockWool, blockWool, blockWool],
  [plankWood, plankWood, plankWood]
]);

// Dragon Egg from Elytra
recipes.addShapeless(EggDragon, [Elytra]);

// Craft NameTag
recipes.addShapeless(NameTag, [paper, str]);
