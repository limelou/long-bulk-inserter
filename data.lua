require("items.item")
require("entities.entity")
require("entities.remnant")
require("entities.explosion")
require("entities.particle")
require("recipes.recipe")
require("technologies.technology")

local inserter = data.raw["inserter"]["long-handed-inserter"]
if inserter and not mods["factoriopedia-extended"] then
	inserter.next_upgrade = "long-handed-bulk-inserter"
end

