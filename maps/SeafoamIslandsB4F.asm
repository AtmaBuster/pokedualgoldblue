	object_const_def
	const SEAFOAMISLANDSB4F_KANTO_BOULDER1
	const SEAFOAMISLANDSB4F_KANTO_BOULDER2
	const SEAFOAMISLANDSB4F_KANTO_BIRD

SeafoamIslandsB4F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslandsB4F_ArticunoScript:
SeafoamIslandsB4F_WaterBoulderScript:
SeafoamIslandsB4F_Sign1Script:
SeafoamIslandsB4F_Sign2Script:

SeafoamIslandsB4F_MapEvents:
	def_warp_events
	warp_event 20, 17, SEAFOAM_ISLANDS_B3F, 6
	warp_event 21, 17, SEAFOAM_ISLANDS_B3F, 7
	warp_event 11,  7, SEAFOAM_ISLANDS_B3F, 2
	warp_event 25,  4, SEAFOAM_ISLANDS_B3F, 3
	warp_event  4, 14, SEAFOAM_ISLANDS_B3F, 10
	warp_event  5, 14, SEAFOAM_ISLANDS_B3F, 11

	def_coord_events

	def_bg_events
	bg_event  9, 15, BGEVENT_READ, SeafoamIslandsB4F_Sign1Script
	bg_event 23,  1, BGEVENT_READ, SeafoamIslandsB4F_Sign2Script

	def_object_events
	object_event  4, 15, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4F_WaterBoulderScript, -1
	object_event  5, 15, SPRITE_KANTO_BOULDER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4F_WaterBoulderScript, -1
	object_event  6,  1, SPRITE_KANTO_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB4F_ArticunoScript, -1
