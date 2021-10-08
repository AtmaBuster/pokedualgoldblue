	object_const_def
	const LAVENDERPOKECENTER_KANTO_NURSE
	const LAVENDERPOKECENTER_GENTLEMAN
	const LAVENDERPOKECENTER_LITTLE_GIRL
	const LAVENDERPOKECENTER_OLD_LINK_RECEPTIONIST

LavenderPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, LAVENDER_TOWN, 1
	warp_event  4,  7, LAVENDER_TOWN, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_KANTO_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  6, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
