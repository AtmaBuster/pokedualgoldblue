	object_const_def
	const CINNABARISLAND_GIRL
	const CINNABARISLAND_GAMBLER

CinnabarIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CINNABAR
	endcallback

CinnabarIsland_MapEvents:
	def_warp_events
	warp_event  6,  3, POKEMON_MANSION_1F, 2
	warp_event 18,  3, CINNABAR_GYM, 1
	warp_event  6,  9, CINNABAR_LAB, 1
	warp_event 11, 11, CINNABAR_POKECENTER, 1
	warp_event 15, 11, CINNABAR_MART, 1

	def_coord_events

	def_bg_events
	bg_event  9,  5, BGEVENT_READ, BGEvent
	bg_event 16, 11, BGEVENT_READ, BGEvent
	bg_event 12, 11, BGEVENT_READ, BGEvent
	bg_event  9, 11, BGEVENT_READ, BGEvent
	bg_event 13,  3, BGEVENT_READ, BGEvent

	def_object_events
	object_event 12,  5, SPRITE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 14,  6, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
