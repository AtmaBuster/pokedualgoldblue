	object_const_def
	const ROUTE5GATE_GUARD

Route5Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route5Gate_MapEvents:
	def_warp_events
	warp_event  3,  5, ROUTE_5, 3
	warp_event  4,  5, ROUTE_5, 3
	warp_event  3,  0, ROUTE_5, 2
	warp_event  4,  0, ROUTE_5, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
