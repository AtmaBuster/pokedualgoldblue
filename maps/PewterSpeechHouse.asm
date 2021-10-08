	object_const_def
	const PEWTERSPEECHHOUSE_GAMBLER
	const PEWTERSPEECHHOUSE_KANTO_YOUNGSTER

PewterSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PewterSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 6
	warp_event  3,  7, PEWTER_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  5, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
