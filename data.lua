local Constants = require("constants")


--Add new eletric pole
data:extend({
    {
        type = "electric-pole",
        name = "large-wooden-electric-pole",
        icon = Constants.AssetModName .. "/graphics/icon/large-wooden-electric-pole.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
        minable = {hardness = 0.2, mining_time = 0.5, result = "large-wooden-electric-pole"},
        max_health = 100,
        corpse = "small-remnants",
        collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
        drawing_box = {{-0.5, -2.3}, {0.5, 0.5}},
        maximum_wire_distance = 20,
        supply_area_distance = 0,
        vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
        track_coverage_during_build_by_moving = true,
        fast_replaceable_group = "electric-pole",
        pictures =
        {
            filename = Constants.AssetModName .. "/graphics/entity/large-wooden-electric-pole.png",
            priority = "extra-high",
            width = 123,
            height = 124,
            direction_count = 4,
            shift = {1.4, -1.1}
        },
        connection_points =
        {
            {
                shadow =
                {
                    copper = {2.7, 0},
                    red = {2.3, 0},
                    green = {3.1, 0}
                },
                wire =
                {
                    copper = {0, -2.7},
                    red = {-0.4,-2.7},
                    green = {0.4,-2.7}
                }
            },
            {
                shadow =
                {
                    copper = {2.7, -0.05},
                    red = {2.2, -0.35},
                    green = {3, 0.3}
                },
                wire =
                {
                    copper = {0, -2.7},
                    red = {-0.3, -2.9},
                    green = {0.2, -2.6}
                }
            },
            {
                shadow =
                {
                    copper = {2.7, 0.06},
                    red = {2.55, -0.3},
                    green = {2.5, 0.55}
                },
                wire =
                {
                    copper = {0, -2.7},
                    red = {0, -2.95},
                    green = {0, -2.5}
                }
            },
            {
                shadow =
                {
                    copper = {2.55, 0.2},
                    red = {2.85, -0.15},
                    green = {2, 0.45}
                },
                wire =
                {
                    copper = {0, -2.7},
                    red = {0.3, -2.9},
                    green = {-0.3, -2.5}
                }
            }
        },
        radius_visualisation_picture =
        {
            filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
            width = 12,
            height = 12,
            priority = "extra-high-no-scale"
        }
    },

    {
        type = "item",
        name = "large-wooden-electric-pole",
        icon = Constants.AssetModName .. "/graphics/icon/large-wooden-electric-pole.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "energy-pipe-distribution",
        order = "a[energy]-b[small-electric-pole]",
        place_result = "large-wooden-electric-pole",
        fuel_category = "chemical",
        fuel_value = "4MJ",
        stack_size = 50
    },

    {
        type = "recipe",
        name = "large-wooden-electric-pole",
        ingredients =
        {
          {"wood", 2},
          {"copper-cable", 2}
        },
        result = "large-wooden-electric-pole",
        result_count = 1
      }
})



--change small electric pole to use the icon that suits it
data.raw["electric-pole"]["small-electric-pole"].icon = Constants.AssetModName .. "/graphics/icon/small-electric-pole.png"
data.raw["electric-pole"]["small-electric-pole"].icon_size = 102

data.raw["item"]["small-electric-pole"].icon = Constants.AssetModName .. "/graphics/icon/small-electric-pole.png"
data.raw["item"]["small-electric-pole"].icon_size = 102
