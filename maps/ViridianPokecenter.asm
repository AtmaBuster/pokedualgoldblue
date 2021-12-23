	object_const_def
	const VIRIDIANPOKECENTER_KANTO_NURSE
	const VIRIDIANPOKECENTER_GENTLEMAN
	const VIRIDIANPOKECENTER_COOLTRAINER_M
	const VIRIDIANPOKECENTER_OLD_LINK_RECEPTIONIST
IF DEF(_GOLD)
	const VIRIDIANPOKECENTER_COUCH_MAN
ENDC

ViridianPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, VIRIDIAN_CITY, 1
	warp_event  4,  7, VIRIDIAN_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 10,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
IF DEF(_GOLD)
	object_event  0,  4, SPRITE_COUCH_MAN, SPRITEMOVEDATA_COUCH_MAN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyScript, -1
ENDC
