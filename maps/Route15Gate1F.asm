	object_const_def

Route15Gate1F_MapScripts:
	def_scene_scripts

	def_callbacks

Route15Gate1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_15, 1
	warp_event  0,  5, ROUTE_15, 2
	warp_event  7,  4, ROUTE_15, 3
	warp_event  7,  5, ROUTE_15, 4
	warp_event  6,  8, ROUTE_15_GATE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
