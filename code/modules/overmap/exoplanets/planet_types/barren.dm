/obj/effect/overmap/visitable/sector/exoplanet/barren
	name = "barren exoplanet"
	desc = "An exoplanet that couldn't hold its atmosphere."
	color = "#6c6c6c"
	planetary_area = /area/exoplanet/barren
	rock_colors = list(COLOR_BEIGE, COLOR_GRAY80, COLOR_BROWN)
	possible_themes = list(/datum/exoplanet_theme/mountains)
	map_generators = list(/datum/random_map/noise/exoplanet/barren, /datum/random_map/noise/ore/rich)
	ruin_tags_blacklist = RUIN_HABITAT|RUIN_WATER
	features_budget = 6
	surface_color = "#807d7a"
	water_color =    null
	water_material = null
	ice_material =   null
	weather_system = null
	has_trees = FALSE
	spawn_weight = 50	// These are pretty boring

/obj/effect/overmap/visitable/sector/exoplanet/barren/generate_flora(var/temperature)
	if(prob(10))
		flora_diversity = 1
	..()

/obj/effect/overmap/visitable/sector/exoplanet/barren/get_target_pressure()
	return ONE_ATMOSPHERE * 0.05

/obj/effect/overmap/visitable/sector/exoplanet/barren/generate_habitability()
	habitability_class =  HABITABILITY_BAD

/datum/random_map/noise/exoplanet/barren
	descriptor = "barren exoplanet"
	smoothing_iterations = 4
	land_type = /turf/exterior/barren
	flora_prob = 0.1
	large_flora_prob = 0
	fauna_prob = 0

/area/exoplanet/barren
	name = "\improper Planetary surface"
	ambience = list('sound/effects/wind/wind_2_1.ogg','sound/effects/wind/wind_2_2.ogg','sound/effects/wind/wind_3_1.ogg','sound/effects/wind/wind_4_1.ogg','sound/effects/wind/wind_4_2.ogg','sound/effects/wind/wind_5_1.ogg')
	base_turf = /turf/exterior/barren
	is_outside = OUTSIDE_YES
