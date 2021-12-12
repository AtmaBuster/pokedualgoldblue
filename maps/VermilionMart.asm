	object_const_def
	const VERMILIONMART_KANTO_CLERK
	const VERMILIONMART_COOLTRAINER_M
	const VERMILIONMART_COOLTRAINER_F

VermilionMart_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionMart_MapEvents:
	def_warp_events
	warp_event  3,  7, VERMILION_CITY, 3
	warp_event  4,  7, VERMILION_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
