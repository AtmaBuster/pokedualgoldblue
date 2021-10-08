	object_const_def
	const VERMILIONCITY_KANTO_BEAUTY
	const VERMILIONCITY_GAMBLER1
	const VERMILIONCITY_KANTO_SAILOR1
	const VERMILIONCITY_GAMBLER2
	const VERMILIONCITY_MONSTER
	const VERMILIONCITY_KANTO_SAILOR2

VermilionCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_VERMILION
	endcallback

VermilionCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  3, VERMILION_POKECENTER, 1
	warp_event  9, 13, POKEMON_FAN_CLUB, 1
	warp_event 23, 13, VERMILION_MART, 1
	warp_event 12, 19, VERMILION_GYM, 1
	warp_event 23, 19, VERMILION_PIDGEY_HOUSE, 1
	warp_event 18, 31, VERMILION_DOCK, 1
	warp_event 19, 31, VERMILION_DOCK, 1
	warp_event 15, 13, VERMILION_TRADE_HOUSE, 1
	warp_event  7,  3, VERMILION_OLD_ROD_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 27,  3, BGEVENT_READ, BGEvent
	bg_event 37, 13, BGEVENT_READ, BGEvent
	bg_event 24, 13, BGEVENT_READ, BGEvent
	bg_event 12,  3, BGEVENT_READ, BGEvent
	bg_event  7, 13, BGEVENT_READ, BGEvent
	bg_event  7, 19, BGEVENT_READ, BGEvent
	bg_event 29, 15, BGEVENT_READ, BGEvent

	def_object_events
	object_event 19,  7, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 14,  6, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 19, 30, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 30,  7, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 29,  9, SPRITE_MONSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 25, 27, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
