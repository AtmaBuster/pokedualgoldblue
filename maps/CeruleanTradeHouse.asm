	object_const_def
	const CERULEANTRADEHOUSE_KANTO_GRANNY
	const CERULEANTRADEHOUSE_GAMBLER

CeruleanTradeHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanTradeHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 2
	warp_event  3,  7, CERULEAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_KANTO_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  2, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
