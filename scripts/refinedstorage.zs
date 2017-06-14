# refinedstorage.zs script

import minetweaker.item.IItemStack;

// Remove blockMetal oredict entries because they cause bug.
// See: https://github.com/Beyond-Reality/Beyond-Realty-Farscapes/issues/18
// Not needed anymore
// var item = null as IItemStack;
// for item in <ore:blockMetal>.items {
//   <ore:blockMetal>.remove(item);
// }
