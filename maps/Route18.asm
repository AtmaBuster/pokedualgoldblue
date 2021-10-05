	object_const_def

Route18_MapScripts:
	def_scene_scripts

	def_callbacks

Route18_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33,  8, ROUTE_18_GATE_1F, 1
	warp_event 33,  9, ROUTE_18_GATE_1F, 2
	warp_event 40,  8, ROUTE_18_GATE_1F, 3
	warp_event 40,  9, ROUTE_18_GATE_1F, 4

	def_coord_events

	def_bg_events

	def_object_events
