local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
  {
    type = "item",
    name = "long-handed-bulk-inserter",
    icon = "__Long-handed_Bulk__/graphics/icon.png",
    subgroup = "inserter",
	color_hint = { text = "P" },
    order = "e[long-handed-bulk-inserter]",
	inventory_move_sound = item_sounds.inserter_inventory_move,
    pick_sound = item_sounds.inserter_inventory_pickup,
    drop_sound = item_sounds.inserter_inventory_move,
    place_result = "long-handed-bulk-inserter",
    stack_size = 50,
    weight = 20*kg
  }
})
