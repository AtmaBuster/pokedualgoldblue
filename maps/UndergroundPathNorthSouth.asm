	object_const_def

UndergroundPathNorthSouth_MapScripts:
	def_scene_scripts

	def_callbacks

UndergroundPathNorthSouth_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  4, UNDERGROUND_PATH_ROUTE_5, 3
	warp_event  2, 41, UNDERGROUND_PATH_ROUTE_6, 3

	def_coord_events

	def_bg_events

	def_object_events
