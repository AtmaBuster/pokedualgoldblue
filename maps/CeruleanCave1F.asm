	object_const_def

CeruleanCave1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCave1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24, 17, CERULEAN_CITY, 7
	warp_event 25, 17, CERULEAN_CITY, 7
	warp_event 27,  1, CERULEAN_CAVE_2F, 1
	warp_event 23,  7, CERULEAN_CAVE_2F, 2
	warp_event 18,  9, CERULEAN_CAVE_2F, 3
	warp_event  7,  1, CERULEAN_CAVE_2F, 4
	warp_event  1,  3, CERULEAN_CAVE_2F, 5
	warp_event  3, 11, CERULEAN_CAVE_2F, 6
	warp_event  0,  6, CERULEAN_CAVE_B1F, 1

	def_coord_events

	def_bg_events

	def_object_events
