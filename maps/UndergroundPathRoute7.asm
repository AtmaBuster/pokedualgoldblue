	object_const_def
	const UNDERGROUNDPATHROUTE7_POKEFAN_M

UndergroundPathRoute7_MapScripts:
	def_scene_scripts

	def_callbacks

UndergroundPathRoute7_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_7, 5
	warp_event  4,  7, ROUTE_7, 5
	warp_event  4,  4, UNDERGROUND_PATH_WEST_EAST, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
