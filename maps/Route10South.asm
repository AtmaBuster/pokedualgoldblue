	object_const_def
	const ROUTE10SOUTH_HIKER1
	const ROUTE10SOUTH_KANTO_SUPER_NERD
	const ROUTE10SOUTH_HIKER2
	const ROUTE10SOUTH_COOLTRAINER_F

Route10South_MapScripts:
	def_scene_scripts

	def_callbacks

Route10South_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  3, ROCK_TUNNEL_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  7, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event 14, 14, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  3, 11, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  7,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
