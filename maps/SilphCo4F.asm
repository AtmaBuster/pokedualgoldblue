	object_const_def
	const SILPHCO4F_SILPH_WORKER
	const SILPHCO4F_KANTO_ROCKET1
	const SILPHCO4F_KANTO_SCIENTIST
	const SILPHCO4F_KANTO_ROCKET2
	const SILPHCO4F_POKE_BALL1
	const SILPHCO4F_POKE_BALL2
	const SILPHCO4F_POKE_BALL3

SilphCo4F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24,  0, SILPH_CO_3F, 2
	warp_event 26,  0, SILPH_CO_5F, 2
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event 11,  7, SILPH_CO_10F, 4
	warp_event 17,  3, SILPH_CO_6F, 4
	warp_event  3, 15, SILPH_CO_10F, 5
	warp_event 17, 11, SILPH_CO_10F, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  9, 14, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 14,  6, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 26, 10, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  3,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
