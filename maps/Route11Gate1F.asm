	object_const_def
	const ROUTE11GATE1F_GUARD

Route11Gate1F_MapScripts:
	def_scene_scripts

	def_callbacks

Route11Gate1F_MapEvents:
	def_warp_events
	warp_event  0,  4, ROUTE_11, 1
	warp_event  0,  5, ROUTE_11, 2
	warp_event  7,  4, ROUTE_11, 3
	warp_event  7,  5, ROUTE_11, 4
	warp_event  6,  8, ROUTE_11_GATE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_GUARD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
