	object_const_def
	const SEAFOAMISLANDSB2F_KANTO_BOULDER1
	const SEAFOAMISLANDSB2F_KANTO_BOULDER2

SeafoamIslandsB2F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslandsB2F_MapEvents:
	def_warp_events
	warp_event  5,  3, SEAFOAM_ISLANDS_B1F, 1
	warp_event  5, 13, SEAFOAM_ISLANDS_B3F, 1
	warp_event 13,  7, SEAFOAM_ISLANDS_B1F, 3
	warp_event 19, 15, SEAFOAM_ISLANDS_B1F, 4
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 4
	warp_event 25, 11, SEAFOAM_ISLANDS_B1F, 6
	warp_event 25, 14, SEAFOAM_ISLANDS_B3F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 18,  6, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 23,  6, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
