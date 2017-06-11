## Development Version

### Forge update

[forge-1.11.2-13.20.0.2315](https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.11.2-13.20.0.2315/forge-1.11.2-13.20.0.2315-changelog.txt)

- Fix log4j configuration
- Fix IItemHandler wrappers returned by EntityLivingBase ([#3942](https://github.com/MinecraftForge/MinecraftForge/pull/3942))
- Fix getShareTag replacing data on the server ([#3776](https://github.com/MinecraftForge/MinecraftForge/pull/3776)) Closes [#3682 getShareTag is sometimes called serverside and replaces itemstacks on the server with the share tag](https://github.com/MinecraftForge/MinecraftForge/issues/3682)
- Fix crashed caused by bad mods reflectively breaking the grass drop list. Closes [#3943 No seed entries causes a crash.](https://github.com/MinecraftForge/MinecraftForge/issues/3943)

### Mod updates

#### [Animania-1.11.2-1.1.4](https://minecraft.curseforge.com/projects/animania/files/2431490)

Release Notes 1.1.4 (for 1.10.2 and 1.11.2) “Hot Scramble ”

##### Enhancements:

- Feathers now drop randomly from Animania Chickens, so you no longer have to kill them to get feathers. You can turn this off in the config (credit: TheCoolGuy937, Sunconure11)
- Custom Mob Drops can now accept items with metadata (credit: Titus-Armillius)
- Increased the spawn limit for Draft Horses (credit: TiffanyDoctorWho)
- If you really want vanilla item eggs to spawn from chickens for some reason you can now turn this on in the config

##### Bug Fixes:

- Minecraft vanilla egg items are no longer spawned from Animania chickens. Apologies to everyone for yolking up your immersion (credit: Jomik)
- Foals keep color when they grow up, was still broken on 1.11.2 (credit: 19nrussell)
- Draft Horses keep their color after re-logging the first time
- Yorkshire piglets now get credit for eating from troughs (credit: 19nrussell)
- Only forge buckets filled with Milk will be able to converted to vanilla milk (credit: Jomik)

#### [BiblioCraft v2.3.2](https://minecraft.curseforge.com/projects/bibliocraft/files/2430777)
- Fixed a rendering crash that seems to be happening quite frequently to some folks
- Tweaked Reading Enchantment level / rarity

#### [BiomesOPlenty-1.11.2-6.2.0.2254](https://minecraft.curseforge.com/projects/biomes-o-plenty/files/2432129)

- Removed the Heathland biome, added the Alps Foothills biome, changed the Mangrove to a primary biome in the hot swamp climate, tweaked a lot of other biomes.
- Removed detection for reusing default config files. Turns out this has unintended consequences
- Removed the mud tools/armor, scythes, and plain/lush/exotic flower bands.
- Tweaked various textures
- Fixed a crash when disabling biome ids.  
  Closes [#1030 Vanilla structure biomes aren't properly checked for](https://github.com/Glitchfiend/BiomesOPlenty/issues/1030)
- Default biome config files are now generated. Please note, you CANNOT directly copy and paste these, the game WILL crash INTENTIONALLY.  
  You must only include the sections you have changed from default.

#### [chiselsandbits-13.11](https://minecraft.curseforge.com/projects/chisels-bits/files/2431883)

- Ultra Compatibly mode, should support a wider variety of block data from other mods.
- Use IBlockAccess Aware version of getLightValue, Fixes [#245 Liquid starlight bits don't emit light](https://github.com/AlgorithmX2/Chisels-and-Bits/issues/245)
- Enable Shadow Rendering for full blocks, Adds [#253 Player-shadow doesn't render on any chiseled C&B block](https://github.com/AlgorithmX2/Chisels-and-Bits/issues/253)
- Fix Model Cache Clearing, and Leaves Fancy/Fast Code, [#251 Chiseled Leaves Fancy & Fast](https://github.com/AlgorithmX2/Chisels-and-Bits/issues/251)
- Extended Vertex Format checker to include Forge Pipeline as well as optifine.
- New Setting, "Black List Ticking Blocks"
- Add Vivecraft compatibility setting ([#270 Add Vivecraft compatibility](https://github.com/AlgorithmX2/Chisels-and-Bits/pull/270)) - Thanks to mracsys
- Failing to calculate an ItemStack should result in dropping nothing, not crashing. ( [Fixes #272 Veinmined chisel and bits](https://github.com/AlgorithmX2/Chisels-and-Bits/issues/272) )
- If Player is null, key context is invalid. ( [#269 Crash when keybind conflicts](https://github.com/AlgorithmX2/Chisels-and-Bits/issues/269) )
- Default hardness should be stone ( [#259 BlockBitInfo incorrect hardness and resistance](https://github.com/AlgorithmX2/Chisels-and-Bits/issues/259) )
- Require newer build of forge, and update config Gui to use createConfigGui.
- Fixed broken textures of models generated with the JsonModelExport command - Thanks Phylogeny
MCMP2 2.0.0 Support

#### [CodeChicken Lib 1.11.2-2.7.0.268](https://github.com/TheCBProject/CodeChickenLib/commits/master)

- [Old cruft cleanup, Changes and J8 fancies to IItemRenderer.](https://github.com/TheCBProject/CodeChickenLib/commit/5644496d6b567767078da4ba882ce489e6b7fe28)

#### [Computronics 1.6.4](http://wiki.vex.tty.sh/wiki:computronics#may_2017_1710_189_194_1102_1112)

##### Changed:

- Camera Upgrade recipe.

##### Fixed
- Camera Upgrade recipe.
- Chat Box not respecting range when listening to messages.
- Some cards and upgrades working with a minor offset.
- Items that shouldn't have energy buffers having energy buffers.
- Sound Card not using any energy.
- Camera not returning quite the correct distance.
- Particle Card and Turtle having no range limit.

#### [industrialforegoing-1.11.2-0.2.2-BETA-9](https://github.com/Buuz135/Industrial-Foregoing/commit/b657105c33828927034fdfdc6e2a8ec42eaf9f80)

- Improved Tree Chopping in the Plant Recolector

#### [Inventory Tweaks 1.62](https://minecraft.curseforge.com/projects/inventory-tweaks/files/2431301)
- Fixed the meaning of `enableConfigLoadedMesssage`.
- Fixes issues arising from tree files with large numbers of entries.
- Various auto-refill fixes.
- Made the mod slightly better at not slowing down Minecraft loading as much.

#### [JustEnoughResources-1.11.2-0.6.5.9](https://minecraft.curseforge.com/projects/just-enough-resources-jer/files/2432130)

- [update jei dep](https://github.com/way2muchnoise/JustEnoughResources/commit/6a6eeb3a0b2f4f50fa0662d6e6c861739dd05450)

#### [morebees-1.11.2-1.4.1](https://minecraft.curseforge.com/projects/more-bees/files/2430816)
##### Added:
- Config to disable iridium bees

##### Fixed:
- Nickel, platinum and iridium localization
- Made compatible with Tech Reborn (and hopeful other mods in the process)

#### [MTLib-2.0.3](https://minecraft.curseforge.com/projects/mtlib/files/2431147)
- Updated to the new JEI api

#### [Refined Storage 1.4.12](https://minecraft.curseforge.com/projects/refined-storage/files/2431879)

- Updated Forge to 2315
- Updated JEI to 4.5.0
- Removed Collosal Chests integration
- You can now shift click items from the Grid crafting slots to the player inventory when the Grid is disconnected
- Added Korean translation
- Fixed error logs when watching a Controller when a network changes
- Implemented block update throttling when network turns on and off

#### [TombManyGraves2-1.11.2-3.0.9](https://minecraft.curseforge.com/projects/tomb-many-graves-2/files/2431402)

##### Fixed:

- Baubles disappearing with Cosmetic Armor installed (completely my bad guys, sorry about that)
- Deletion of items if a suitable location for the grave is not found no longer happens

##### Added:

-
    Partial compatibility with Cyberware. If a player has the defibrillator installed (and has the necessary power stored up), a grave will not form when revived. Note: the grave does not (and will not) store Cyberware components within it upon death - the components don't drop from a normal death and I don't want to overstep Flaxbeard's vision for the mod.

#### [Translocators 1.11.2-2.2.0.59](https://minecraft.curseforge.com/projects/translocators-1-8/files/2405963)

- [Reflect some CCL changes](https://github.com/TheCBProject/Translocators/commit/7945be0635371836e5ebbb46e3c3da5789358f2a)
- [Fix Inability to place attachements, Fix redstone output.](https://github.com/TheCBProject/Translocators/commit/6489a22d4a30f5254057c036d67dc5a76d7998f0)

#### [TTFR-1.11.2-1.7.4 (BetterFonts)](https://minecraft.curseforge.com/projects/truetype-font-replacement/files/2430867)

- you can now select the font name in the config gui

### Changes

- Fix lapis ore generation
- Update Ore Generation Documentation.
- **HOTFIX** correct version of SophisticatedWolves from 1.10.2 to 1.11.2 for all current and previous versions of Farscapes
