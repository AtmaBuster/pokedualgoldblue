	object_const_def
	const PEWTERCITY_COOLTRAINER_F
	const PEWTERCITY_COOLTRAINER_M
	const PEWTERCITY_KANTO_SUPER_NERD1
	const PEWTERCITY_KANTO_SUPER_NERD2
	const PEWTERCITY_KANTO_YOUNGSTER

PewterCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_PEWTER
	endcallback

PewterCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  7, MUSEUM_1F, 1
	warp_event 19,  5, MUSEUM_1F, 3
	warp_event 16, 17, PEWTER_GYM, 1
	warp_event 29, 13, PEWTER_NIDORAN_HOUSE, 1
	warp_event 23, 17, PEWTER_MART, 1
	warp_event  7, 29, PEWTER_SPEECH_HOUSE, 1
	warp_event 13, 25, PEWTER_POKECENTER, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8, 15, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 17, 25, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 27, 17, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 26, 25, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 35, 16, SPRITE_KANTO_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
