	object_const_def
	const CERULEANCAVEB1F_MONSTER
	const CERULEANCAVEB1F_POKE_BALL1
	const CERULEANCAVEB1F_POKE_BALL2

CeruleanCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  6, CERULEAN_CAVE_1F, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event 27, 13, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 16,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 18,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
