	object_const_def

BrunosRoomKanto_MapScripts:
	def_scene_scripts

	def_callbacks

BrunosRoomKanto_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, LORELEIS_ROOM, 3
	warp_event  5, 11, LORELEIS_ROOM, 4
	warp_event  4,  0, AGATHAS_ROOM, 1
	warp_event  5,  0, AGATHAS_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
