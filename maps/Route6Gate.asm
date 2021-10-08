	object_const_def
	const ROUTE6GATE_GUARD

Route6Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route6Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, ROUTE_6, 3
	warp_event  4,  5, ROUTE_6, 3
	warp_event  3,  0, ROUTE_6, 2
	warp_event  4,  0, ROUTE_6, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
