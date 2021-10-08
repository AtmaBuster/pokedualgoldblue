	object_const_def
	const ROUTE2GATE_KANTO_SCIENTIST
	const ROUTE2GATE_KANTO_YOUNGSTER

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_2, 4
	warp_event  5,  0, ROUTE_2, 4
	warp_event  4,  7, ROUTE_2, 5
	warp_event  5,  7, ROUTE_2, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  4, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
