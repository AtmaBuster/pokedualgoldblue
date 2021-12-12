	object_const_def
	const VICTORYROAD2F_HIKER
	const VICTORYROAD2F_KANTO_SUPER_NERD1
	const VICTORYROAD2F_COOLTRAINER_M
	const VICTORYROAD2F_KANTO_SUPER_NERD2
	const VICTORYROAD2F_KANTO_SUPER_NERD3
	const VICTORYROAD2F_KANTO_BIRD
	const VICTORYROAD2F_POKE_BALL1
	const VICTORYROAD2F_POKE_BALL2
	const VICTORYROAD2F_POKE_BALL3
	const VICTORYROAD2F_POKE_BALL4
	const VICTORYROAD2F_KANTO_BOULDER1
	const VICTORYROAD2F_KANTO_BOULDER2
	const VICTORYROAD2F_KANTO_BOULDER3

VictoryRoad2F_MapScripts:
	def_scene_scripts

	def_callbacks

VictoryRoad2F_MapEvents:
	def_warp_events
	warp_event  0,  8, VICTORY_ROAD_1F, 3
	warp_event 29,  7, ROUTE_23, 4
	warp_event 29,  8, ROUTE_23, 4
	warp_event 23,  7, VICTORY_ROAD_3F, 1
	warp_event 25, 14, VICTORY_ROAD_3F, 3
	warp_event 27,  7, VICTORY_ROAD_3F, 2
	warp_event  1,  1, VICTORY_ROAD_3F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12,  9, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 21, 13, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 19,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  4,  2, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 26,  3, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 11,  5, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 27,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 18,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  9, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4, 14, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  5, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 23, 16, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
