	object_const_def
	const CELADONCITY_LITTLE_GIRL
	const CELADONCITY_KANTO_GRAMPS1
	const CELADONCITY_GIRL
	const CELADONCITY_KANTO_GRAMPS2
	const CELADONCITY_KANTO_GRAMPS3
	const CELADONCITY_FISHER
	const CELADONCITY_MONSTER
	const CELADONCITY_KANTO_ROCKET1
	const CELADONCITY_KANTO_ROCKET2

CeladonCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CELADON
	endcallback

CeladonCity_MapEvents:
	def_warp_events
	warp_event  8, 13, CELADON_MART_1F, 1
	warp_event 10, 13, CELADON_MART_1F, 3
	warp_event 24,  9, CELADON_MANSION_1F, 1
	warp_event 24,  3, CELADON_MANSION_1F, 3
	warp_event 25,  3, CELADON_MANSION_1F, 3
	warp_event 41,  9, CELADON_POKECENTER, 1
	warp_event 12, 27, CELADON_GYM, 1
	warp_event 28, 19, GAME_CORNER, 1
	warp_event 39, 19, CELADON_MART_5F, 1 ; beta warp_event! no longer used
	warp_event 33, 19, GAME_CORNER_PRIZE_ROOM, 1
	warp_event 31, 27, CELADON_DINER, 1
	warp_event 35, 27, CELADON_CHIEF_HOUSE, 1
	warp_event 43, 27, CELADON_HOTEL, 1

	def_coord_events

	def_bg_events
	bg_event 27, 15, BGEVENT_READ, BGEvent
	bg_event 19, 15, BGEVENT_READ, BGEvent
	bg_event 42,  9, BGEVENT_READ, BGEvent
	bg_event 13, 29, BGEVENT_READ, BGEvent
	bg_event 21,  9, BGEVENT_READ, BGEvent
	bg_event 12, 13, BGEVENT_READ, BGEvent
	bg_event 39, 21, BGEVENT_READ, BGEvent
	bg_event 33, 21, BGEVENT_READ, BGEvent
	bg_event 27, 21, BGEVENT_READ, BGEvent

	def_object_events
	object_event  8, 17, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11, 28, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 14, 19, SPRITE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 25, 22, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 22, 16, SPRITE_KANTO_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 32, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 30, 12, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 32, 29, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 42, 14, SPRITE_KANTO_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
