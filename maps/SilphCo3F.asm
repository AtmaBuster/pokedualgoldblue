	object_const_def
	const SILPHCO3F_SILPH_WORKER
	const SILPHCO3F_KANTO_ROCKET
	const SILPHCO3F_KANTO_SCIENTIST
	const SILPHCO3F_POKE_BALL

SilphCo3F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 26,  0, SILPH_CO_2F, 2
	warp_event 24,  0, SILPH_CO_4F, 1
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event 23, 11, SILPH_CO_3F, 10
	warp_event  3,  3, SILPH_CO_5F, 6
	warp_event  3, 15, SILPH_CO_5F, 7
	warp_event 27,  3, SILPH_CO_2F, 4
	warp_event  3, 11, SILPH_CO_9F, 4
	warp_event 11, 11, SILPH_CO_7F, 5
	warp_event 27, 15, SILPH_CO_3F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event 24,  8, SPRITE_SILPH_WORKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 20,  7, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  7,  9, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  8,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
