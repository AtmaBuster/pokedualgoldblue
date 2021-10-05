	object_const_def

Route8_MapScripts:
	def_scene_scripts

	def_callbacks

Route8_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  9, ROUTE_8_GATE, 1
	warp_event  1, 10, ROUTE_8_GATE, 2
	warp_event  8,  9, ROUTE_8_GATE, 3
	warp_event  8, 10, ROUTE_8_GATE, 4
	warp_event 13,  3, UNDERGROUND_PATH_ROUTE_8, 1

	def_coord_events

	def_bg_events

	def_object_events
