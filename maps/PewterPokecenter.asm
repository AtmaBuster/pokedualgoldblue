	object_const_def
	const PEWTERPOKECENTER_KANTO_NURSE
	const PEWTERPOKECENTER_GENTLEMAN
	const PEWTERPOKECENTER_FAIRY
	const PEWTERPOKECENTER_OLD_LINK_RECEPTIONIST

PewterPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

PewterPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, PEWTER_CITY, 7
	warp_event  4,  7, PEWTER_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  3, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
