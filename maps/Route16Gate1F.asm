	object_const_def
	const ROUTE16GATE1F_GUARD
	const ROUTE16GATE1F_GAMBLER

Route16Gate1F_MapScripts:
	def_scene_scripts

	def_callbacks

Route16Gate1F_MapEvents:
	def_warp_events
	warp_event  0,  8, ROUTE_16, 1
	warp_event  0,  9, ROUTE_16, 2
	warp_event  7,  8, ROUTE_16, 3
	warp_event  7,  9, ROUTE_16, 3
	warp_event  0,  2, ROUTE_16, 5
	warp_event  0,  3, ROUTE_16, 6
	warp_event  7,  2, ROUTE_16, 7
	warp_event  7,  3, ROUTE_16, 8
	warp_event  6, 12, ROUTE_16_GATE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  5, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  3, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
