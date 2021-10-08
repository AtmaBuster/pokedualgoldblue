	object_const_def
	const VICTORYROAD1F_COOLTRAINER_F
	const VICTORYROAD1F_COOLTRAINER_M
	const VICTORYROAD1F_POKE_BALL1
	const VICTORYROAD1F_POKE_BALL2
	const VICTORYROAD1F_KANTO_BOULDER1
	const VICTORYROAD1F_KANTO_BOULDER2
	const VICTORYROAD1F_KANTO_BOULDER3

VictoryRoad1F_MapScripts:
	def_scene_scripts

	def_callbacks

VictoryRoad1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, ROUTE_23, 3
	warp_event  9, 17, ROUTE_23, 3
	warp_event  1,  1, VICTORY_ROAD_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  3,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 11,  0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  9,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5, 15, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 14,  2, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2, 10, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
