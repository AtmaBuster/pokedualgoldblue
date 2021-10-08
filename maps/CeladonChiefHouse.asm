	object_const_def
	const CELADONCHIEFHOUSE_KANTO_GRAMPS
	const CELADONCHIEFHOUSE_KANTO_ROCKET
	const CELADONCHIEFHOUSE_KANTO_SAILOR

CeladonChiefHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonChiefHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CELADON_CITY, 12
	warp_event  3,  7, CELADON_CITY, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  4, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  6, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
