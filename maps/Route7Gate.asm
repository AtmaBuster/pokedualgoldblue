	object_const_def

Route7Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route7Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  3, ROUTE_7, 4
	warp_event  0,  4, ROUTE_7, 4
	warp_event  5,  3, ROUTE_7, 1
	warp_event  5,  4, ROUTE_7, 2

	def_coord_events

	def_bg_events

	def_object_events
