	object_const_def

Route5Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route5Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, ROUTE_5, 3
	warp_event  4,  5, ROUTE_5, 3
	warp_event  3,  0, ROUTE_5, 2
	warp_event  4,  0, ROUTE_5, 1

	def_coord_events

	def_bg_events

	def_object_events
