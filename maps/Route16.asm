	object_const_def
	const ROUTE16_BIKER1
	const ROUTE16_BIKER2
	const ROUTE16_BIKER3
	const ROUTE16_BIKER4
	const ROUTE16_BIKER5
	const ROUTE16_BIKER6
	const ROUTE16_KANTO_SNORLAX

Route16_MapScripts:
	def_scene_scripts

	def_callbacks

Route16_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 10, ROUTE_16_GATE_1F, 1
	warp_event 17, 11, ROUTE_16_GATE_1F, 2
	warp_event 24, 10, ROUTE_16_GATE_1F, 3
	warp_event 24, 11, ROUTE_16_GATE_1F, 4
	warp_event 17,  4, ROUTE_16_GATE_1F, 5
	warp_event 17,  5, ROUTE_16_GATE_1F, 6
	warp_event 24,  4, ROUTE_16_GATE_1F, 7
	warp_event 24,  5, ROUTE_16_GATE_1F, 8
	warp_event  7,  5, ROUTE_16_FLY_HOUSE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 17, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 14, 13, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 11, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  9, 11, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  6, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  3, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 26, 10, SPRITE_KANTO_SNORLAX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
