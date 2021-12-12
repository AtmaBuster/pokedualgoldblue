	object_const_def
	const ROUTE8GATE_GUARD

Route8Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route8Gate_MapEvents:
	def_warp_events
	warp_event  0,  3, ROUTE_8, 1
	warp_event  0,  4, ROUTE_8, 2
	warp_event  5,  3, ROUTE_8, 3
	warp_event  5,  4, ROUTE_8, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  1, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
