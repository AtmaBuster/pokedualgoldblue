	object_const_def

Route6_MapScripts:
	def_scene_scripts

	def_callbacks

Route6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  1, ROUTE_6_GATE, 3
	warp_event 10,  1, ROUTE_6_GATE, 3
	warp_event 10,  7, ROUTE_6_GATE, 1
	warp_event 17, 13, UNDERGROUND_PATH_ROUTE_6, 1

	def_coord_events

	def_bg_events

	def_object_events
