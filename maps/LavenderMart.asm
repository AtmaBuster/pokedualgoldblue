	object_const_def
	const LAVENDERMART_KANTO_CLERK
	const LAVENDERMART_BALDING_GUY
	const LAVENDERMART_COOLTRAINER_M

LavenderMart_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderMart_MapEvents:
	def_warp_events
	warp_event  3,  7, LAVENDER_TOWN, 4
	warp_event  4,  7, LAVENDER_TOWN, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  4, SPRITE_BALDING_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  7,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
