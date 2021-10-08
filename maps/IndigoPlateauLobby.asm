	object_const_def
	const INDIGOPLATEAULOBBY_KANTO_NURSE
	const INDIGOPLATEAULOBBY_KANTO_GYM_GUIDE
	const INDIGOPLATEAULOBBY_COOLTRAINER_F
	const INDIGOPLATEAULOBBY_KANTO_CLERK
	const INDIGOPLATEAULOBBY_OLD_LINK_RECEPTIONIST

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
	object_event  7,  5, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  9, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  1, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  0,  5, SPRITE_KANTO_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 13,  6, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
