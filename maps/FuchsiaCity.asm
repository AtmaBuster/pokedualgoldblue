	object_const_def
	const FUCHSIACITY_KANTO_YOUNGSTER1
	const FUCHSIACITY_GAMBLER
	const FUCHSIACITY_FISHER
	const FUCHSIACITY_KANTO_YOUNGSTER2
	const FUCHSIACITY_FAIRY
	const FUCHSIACITY_POKE_BALL
	const FUCHSIACITY_MONSTER1
	const FUCHSIACITY_MONSTER2
	const FUCHSIACITY_SEEL
	const FUCHSIACITY_FOSSIL

FuchsiaCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_FUCHSIA
	endcallback

FuchsiaCity_MapEvents:
	def_warp_events
	warp_event  5, 13, FUCHSIA_MART, 1
	warp_event 11, 27, FUCHSIA_BILLS_GRANDPAS_HOUSE, 1
	warp_event 19, 27, FUCHSIA_POKECENTER, 1
	warp_event 27, 27, WARDENS_HOUSE, 1
	warp_event 18,  3, SAFARI_ZONE_GATE, 1
	warp_event  8, 27, FUCHSIA_GYM, 1
	warp_event 22, 13, FUCHSIA_MEETING_ROOM, 1
	warp_event 31, 27, FUCHSIA_GOOD_ROD_HOUSE, 2
	warp_event 31, 24, FUCHSIA_GOOD_ROD_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 15, 23, BGEVENT_READ, BGEvent
	bg_event 25, 15, BGEVENT_READ, BGEvent
	bg_event 17,  5, BGEVENT_READ, BGEvent
	bg_event  6, 13, BGEVENT_READ, BGEvent
	bg_event 20, 27, BGEVENT_READ, BGEvent
	bg_event 27, 29, BGEVENT_READ, BGEvent
	bg_event 21, 15, BGEVENT_READ, BGEvent
	bg_event  5, 29, BGEVENT_READ, BGEvent
	bg_event 33,  7, BGEVENT_READ, BGEvent
	bg_event 27,  7, BGEVENT_READ, BGEvent
	bg_event 13,  7, BGEVENT_READ, BGEvent
	bg_event 31, 13, BGEVENT_READ, BGEvent
	bg_event 13, 15, BGEVENT_READ, BGEvent
	bg_event  7,  7, BGEVENT_READ, BGEvent

	def_object_events
	object_event 10, 12, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 28, 17, SPRITE_GAMBLER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 30, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 24,  8, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 31,  5, SPRITE_FAIRY, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 25,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 12,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 30, 12, SPRITE_MONSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8, 17, SPRITE_SEEL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  5, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
