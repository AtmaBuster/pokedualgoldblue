	object_const_def

Route23_MapScripts:
	def_scene_scripts

	def_callbacks

Route23_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 139, ROUTE_22_GATE, 3
	warp_event  8, 139, ROUTE_22_GATE, 4
	warp_event  4, 31, VICTORY_ROAD_1F, 1
	warp_event 14, 31, VICTORY_ROAD_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
