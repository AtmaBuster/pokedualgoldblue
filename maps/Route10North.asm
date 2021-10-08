	object_const_def
	const ROUTE10NORTH_KANTO_SUPER_NERD
	const ROUTE10NORTH_COOLTRAINER_F

Route10North_MapScripts:
	def_scene_scripts

	def_callbacks

Route10North_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 19, ROCK_TUNNEL_POKECENTER, 1
	warp_event  8, 17, ROCK_TUNNEL_1F, 1
	warp_event  6, 39, POWER_PLANT, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10, 44, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  7, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
