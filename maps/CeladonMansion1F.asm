	object_const_def
	const CELADONMANSION1F_MONSTER1
	const CELADONMANSION1F_KANTO_GRANNY
	const CELADONMANSION1F_FAIRY
	const CELADONMANSION1F_MONSTER2

CeladonMansion1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansion1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, CELADON_CITY, 3
	warp_event  5, 11, CELADON_CITY, 3
	warp_event  4,  0, CELADON_CITY, 5
	warp_event  7,  1, CELADON_MANSION_2F, 2
	warp_event  2,  1, CELADON_MANSION_2F, 3

	def_coord_events

	def_bg_events
	bg_event  4,  9, BGEVENT_READ, BGEvent

	def_object_events
	object_event  0,  5, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  5, SPRITE_KANTO_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  8, SPRITE_FAIRY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
