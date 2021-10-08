	object_const_def
	const MUSEUM2F_KANTO_YOUNGSTER
	const MUSEUM2F_KANTO_GRAMPS
	const MUSEUM2F_KANTO_SCIENTIST
	const MUSEUM2F_BRUNETTE_GIRL
	const MUSEUM2F_HIKER

Museum2F_MapScripts:
	def_scene_scripts

	def_callbacks

Museum2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, MUSEUM_1F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  7, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  0,  5, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  7,  5, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  5, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 12,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
