	object_const_def
	const CELADONMART3F_KANTO_CLERK
	const CELADONMART3F_GAMEBOY_KID1
	const CELADONMART3F_GAMEBOY_KID2
	const CELADONMART3F_GAMEBOY_KID3
	const CELADONMART3F_LITTLE_BOY

CeladonMart3F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMart3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  1, CELADON_MART_4F, 1
	warp_event 16,  1, CELADON_MART_2F, 2
	warp_event  1,  1, CELADON_MART_ELEVATOR, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 16,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  7,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  5, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
