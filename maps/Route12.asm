	object_const_def

Route12_MapScripts:
	def_scene_scripts

	def_callbacks

Route12_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 15, ROUTE_12_GATE_1F, 1
	warp_event 11, 15, ROUTE_12_GATE_1F, 2
	warp_event 10, 21, ROUTE_12_GATE_1F, 3
	warp_event 11, 77, ROUTE_12_SUPER_ROD_HOUSE, 1

	def_coord_events

	def_bg_events

	def_object_events
