	object_const_def
	const CELADONHOTEL_KANTO_GRANNY
	const CELADONHOTEL_KANTO_BEAUTY
	const CELADONHOTEL_KANTO_SUPER_NERD

CeladonHotel_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonHotel_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CELADON_CITY, 13
	warp_event  4,  7, CELADON_CITY, 13

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_KANTO_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  4, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  4, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
