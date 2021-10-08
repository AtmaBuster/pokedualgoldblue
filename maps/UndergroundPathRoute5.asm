	object_const_def
	const UNDERGROUNDPATHROUTE5_LITTLE_GIRL

UndergroundPathRoute5_MapScripts:
	def_scene_scripts

	def_callbacks

UndergroundPathRoute5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_5, 4
	warp_event  4,  7, ROUTE_5, 4
	warp_event  4,  4, UNDERGROUND_PATH_NORTH_SOUTH, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
