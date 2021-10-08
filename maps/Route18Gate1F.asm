	object_const_def
	const ROUTE18GATE1F_GUARD

Route18Gate1F_MapScripts:
	def_scene_scripts

	def_callbacks

Route18Gate1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_18, 1
	warp_event  0,  5, ROUTE_18, 2
	warp_event  7,  4, ROUTE_18, 3
	warp_event  7,  5, ROUTE_18, 4
	warp_event  6,  8, ROUTE_18_GATE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
