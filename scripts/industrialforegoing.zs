# industrialforegoing.zs Tweaks

// Disable crafting of the Plant Recolector due to lag issue waiting for fix
recipes.remove(<industrialforegoing:crop_recolector>);
<industrialforegoing:crop_recolector>.addTooltip(format.bold(format.red("CURRENTLY DISABLED BECAUSE OF LAG")));
