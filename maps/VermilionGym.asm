	object_const_def
	const VERMILIONGYM_KANTO_ROCKER
	const VERMILIONGYM_GENTLEMAN
	const VERMILIONGYM_KANTO_SUPER_NERD
	const VERMILIONGYM_KANTO_SAILOR
	const VERMILIONGYM_KANTO_GYM_GUIDE

VermilionGym_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionGym_MapEvents:
	def_warp_events
	warp_event  4, 17, VERMILION_CITY, 4
	warp_event  5, 17, VERMILION_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_KANTO_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  9,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  3,  8, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  0, 10, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, -1
	object_event  4, 14, SPRITE_KANTO_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
