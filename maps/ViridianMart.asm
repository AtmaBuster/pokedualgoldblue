	object_const_def
	const VIRIDIANMART_KANTO_CLERK
	const VIRIDIANMART_KANTO_YOUNGSTER
	const VIRIDIANMART_COOLTRAINER_M

ViridianMart_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIRIDIAN_CITY, 2
	warp_event  4,  7, VIRIDIAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  5, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
