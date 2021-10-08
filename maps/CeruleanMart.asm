	object_const_def
	const CERULEANMART_KANTO_CLERK
	const CERULEANMART_COOLTRAINER_M
	const CERULEANMART_COOLTRAINER_F

CeruleanMart_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CERULEAN_CITY, 6
	warp_event  4,  7, CERULEAN_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
