	object_const_def
	const CELADONDINER_COOK
	const CELADONDINER_MIDDLE_AGED_WOMAN
	const CELADONDINER_POKEFAN_M
	const CELADONDINER_FISHER
	const CELADONDINER_KANTO_GYM_GUIDE

CeladonDiner_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDiner_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CELADON_CITY, 11
	warp_event  4,  7, CELADON_CITY, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  5, SPRITE_COOK, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  7,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  0,  1, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
