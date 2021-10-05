	object_const_def

IndigoPlateauLobby_MapScripts:
	def_scene_scripts

	def_callbacks

IndigoPlateauLobby_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 11, INDIGO_PLATEAU, 1
	warp_event  8, 11, INDIGO_PLATEAU, 2
	warp_event  8,  0, LORELEIS_ROOM, 1

	def_coord_events

	def_bg_events

	def_object_events
