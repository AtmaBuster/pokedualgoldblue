	object_const_def
	const SILPHCO2F_KANTO_ERIKA
	const SILPHCO2F_KANTO_SCIENTIST1
	const SILPHCO2F_KANTO_SCIENTIST2
	const SILPHCO2F_KANTO_ROCKET1
	const SILPHCO2F_KANTO_ROCKET2

SilphCo2F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24,  0, SILPH_CO_1F, 3
	warp_event 26,  0, SILPH_CO_3F, 1
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event  3,  3, SILPH_CO_3F, 7
	warp_event 13,  3, SILPH_CO_8F, 5
	warp_event 27, 15, SILPH_CO_8F, 6
	warp_event  9, 15, SILPH_CO_6F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  1, SPRITE_KANTO_ERIKA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5, 12, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 24, 13, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 16, 11, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 24,  7, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
