# ic2.zs tweaks

# Oredict

<ore:plateAlloyAdvanced>.add(<ic2:crafting:3>);
<ore:energyCrystal>.add(<ic2:energy_crystal>);

# Quantum suit

// Boots
recipes.remove(<ic2:quantum_boots>);
recipes.addShaped(<ic2:quantum_boots>,[
  [null, null, null],
  [<ore:plateIridium>, <ic2:nano_boots>.anyDamage(), <ore:plateIridium>],
  [<ic2:rubber_boots>, <ore:lapotronCrystal>, <ic2:rubber_boots>]
]);

// Leggings
recipes.remove(<ic2:quantum_leggings>);
recipes.addShaped(<ic2:quantum_leggings>, [
  [<ic2:resource:12>, <ore:lapotronCrystal>, <ic2:resource:12>],
  [<ore:plateIridium>, <ic2:nano_leggings:*>.anyDamage(), <ore:plateIridium>],
  [<ore:dustGlowstone>, null, <ore:dustGlowstone>]
]);

// Chestplate
recipes.remove(<ic2:quantum_chestplate>);
recipes.addShaped(<ic2:quantum_chestplate>, [
  [<ore:plateAlloyAdvanced>, <ic2:nano_chestplate>.anyDamage(), <ore:plateAlloyAdvanced>],
  [<ore:plateIridium>, <ore:lapotronCrystal>, <ore:plateIridium>],
  [<ore:plateIridium>, <ic2:jetpack_electric>.anyDamage(), <ore:plateIridium>]
]);

// Helmet
recipes.remove(<ic2:quantum_helmet>);
recipes.addShaped(<ic2:quantum_helmet>, [
  [<ore:glassReinforced>, <ic2:nano_helmet>.anyDamage(), <ore:glassReinforced>],
  [<ore:plateIridium>, <ore:lapotronCrystal>, <ore:plateIridium>],
  [<ore:circuitAdvanced>, <ic2:hazmat_helmet>.anyDamage(), <ore:circuitAdvanced>]
]);

# Tools
recipes.remove(<ic2:iridium_drill>);
recipes.addShaped(<ic2:iridium_drill>, [
  [null, <ore:plateIridium>, null],
  [<ore:plateIridium>, <ore:drillDiamond>, <ore:plateIridium>],
  [null, <ore:energyCrystal>, null]
]);

# Components
recipes.remove(<ic2:iridium_reflector>);
recipes.addShapedMirrored(<ic2:iridium_reflector>, [
  [<ic2:thick_neutron_reflector:*>.anyDamage(), <ic2:thick_neutron_reflector:*>.anyDamage(), <ic2:thick_neutron_reflector:*>.anyDamage()],
  [<ore:plateDenseCopper>, <ore:plateIridium>, <ore:plateDenseCopper>],
  [<ic2:thick_neutron_reflector:*>.anyDamage(), <ic2:thick_neutron_reflector:*>.anyDamage(), <ic2:thick_neutron_reflector:*>.anyDamage()]
]);
