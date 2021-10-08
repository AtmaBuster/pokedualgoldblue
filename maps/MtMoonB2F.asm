	object_const_def
	const MTMOONB2F_KANTO_SUPER_NERD
	const MTMOONB2F_KANTO_ROCKET1
	const MTMOONB2F_KANTO_ROCKET2
	const MTMOONB2F_KANTO_ROCKET3
	const MTMOONB2F_KANTO_ROCKET4
	const MTMOONB2F_FOSSIL1
	const MTMOONB2F_FOSSIL2
	const MTMOONB2F_POKE_BALL1
	const MTMOONB2F_POKE_BALL2

MtMoonB2F_MapScripts:
	def_scene_scripts

	def_callbacks

MtMoonB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  9, MT_MOON_B1F, 2
	warp_event 21, 17, MT_MOON_B1F, 5
	warp_event 15, 27, MT_MOON_B1F, 6
	warp_event  5,  7, MT_MOON_B1F, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12,  8, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 11, 16, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 15, 22, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 29, 11, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 29, 17, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 12,  6, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 13,  6, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 25, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 29,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
