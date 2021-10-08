	object_const_def
	const VIRIDIANNICKNAMEHOUSE_BALDING_GUY
	const VIRIDIANNICKNAMEHOUSE_LITTLE_GIRL
	const VIRIDIANNICKNAMEHOUSE_KANTO_BIRD
	const VIRIDIANNICKNAMEHOUSE_CLIPBOARD

ViridianNicknameHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianNicknameHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 4
	warp_event  3,  7, VIRIDIAN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_BALDING_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  4, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  5, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  0, SPRITE_CLIPBOARD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
