-- add technologies here
local waterFreezingTech = {
    type = "technology",
    name = "freeze-water-in-radiator",
    icon_size = 128,
    icon = "__space-exploration-graphics__/graphics/technology/radiator-2.png",
    prerequisites = { "se-space-radiator-1", "se-processing-water-ice" },
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "water-freezing"
        }
    },
    unit =
    {
        count = 75,
        ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "se-rocket-science-pack", 1 }, { "space-science-pack", 1 } },
        time = 60
    },
    order = "ab"
}

local methaneFreezingTech = {
    type = "technology",
    name = "freeze-methane-in-radiator",
    icon_size = 128,
    icon = "__space-exploration-graphics__/graphics/technology/radiator-2.png",
    prerequisites = { "se-space-radiator-1", "se-processing-methane-ice" },
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "methane-freezing"
        }
    },
    unit =
    {
        count = 75,
        ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "se-rocket-science-pack", 1 }, { "space-science-pack", 1 } },
        time = 60
    },
    order = "ab"
}

local waterFreezingRecipe = {
    type = "recipe",
    name = "water-freezing",
    category = "space-radiator",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
        { type = "fluid", name = "water", amount = 100 }
    },
    results =
    {
        { type = "item", name = "se-water-ice", amount = 1 }
    }
}

local methaneFreezingRecipe = {
    type = "recipe",
    name = "methane-freezing",
    category = "space-radiator",
    enabled = false,
    energy_required = 4,
    ingredients =
    {
        { type = "fluid", name = "se-methane-gas", amount = 10 }
    },
    results =
    {
        { type = "item", name = "se-methane-ice", amount = 1 }
    }
}

data:extend { waterFreezingTech, methaneFreezingTech, waterFreezingRecipe, methaneFreezingRecipe }
