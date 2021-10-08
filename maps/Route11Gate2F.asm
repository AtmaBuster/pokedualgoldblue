	object_const_def
	const ROUTE11GATE2F_KANTO_YOUNGSTER
	const ROUTE11GATE2F_KANTO_SCIENTIST

Route11Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route11Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, ROUTE_11_GATE_1F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  6, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
