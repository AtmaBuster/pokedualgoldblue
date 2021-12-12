	object_const_def
	const VERMILIONPOKECENTER_KANTO_NURSE
	const VERMILIONPOKECENTER_FISHING_GURU
	const VERMILIONPOKECENTER_KANTO_SAILOR
	const VERMILIONPOKECENTER_OLD_LINK_RECEPTIONIST

VermilionPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, VERMILION_CITY, 1
	warp_event  4,  7, VERMILION_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 10,  5, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  4, SPRITE_KANTO_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
