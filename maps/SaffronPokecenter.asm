	object_const_def
	const SAFFRONPOKECENTER_KANTO_NURSE
	const SAFFRONPOKECENTER_KANTO_BEAUTY
	const SAFFRONPOKECENTER_GENTLEMAN
	const SAFFRONPOKECENTER_OLD_LINK_RECEPTIONIST
IF DEF(_GOLD)
	const SAFFRONPOKECENTER_COUCH_MAN
ENDC

SaffronPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronPokecenter_MapEvents:
	def_warp_events
	warp_event  3,  7, SAFFRON_CITY, 7
	warp_event  4,  7, SAFFRON_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  5, SPRITE_KANTO_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
IF DEF(_GOLD)
	object_event  0,  4, SPRITE_COUCH_MAN, SPRITEMOVEDATA_COUCH_MAN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyScript, -1
ENDC
