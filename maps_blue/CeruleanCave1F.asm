	object_const_def
	const CERULEANCAVE1F_POKE_BALL1
	const CERULEANCAVE1F_POKE_BALL2
	const CERULEANCAVE1F_POKE_BALL3

CeruleanCave1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCave1F_FullRestoreScript:
	itemball FULL_RESTORE

CeruleanCave1F_MaxElixerScript:
	itemball MAX_ELIXER

CeruleanCave1F_NuggetScript:
	itemball NUGGET

CeruleanCave1F_HiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_CERULEAN_CAVE_1F_HIDDEN_RARE_CANDY

CeruleanCave1F_MapEvents:
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
	bg_event 14, 11, BGEVENT_ITEM, CeruleanCave1F_HiddenRareCandy

	def_object_events
	object_event  7, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1F_FullRestoreScript, EVENT_CERULEAN_CAVE_1F_FULL_RESTORE
	object_event 19,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1F_MaxElixerScript, EVENT_CERULEAN_CAVE_1F_MAX_ELIXER
	object_event  5,  0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1F_NuggetScript, EVENT_CERULEAN_CAVE_1F_NUGGET
