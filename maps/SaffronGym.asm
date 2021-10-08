	object_const_def
	const SAFFRONGYM_GIRL
	const SAFFRONGYM_CHANNELER1
	const SAFFRONGYM_KANTO_YOUNGSTER1
	const SAFFRONGYM_CHANNELER2
	const SAFFRONGYM_KANTO_YOUNGSTER2
	const SAFFRONGYM_CHANNELER3
	const SAFFRONGYM_KANTO_YOUNGSTER3
	const SAFFRONGYM_KANTO_YOUNGSTER4
	const SAFFRONGYM_KANTO_GYM_GUIDE

SaffronGym_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, SAFFRON_CITY, 3
	warp_event  9, 17, SAFFRON_CITY, 3
	warp_event  1,  3, SAFFRON_GYM, 23
	warp_event  5,  3, SAFFRON_GYM, 16
	warp_event  1,  5, SAFFRON_GYM, 19
	warp_event  5,  5, SAFFRON_GYM, 9
	warp_event  1,  9, SAFFRON_GYM, 28
	warp_event  5,  9, SAFFRON_GYM, 17
	warp_event  1, 11, SAFFRON_GYM, 6
	warp_event  5, 11, SAFFRON_GYM, 14
	warp_event  1, 15, SAFFRON_GYM, 24
	warp_event  5, 15, SAFFRON_GYM, 31
	warp_event  1, 17, SAFFRON_GYM, 18
	warp_event  5, 17, SAFFRON_GYM, 10
	warp_event  9,  3, SAFFRON_GYM, 27
	warp_event 11,  3, SAFFRON_GYM, 4
	warp_event  9,  5, SAFFRON_GYM, 8
	warp_event 11,  5, SAFFRON_GYM, 13
	warp_event 11, 11, SAFFRON_GYM, 5
	warp_event 11, 15, SAFFRON_GYM, 32
	warp_event 15,  3, SAFFRON_GYM, 25
	warp_event 19,  3, SAFFRON_GYM, 29
	warp_event 15,  5, SAFFRON_GYM, 3
	warp_event 19,  5, SAFFRON_GYM, 11
	warp_event 15,  9, SAFFRON_GYM, 21
	warp_event 19,  9, SAFFRON_GYM, 30
	warp_event 15, 11, SAFFRON_GYM, 15
	warp_event 19, 11, SAFFRON_GYM, 7
	warp_event 15, 15, SAFFRON_GYM, 22
	warp_event 19, 15, SAFFRON_GYM, 26
	warp_event 15, 17, SAFFRON_GYM, 12
	warp_event 19, 17, SAFFRON_GYM, 20

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  8, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 10,  1, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 17,  1, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  3,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 17,  7, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  3, 13, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 17, 13, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  3,  1, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 10, 15, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
