	object_const_def
	const VIRIDIANCITY_KANTO_YOUNGSTER1
	const VIRIDIANCITY_GAMBLER1
	const VIRIDIANCITY_KANTO_YOUNGSTER2
	const VIRIDIANCITY_GIRL
	const VIRIDIANCITY_GAMBLER_ASLEEP
	const VIRIDIANCITY_FISHER
	const VIRIDIANCITY_GAMBLER2

ViridianCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_VIRIDIAN
	endcallback

ViridianCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 25, VIRIDIAN_POKECENTER, 1
	warp_event 29, 19, VIRIDIAN_MART, 1
	warp_event 21, 15, VIRIDIAN_SCHOOL_HOUSE, 1
	warp_event 21,  9, VIRIDIAN_NICKNAME_HOUSE, 1
	warp_event 32,  7, VIRIDIAN_GYM, 1

	def_coord_events

	def_bg_events
	bg_event 17, 17, BGEVENT_READ, BGEvent
	bg_event 19,  1, BGEVENT_READ, BGEvent
	bg_event 21, 29, BGEVENT_READ, BGEvent
	bg_event 30, 19, BGEVENT_READ, BGEvent
	bg_event 24, 25, BGEVENT_READ, BGEvent
	bg_event 27,  7, BGEVENT_READ, BGEvent

	def_object_events
	object_event 13, 20, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 30,  8, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 30, 25, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 17,  9, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 18,  9, SPRITE_GAMBLER_ASLEEP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 17,  5, SPRITE_GAMBLER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
