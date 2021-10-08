	object_const_def
	const SAFFRONMART_KANTO_CLERK
	const SAFFRONMART_KANTO_SUPER_NERD
	const SAFFRONMART_COOLTRAINER_F

SaffronMart_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SAFFRON_CITY, 5
	warp_event  4,  7, SAFFRON_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  2, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
