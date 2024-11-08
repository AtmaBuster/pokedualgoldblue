	object_const_def
	const CERULEANCAVE2F_POKE_BALL1
	const CERULEANCAVE2F_POKE_BALL2
	const CERULEANCAVE2F_POKE_BALL3

CeruleanCave2F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCave2F_PPUpScript:
	itemball PP_UP

CeruleanCave2F_UltraBallScript:
	itemball ULTRA_BALL

CeruleanCave2F_FullRestoreScript:
	itemball FULL_RESTORE

CeruleanCave2F_MapEvents:
	def_warp_events
	warp_event 29,  1, CERULEAN_CAVE_1F, 3
	warp_event 22,  6, CERULEAN_CAVE_1F, 4
	warp_event 19,  7, CERULEAN_CAVE_1F, 5
	warp_event  9,  1, CERULEAN_CAVE_1F, 6
	warp_event  1,  3, CERULEAN_CAVE_1F, 7
	warp_event  3, 11, CERULEAN_CAVE_1F, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event 29,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2F_PPUpScript, EVENT_CERULEAN_CAVE_2F_PP_UP
	object_event  4, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2F_UltraBallScript, EVENT_CERULEAN_CAVE_2F_ULTRA_BALL
	object_event 13,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2F_FullRestoreScript, EVENT_CERULEAN_CAVE_2F_FULL_RESTORE
