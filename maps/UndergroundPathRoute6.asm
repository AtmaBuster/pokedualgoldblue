	object_const_def
	const UNDERGROUNDPATHROUTE6_GIRL

UndergroundPathRoute6_MapScripts:
	def_scene_scripts

	def_callbacks

UndergroundPathRoute6_GirlScript:
	jumptextfaceplayer .Text
.Text:
	text "People often lose"
	line "things in that"
	cont "UNDERGROUND PATH."
	done

UndergroundPathRoute6_MapEvents:
	def_warp_events
	warp_event  3,  7, ROUTE_6, 4
	warp_event  4,  7, ROUTE_6, 4
	warp_event  4,  4, UNDERGROUND_PATH_NORTH_SOUTH, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UndergroundPathRoute6_GirlScript, -1
