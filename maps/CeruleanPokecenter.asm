	object_const_def
	const CERULEANPOKECENTER_KANTO_NURSE
	const CERULEANPOKECENTER_KANTO_SUPER_NERD
	const CERULEANPOKECENTER_GENTLEMAN
	const CERULEANPOKECENTER_OLD_LINK_RECEPTIONIST

CeruleanPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CERULEAN_CITY, 3
	warp_event  4,  7, CERULEAN_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 10,  5, SPRITE_KANTO_SUPER_NERD, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
