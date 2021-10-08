	object_const_def
	const SILPHCO9F_KANTO_NURSE
	const SILPHCO9F_KANTO_ROCKET1
	const SILPHCO9F_KANTO_SCIENTIST
	const SILPHCO9F_KANTO_ROCKET2

SilphCo9F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo9F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  0, SILPH_CO_10F, 1
	warp_event 16,  0, SILPH_CO_8F, 1
	warp_event 18,  0, SILPH_CO_ELEVATOR, 1
	warp_event  9,  3, SILPH_CO_3F, 8
	warp_event 17, 15, SILPH_CO_5F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3, 14, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  4, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 21, 13, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 13, 16, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
