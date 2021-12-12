	object_const_def
	const CINNABARPOKECENTER_KANTO_NURSE
	const CINNABARPOKECENTER_COOLTRAINER_F
	const CINNABARPOKECENTER_GENTLEMAN
	const CINNABARPOKECENTER_OLD_LINK_RECEPTIONIST

CinnabarPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, CINNABAR_ISLAND, 4
	warp_event  4,  7, CINNABAR_ISLAND, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  9,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
