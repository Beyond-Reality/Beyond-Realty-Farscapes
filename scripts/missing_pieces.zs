# missing_pieces.zs tweaks

# Oredict
// Wood pillars
<ore:pillarWood>.add(<missing_pieces:acacia_pillar>);
<ore:pillarWood>.add(<missing_pieces:birch_pillar>);
<ore:pillarWood>.add(<missing_pieces:dark_oak_pillar>);
<ore:pillarWood>.add(<missing_pieces:jungle_pillar>);
<ore:pillarWood>.add(<missing_pieces:oak_pillar>);
<ore:pillarWood>.add(<missing_pieces:spruce_pillar>);
<ore:pillarWood>.add(<missing_pieces:acacia_pillar>);

// Log pillars
<ore:pillarLog>.add(<missing_pieces:acacia_log>);
<ore:pillarLog>.add(<missing_pieces:birch_log>);
<ore:pillarLog>.add(<missing_pieces:dark_oak_log>);
<ore:pillarLog>.add(<missing_pieces:jungle_log>);
<ore:pillarLog>.add(<missing_pieces:oak_log>);
<ore:pillarLog>.add(<missing_pieces:spruce_log>);
<ore:pillarLog>.add(<missing_pieces:acacia_log>);

// Stone pillars
<ore:pillarStone>.add(<missing_pieces:p_granite_pillar>);
<ore:pillarStone>.add(<missing_pieces:p_andesite_pillar>);
<ore:pillarStone>.add(<missing_pieces:p_diorite_pillar>);
<ore:pillarStone>.add(<missing_pieces:granite_pillar>);
<ore:pillarStone>.add(<missing_pieces:andesite_pillar>);
<ore:pillarStone>.add(<missing_pieces:diorite_pillar>);
<ore:pillarStone>.add(<missing_pieces:stone_pillar>);
<ore:pillarStone>.add(<missing_pieces:purpur_pillar>);
<ore:pillarStone>.add(<missing_pieces:stone_pillar>);
<ore:pillarStone>.add(<missing_pieces:cobblestone_pillar>);
<ore:pillarStone>.add(<missing_pieces:stone_pillar>);
<ore:pillarStone>.add(<missing_pieces:obsidian_pillar>);
<ore:pillarStone>.add(<missing_pieces:quartz_pillar>);
<ore:pillarStone>.add(<missing_pieces:sandstone_pillar>);
<ore:pillarStone>.add(<missing_pieces:red_sandstone_pillar>);
<ore:pillarStone>.add(<missing_pieces:nether_brick_pillar>);
<ore:pillarStone>.add(<missing_pieces:end_stone_pillar>);
<ore:pillarStone>.add(<missing_pieces:stone_pillar>);

// Clay pillars
<ore:pillarClay>.add(<missing_pieces:black_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:blue_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:brown_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:cyan_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:gray_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:green_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:light_blue_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:light_gray_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:lime_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:magenta_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:orange_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:pink_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:purple_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:red_clay_pillar>);
<ore:pillarClay>.add(<missing_pieces:white_clay_pillar>);


# Conflicting recipes

// cropStake vs wooden pillar
recipes.remove(<rustic:crop_stake>);
recipes.addShapeless(<rustic:crop_stake>, [<ore:pillarWood>]);
recipes.addShapeless(<missing_pieces:oak_pillar>, [<rustic:crop_stake>]);
