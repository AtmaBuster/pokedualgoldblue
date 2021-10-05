	object_const_def

VictoryRoad1F_MapScripts:
	def_scene_scripts

	def_callbacks

VictoryRoad1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, ROUTE_23, 3
	warp_event  9, 17, ROUTE_23, 3
	warp_event  1,  1, VICTORY_ROAD_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
