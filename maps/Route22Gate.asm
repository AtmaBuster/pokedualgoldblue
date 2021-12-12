	object_const_def
	const ROUTE22GATE_GUARD

Route22Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route22Gate_MapEvents:
	def_warp_events
	warp_event  4,  7, ROUTE_22, 0
	warp_event  5,  7, ROUTE_22, 0
	warp_event  4,  0, ROUTE_23, 1
	warp_event  5,  0, ROUTE_23, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
