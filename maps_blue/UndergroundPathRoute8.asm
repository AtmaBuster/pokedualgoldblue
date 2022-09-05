	object_const_def
	const UNDERGROUNDPATHROUTE8_GIRL

UndergroundPathRoute8_MapScripts:
	def_scene_scripts

	def_callbacks

UndergroundPathRoute8_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "The dept. store"
	line "in CELADON has a"
	cont "great selection!"
	done

UndergroundPathRoute8_MapEvents:
	def_warp_events
	warp_event  3,  7, ROUTE_8, 5
	warp_event  4,  7, ROUTE_8, 5
	warp_event  4,  4, UNDERGROUND_PATH_WEST_EAST, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  4, SPRITE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UndergroundPathRoute8_GirlScript, -1
