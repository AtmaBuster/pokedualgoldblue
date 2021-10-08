	object_const_def
	const CERULEANGYM_BRUNETTE_GIRL
	const CERULEANGYM_COOLTRAINER_F
	const CERULEANGYM_SWIMMER_GUY
	const CERULEANGYM_KANTO_GYM_GUIDE

CeruleanGym_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, CERULEAN_CITY, 4
	warp_event  5, 13, CERULEAN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  2,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  8,  7, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  7, 10, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
