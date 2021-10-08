	object_const_def

Route7_MapScripts:
	def_scene_scripts

	def_callbacks

Route7_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18,  9, ROUTE_7_GATE, 3
	warp_event 18, 10, ROUTE_7_GATE, 4
	warp_event 11,  9, ROUTE_7_GATE, 1
	warp_event 11, 10, ROUTE_7_GATE, 2
	warp_event  5, 13, UNDERGROUND_PATH_ROUTE_7, 1

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, BGEvent

	def_object_events
