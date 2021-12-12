	object_const_def
	const CELADONPOKECENTER_KANTO_NURSE
	const CELADONPOKECENTER_GENTLEMAN
	const CELADONPOKECENTER_KANTO_BEAUTY
	const CELADONPOKECENTER_OLD_LINK_RECEPTIONIST

CeladonPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, CELADON_CITY, 6
	warp_event  4,  7, CELADON_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  7,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 10,  5, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
