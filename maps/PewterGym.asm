	object_const_def
	const PEWTERGYM_KANTO_SUPER_NERD
	const PEWTERGYM_COOLTRAINER_M
	const PEWTERGYM_KANTO_GYM_GUIDE

PewterGym_MapScripts:
	def_scene_scripts

	def_callbacks

PewterGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, PEWTER_CITY, 3
	warp_event  5, 13, PEWTER_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  3,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  7, 10, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
