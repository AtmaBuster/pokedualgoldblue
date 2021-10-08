	object_const_def
	const SILPHCO11F_SILPH_PRESIDENT
	const SILPHCO11F_KANTO_BEAUTY
	const SILPHCO11F_GIOVANNI
	const SILPHCO11F_KANTO_ROCKET1
	const SILPHCO11F_KANTO_ROCKET2

SilphCo11F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo11F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  0, SILPH_CO_10F, 2
	warp_event 13,  0, SILPH_CO_ELEVATOR, 1
	warp_event  5,  5, SILPH_CO_11F, 10 ; LAST_MAP?
	warp_event  3,  2, SILPH_CO_7F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  5, SPRITE_SILPH_PRESIDENT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 10,  5, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  9, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  3, 16, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 15,  9, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
