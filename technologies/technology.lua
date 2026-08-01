for _, tech in pairs(data.raw.technology) do
    if tech.name == "bulk-inserter" then
        table.insert(tech.effects, 2, {
            type = "unlock-recipe",
            recipe = "long-handed-bulk-inserter"
        })
    end
end