	object_const_def

Route15_MapScripts:
	def_scene_scripts

	def_callbacks

Route15_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  8, ROUTE_15_GATE_1F, 1
	warp_event  7,  9, ROUTE_15_GATE_1F, 2
	warp_event 14,  8, ROUTE_15_GATE_1F, 3
	warp_event 14,  9, ROUTE_15_GATE_1F, 4

	def_coord_events

	def_bg_events

	def_object_events
