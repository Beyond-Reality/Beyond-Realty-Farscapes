## Changelog for 1.0.5-r1

### Mod updates

#### [CyclopsCore-1.11.2-0.10.5](https://minecraft.curseforge.com/projects/cyclops-core/files/2433919) dependency for Integrated Tunnels

##### Additions:

- Create zh_CN

##### Fixes:

- Update drop particle interface method signature. It didn't match the Block's signature anymore.

#### [IntegratedDynamics-1.11.2-0.7.3](https://minecraft.curseforge.com/projects/integrated-dynamics/files/2433929)

##### Changes:

- Clarify need of operator variables in infobook, Closes [#190](https://github.com/CyclopsMC/IntegratedDynamics/issues/190)
- Update zh_CN file

##### Fixes:

- Fix CME when changing part priorities, Closes [IntegratedTunnel #34](https://github.com/CyclopsMC/IntegratedTunnel/sissues/34)
- Fix crash when setting filledMenrilLogChance to zero, Closes [#188](https://github.com/CyclopsMC/IntegratedDynamics/issues/188)
- Fix Menril Trees not spawning when Meneglin Biome is disabled, [#186](https://github.com/CyclopsMC/IntegratedDynamics/issues/186)
- Fix NPE when filtering lists of items, Closes [#185](https://github.com/CyclopsMC/IntegratedDynamics/issues/185)
- Fix variable card localized tooltip

#### [Refined Storage 1.4.15](https://minecraft.curseforge.com/projects/refined-storage/files/2433945)

- Updated Storage Drawers API, fixes crashes

### Modpack

#### Changes

- Disable Vanity Quark Boat sails in an attempt to workaround crash onloading world with boats.
- Implement secondary drops with BR Ore chunks and shards (Combining ruby shards gives back 1 ruby and 1 red garnet gems)
- Add recipe to smelt Rubber into Industrial Foregoing Plastic.
- Disable RefinedStorage oreDictionary tweaks as issue fixed by mod update.

#### Fixes

- `oreRuby` was wrongly unified to Tech Reborn Galena Ore

#### Removed

##### Just Enough Dimensions

- Unused

#### added

##### [Mod Tweaker]()

-  ModTweaker is an addon for MineTweaker 3. Minetweaker lets you adjust recipes, remove them entirely, or add new recipes. While it has decent mod support, there are many mods that use custom crafting handlers that are not supported natively. ModTweaker plans to provide additional support for as many of these mods over time as possible.
