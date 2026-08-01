local particle_animations = require("__base__.prototypes.particle-animations")
local sounds = require("__base__.prototypes.entity.sounds")

local small_smoke_trigger_effect = function()
  return
  {
    type = "create-trivial-smoke",
    smoke_name = "smoke-explosion-particle-small",
    starting_frame_deviation = 0,
    offset_deviation = {{-0.03, -0.03}, {0.03, 0.03}},
    speed_from_center = nil
  }
end

local default_ended_in_water_trigger_effect = function()
  return
  {

    {
      type = "create-particle",
      probability = 1,
      affects_target = false,
      show_in_tooltip = false,
      particle_name = "tintable-water-particle",
      apply_tile_tint = "secondary",
      offset_deviation = { { -0.05, -0.05 }, { 0.05, 0.05 } },
      initial_height = 0,
      initial_height_deviation = 0.02,
      initial_vertical_speed = 0.05,
      initial_vertical_speed_deviation = 0.05,
      speed_from_center = 0.01,
      speed_from_center_deviation = 0.006,
      frame_speed = 1,
      frame_speed_deviation = 0,
      tail_length = 2,
      tail_length_deviation = 1,
      tail_width = 3
    },
    {
      type = "create-particle",
      repeat_count = 10,
      repeat_count_deviation = 6,
      probability = 0.03,
      affects_target = false,
      show_in_tooltip = false,
      particle_name = "tintable-water-particle",
      apply_tile_tint = "primary",
      offsets =
      {
        { 0, 0 },
        { 0.01563, -0.09375 },
        { 0.0625, 0.09375 },
        { -0.1094, 0.0625 }
      },
      offset_deviation = { { -0.2969, -0.1992 }, { 0.2969, 0.1992 } },
      initial_height = 0,
      initial_height_deviation = 0.02,
      initial_vertical_speed = 0.053,
      initial_vertical_speed_deviation = 0.005,
      speed_from_center = 0.02,
      speed_from_center_deviation = 0.006,
      frame_speed = 1,
      frame_speed_deviation = 0,
      tail_length = 9,
      tail_length_deviation = 0,
      tail_width = 1
    },
    {
      type = "play-sound",
      sound = sounds.small_splash
    }
  }

end

function shadowtint()
	return {r = 0, g = 0, b = 0}
end

data:extend({
	{
		type = "optimized-particle",
		name = "lhb-inserter-metal-particle-small",
		
		life_time = 60 * 15,

		render_layer = "projectile",
		render_layer_when_on_ground = "corpse",

		regular_trigger_effect_frequency = 2,
		ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),

		pictures = particle_animations.get_metal_particle_small_pictures({tint = {0.87, 0.447, 0.989, 1}}),
		shadows = particle_animations.get_metal_particle_small_pictures({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
	},
	{
		type = "optimized-particle",
		name = "lhb-inserter-metal-particle-medium",

		life_time = 60 * 15,

		render_layer = "object",
		render_layer_when_on_ground = "corpse",

		regular_trigger_effect_frequency = 2,
		regular_trigger_effect = small_smoke_trigger_effect(),
		ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),

		pictures = particle_animations.get_metal_particle_medium_pictures({tint = {0.87, 0.447, 0.989, 1}}),
		shadows = particle_animations.get_metal_particle_medium_pictures({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
	},
})
