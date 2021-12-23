	object_const_def
	const SEAFOAMISLANDSB3F_KANTO_BOULDER1
	const SEAFOAMISLANDSB3F_KANTO_BOULDER2
	const SEAFOAMISLANDSB3F_KANTO_BOULDER3
	const SEAFOAMISLANDSB3F_KANTO_BOULDER4
	const SEAFOAMISLANDSB3F_KANTO_BOULDER5
	const SEAFOAMISLANDSB3F_KANTO_BOULDER6

SeafoamIslandsB3F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslandsB3F_MapEvents:
	def_warp_events
	warp_event  5, 12, SEAFOAM_ISLANDS_B2F, 2
	warp_event  8,  6, SEAFOAM_ISLANDS_B4F, 3
	warp_event 25,  4, SEAFOAM_ISLANDS_B4F, 4
	warp_event 25,  3, SEAFOAM_ISLANDS_B2F, 5
	warp_event 25, 14, SEAFOAM_ISLANDS_B2F, 7
	warp_event 20, 17, SEAFOAM_ISLANDS_B4F, 1
	warp_event 21, 17, SEAFOAM_ISLANDS_B4F, 2
	warp_event 18,  7, SEAFOAM_ISLANDS_B2F, 10
	warp_event 19,  7, SEAFOAM_ISLANDS_B2F, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5, 14, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3, 15, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8, 14, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  9, 14, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 18,  6, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 19,  6, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
