	object_const_def
	const GAMECORNERPRIZEROOM_BALDING_GUY
	const GAMECORNERPRIZEROOM_GAMBLER

GameCornerPrizeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

GameCornerPrizeRoom_MapEvents:
	def_warp_events
	warp_event  4,  7, CELADON_CITY, 10
	warp_event  5,  7, CELADON_CITY, 10

	def_coord_events

	def_bg_events
	bg_event  2,  2, BGEVENT_READ, BGEvent
	bg_event  4,  2, BGEVENT_READ, BGEvent
	bg_event  6,  2, BGEVENT_READ, BGEvent

	def_object_events
	object_event  1,  4, SPRITE_BALDING_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  7,  3, SPRITE_GAMBLER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
