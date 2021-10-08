	object_const_def
	const SILPHCO10F_KANTO_ROCKET
	const SILPHCO10F_KANTO_SCIENTIST
	const SILPHCO10F_KANTO_ERIKA
	const SILPHCO10F_POKE_BALL1
	const SILPHCO10F_POKE_BALL2
	const SILPHCO10F_POKE_BALL3

SilphCo10F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo10F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  0, SILPH_CO_9F, 1
	warp_event 10,  0, SILPH_CO_11F, 1
	warp_event 12,  0, SILPH_CO_ELEVATOR, 1
	warp_event  9, 11, SILPH_CO_4F, 4
	warp_event 13, 15, SILPH_CO_4F, 6
	warp_event 13,  7, SILPH_CO_4F, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  9, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 10,  2, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  9, 15, SPRITE_KANTO_ERIKA, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
