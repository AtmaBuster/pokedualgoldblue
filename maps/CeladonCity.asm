	object_const_def

CeladonCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CELADON
	endcallback

CeladonCity_MapEvents:
	db 0, 0 ; filler

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

	def_object_events
