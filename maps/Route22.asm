	object_const_def

Route22_MapScripts:
	def_scene_scripts

	def_callbacks

Route22_MapEvents:
	db 0, 0 ; filler

	def_warp_events
IF DEF(_GOLD)
	warp_event  8,  5, VICTORY_ROAD_GATE, 1
ELIF DEF(_BLUE)
	warp_event  8,  5, ROUTE_22_GATE, 1
ENDC

	def_coord_events

	def_bg_events

	def_object_events
