	object_const_def
	const SILPHCO7F_SILPH_WORKER1
	const SILPHCO7F_SILPH_WORKER2
	const SILPHCO7F_SILPH_WORKER3
	const SILPHCO7F_KANTO_ERIKA
	const SILPHCO7F_KANTO_ROCKET1
	const SILPHCO7F_KANTO_SCIENTIST
	const SILPHCO7F_KANTO_ROCKET2
	const SILPHCO7F_KANTO_ROCKET3
	const SILPHCO7F_KANTO_BLUE
	const SILPHCO7F_POKE_BALL1
	const SILPHCO7F_POKE_BALL2

SilphCo7F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo7F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  0, SILPH_CO_8F, 2
	warp_event 22,  0, SILPH_CO_6F, 1
	warp_event 18,  0, SILPH_CO_ELEVATOR, 1
	warp_event  5,  7, SILPH_CO_11F, 4
	warp_event  5,  3, SILPH_CO_3F, 9
	warp_event 21, 15, SILPH_CO_5F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  5, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 13, 13, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  7, 10, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 10,  8, SPRITE_KANTO_ERIKA, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 13,  1, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  2, 13, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 20,  2, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 19, 14, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  3,  7, SPRITE_KANTO_BLUE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 24, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
