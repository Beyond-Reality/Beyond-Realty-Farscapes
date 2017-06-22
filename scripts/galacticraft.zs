# galacticraft.zs Tweaks

// Atomic battery
recipes.remove(<galacticraftplanets:atomic_battery>);
recipes.addShaped(<galacticraftplanets:atomic_battery>, [
  [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>],
  [<ore:ingotLead>, <galacticraftplanets:basic_item_venus:2>, <ore:ingotLead>],
  [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>]
]);
