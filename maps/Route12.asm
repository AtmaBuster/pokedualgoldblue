	object_const_def
	const ROUTE12_KANTO_SNORLAX
	const ROUTE12_FISHER1
	const ROUTE12_FISHER2
	const ROUTE12_COOLTRAINER_M
	const ROUTE12_KANTO_SUPER_NERD
	const ROUTE12_FISHER3
	const ROUTE12_FISHER4
	const ROUTE12_FISHER5
	const ROUTE12_POKE_BALL1
	const ROUTE12_POKE_BALL2

Route12_MapScripts:
	def_scene_scripts

	def_callbacks

Route12_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 15, ROUTE_12_GATE_1F, 1
	warp_event 11, 15, ROUTE_12_GATE_1F, 2
	warp_event 10, 21, ROUTE_12_GATE_1F, 3
	warp_event 11, 77, ROUTE_12_SUPER_ROD_HOUSE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10, 62, SPRITE_KANTO_SNORLAX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 14, 31, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  5, 39, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 11, 92, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 14, 76, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 12, 40, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  9, 52, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  6, 87, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 14, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5, 89, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
