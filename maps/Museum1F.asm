	object_const_def
	const MUSEUM1F_KANTO_SCIENTIST1
	const MUSEUM1F_GAMBLER
	const MUSEUM1F_KANTO_SCIENTIST2
	const MUSEUM1F_KANTO_SCIENTIST3
	const MUSEUM1F_OLD_AMBER

Museum1F_MapScripts:
	def_scene_scripts

	def_callbacks

Museum1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 1
	warp_event 11,  7, PEWTER_CITY, 1
	warp_event 16,  7, PEWTER_CITY, 2
	warp_event 17,  7, PEWTER_CITY, 2
	warp_event  7,  7, MUSEUM_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12,  4, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  4, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 15,  2, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 17,  4, SPRITE_KANTO_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 16,  2, SPRITE_OLD_AMBER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
