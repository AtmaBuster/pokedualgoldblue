	object_const_def
	const LAVENDERTOWN_LITTLE_GIRL
	const LAVENDERTOWN_COOLTRAINER_M
	const LAVENDERTOWN_KANTO_SUPER_NERD

LavenderTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_LAVENDER
	endcallback

LavenderTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, LAVENDER_POKECENTER, 1
	warp_event 14,  5, POKEMON_TOWER_1F, 1
	warp_event  7,  9, MR_FUJIS_HOUSE, 1
	warp_event 15, 13, LAVENDER_MART, 1
	warp_event  3, 13, LAVENDER_CUBONE_HOUSE, 1
	warp_event  7, 13, NAME_RATERS_HOUSE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 15,  9, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  9, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  7, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
